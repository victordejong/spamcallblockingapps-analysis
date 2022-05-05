package androidx.media2.exoplayer.external.text.webvtt;

import android.text.TextUtils;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.text.SimpleSubtitleDecoder;
import androidx.media2.exoplayer.external.text.SubtitleDecoderException;
import androidx.media2.exoplayer.external.text.webvtt.WebvttCue;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import java.util.ArrayList;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/webvtt/WebvttDecoder.class */
public final class WebvttDecoder extends SimpleSubtitleDecoder {
    public static final String COMMENT_START = "NOTE";
    public static final int EVENT_COMMENT = 1;
    public static final int EVENT_CUE = 3;
    public static final int EVENT_END_OF_FILE = 0;
    public static final int EVENT_NONE = -1;
    public static final int EVENT_STYLE_BLOCK = 2;
    public static final String STYLE_START = "STYLE";
    public final WebvttCueParser cueParser = new WebvttCueParser();
    public final ParsableByteArray parsableWebvttData = new ParsableByteArray();
    public final WebvttCue.Builder webvttCueBuilder = new WebvttCue.Builder();
    public final CssParser cssParser = new CssParser();
    public final List<WebvttCssStyle> definedStyles = new ArrayList();

    public WebvttDecoder() {
        super("WebvttDecoder");
    }

    public static int getNextEvent(ParsableByteArray parsableByteArray) {
        int i = -1;
        int i2 = 0;
        while (i == -1) {
            i2 = parsableByteArray.getPosition();
            String readLine = parsableByteArray.readLine();
            i = readLine == null ? 0 : STYLE_START.equals(readLine) ? 2 : readLine.startsWith(COMMENT_START) ? 1 : 3;
        }
        parsableByteArray.setPosition(i2);
        return i;
    }

    public static void skipComment(ParsableByteArray parsableByteArray) {
        do {
        } while (!TextUtils.isEmpty(parsableByteArray.readLine()));
    }

    @Override // androidx.media2.exoplayer.external.text.SimpleSubtitleDecoder
    public WebvttSubtitle decode(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        this.parsableWebvttData.reset(bArr, i);
        this.webvttCueBuilder.reset();
        this.definedStyles.clear();
        try {
            WebvttParserUtil.validateWebvttHeaderLine(this.parsableWebvttData);
            do {
            } while (!TextUtils.isEmpty(this.parsableWebvttData.readLine()));
            ArrayList arrayList = new ArrayList();
            while (true) {
                int nextEvent = getNextEvent(this.parsableWebvttData);
                if (nextEvent == 0) {
                    return new WebvttSubtitle(arrayList);
                }
                if (nextEvent == 1) {
                    skipComment(this.parsableWebvttData);
                } else if (nextEvent == 2) {
                    if (arrayList.isEmpty()) {
                        this.parsableWebvttData.readLine();
                        WebvttCssStyle parseBlock = this.cssParser.parseBlock(this.parsableWebvttData);
                        if (parseBlock != null) {
                            this.definedStyles.add(parseBlock);
                        }
                    } else {
                        throw new SubtitleDecoderException("A style block was found after the first cue.");
                    }
                } else if (nextEvent == 3 && this.cueParser.parseCue(this.parsableWebvttData, this.webvttCueBuilder, this.definedStyles)) {
                    arrayList.add(this.webvttCueBuilder.build());
                    this.webvttCueBuilder.reset();
                }
            }
        } catch (ParserException e) {
            throw new SubtitleDecoderException(e);
        }
    }
}
