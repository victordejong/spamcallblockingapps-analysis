package androidx.media2.exoplayer.external.extractor;

import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.CommentFrame;
import androidx.media2.exoplayer.external.metadata.id3.InternalFrame;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: androidx.media2.exoplayer.external.extractor.k */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/k.class */
public final class C1603k {

    /* renamed from: c */
    private static final Pattern f6315c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a */
    public int f6316a = -1;

    /* renamed from: b */
    public int f6317b = -1;

    /* renamed from: a */
    private boolean m42597a(String str) {
        Matcher matcher = f6315c.matcher(str);
        if (matcher.find()) {
            try {
                int parseInt = Integer.parseInt(matcher.group(1), 16);
                int parseInt2 = Integer.parseInt(matcher.group(2), 16);
                if (parseInt <= 0 && parseInt2 <= 0) {
                    return false;
                }
                this.f6316a = parseInt;
                this.f6317b = parseInt2;
                return true;
            } catch (NumberFormatException e) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m42599a() {
        return (this.f6316a == -1 || this.f6317b == -1) ? false : true;
    }

    /* renamed from: a */
    public final boolean m42598a(Metadata metadata) {
        for (int i = 0; i < metadata.length(); i++) {
            Metadata.Entry entry = metadata.get(i);
            if (entry instanceof CommentFrame) {
                CommentFrame commentFrame = (CommentFrame) entry;
                if ("iTunSMPB".equals(commentFrame.description) && m42597a(commentFrame.text)) {
                    return true;
                }
            } else if (entry instanceof InternalFrame) {
                InternalFrame internalFrame = (InternalFrame) entry;
                if ("com.apple.iTunes".equals(internalFrame.domain) && "iTunSMPB".equals(internalFrame.description) && m42597a(internalFrame.text)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }
}
