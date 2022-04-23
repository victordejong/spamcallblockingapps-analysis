package androidx.media2.exoplayer.external.extractor;

import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.CommentFrame;
import androidx.media2.exoplayer.external.metadata.id3.InternalFrame;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/k.class */
public final class k {

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f3305c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a  reason: collision with root package name */
    public int f3306a = -1;

    /* renamed from: b  reason: collision with root package name */
    public int f3307b = -1;

    private boolean a(String str) {
        Matcher matcher = f3305c.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            int parseInt = Integer.parseInt(matcher.group(1), 16);
            int parseInt2 = Integer.parseInt(matcher.group(2), 16);
            if (parseInt <= 0 && parseInt2 <= 0) {
                return false;
            }
            this.f3306a = parseInt;
            this.f3307b = parseInt2;
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    public final boolean a() {
        return (this.f3306a == -1 || this.f3307b == -1) ? false : true;
    }

    public final boolean a(Metadata metadata) {
        for (int i = 0; i < metadata.length(); i++) {
            Metadata.Entry entry = metadata.get(i);
            if (entry instanceof CommentFrame) {
                CommentFrame commentFrame = (CommentFrame) entry;
                if ("iTunSMPB".equals(commentFrame.description) && a(commentFrame.text)) {
                    return true;
                }
            } else if (entry instanceof InternalFrame) {
                InternalFrame internalFrame = (InternalFrame) entry;
                if ("com.apple.iTunes".equals(internalFrame.domain) && "iTunSMPB".equals(internalFrame.description) && a(internalFrame.text)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }
}
