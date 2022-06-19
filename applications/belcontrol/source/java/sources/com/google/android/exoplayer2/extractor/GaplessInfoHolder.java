package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Decoder$FramePredicate;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/GaplessInfoHolder.class */
public final class GaplessInfoHolder {
    private static final String GAPLESS_DESCRIPTION = "iTunSMPB";
    private static final String GAPLESS_DOMAIN = "com.apple.iTunes";
    public int encoderDelay = -1;
    public int encoderPadding = -1;
    public static final Id3Decoder$FramePredicate GAPLESS_INFO_ID3_FRAME_PREDICATE = new 1();
    private static final Pattern GAPLESS_COMMENT_PATTERN = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    private boolean setFromComment(String str) {
        Matcher matcher = GAPLESS_COMMENT_PATTERN.matcher(str);
        if (matcher.find()) {
            try {
                int parseInt = Integer.parseInt(matcher.group(1), 16);
                int parseInt2 = Integer.parseInt(matcher.group(2), 16);
                if (parseInt <= 0 && parseInt2 <= 0) {
                    return false;
                }
                this.encoderDelay = parseInt;
                this.encoderPadding = parseInt2;
                return true;
            } catch (NumberFormatException e) {
                return false;
            }
        }
        return false;
    }

    public boolean hasGaplessInfo() {
        return (this.encoderDelay == -1 || this.encoderPadding == -1) ? false : true;
    }

    public boolean setFromMetadata(Metadata metadata) {
        for (int i = 0; i < metadata.length(); i++) {
            CommentFrame commentFrame = metadata.get(i);
            if (commentFrame instanceof CommentFrame) {
                CommentFrame commentFrame2 = commentFrame;
                if (GAPLESS_DESCRIPTION.equals(commentFrame2.description) && setFromComment(commentFrame2.text)) {
                    return true;
                }
            } else if (commentFrame instanceof InternalFrame) {
                InternalFrame internalFrame = (InternalFrame) commentFrame;
                if (GAPLESS_DOMAIN.equals(internalFrame.domain) && GAPLESS_DESCRIPTION.equals(internalFrame.description) && setFromComment(internalFrame.text)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public boolean setFromXingHeaderValue(int i) {
        int i2 = i >> 12;
        int i3 = i & 4095;
        if (i2 > 0 || i3 > 0) {
            this.encoderDelay = i2;
            this.encoderPadding = i3;
            return true;
        }
        return false;
    }
}
