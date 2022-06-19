package p193e.p1577m.p1578a.p1596c.p1602g1;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: e.m.a.c.g1.m */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/m.class */
public final class C24414m {

    /* renamed from: c */
    public static final Pattern f68098c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a */
    public int f68099a = -1;

    /* renamed from: b */
    public int f68100b = -1;

    /* renamed from: a */
    public final boolean m5151a(String str) {
        Matcher matcher = f68098c.matcher(str);
        if (matcher.find()) {
            try {
                int parseInt = Integer.parseInt(matcher.group(1), 16);
                int parseInt2 = Integer.parseInt(matcher.group(2), 16);
                if (parseInt <= 0 && parseInt2 <= 0) {
                    return false;
                }
                this.f68099a = parseInt;
                this.f68100b = parseInt2;
                return true;
            } catch (NumberFormatException e) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: b */
    public boolean m5150b(Metadata metadata) {
        int i = 0;
        while (true) {
            Metadata.Entry[] entryArr = metadata.f4888a;
            if (i < entryArr.length) {
                Metadata.Entry entry = entryArr[i];
                if (entry instanceof CommentFrame) {
                    CommentFrame commentFrame = (CommentFrame) entry;
                    if ("iTunSMPB".equals(commentFrame.f4933c) && m5151a(commentFrame.f4934d)) {
                        return true;
                    }
                } else if (entry instanceof InternalFrame) {
                    InternalFrame internalFrame = (InternalFrame) entry;
                    if ("com.apple.iTunes".equals(internalFrame.f4940b) && "iTunSMPB".equals(internalFrame.f4941c) && m5151a(internalFrame.f4942d)) {
                        return true;
                    }
                } else {
                    continue;
                }
                i++;
            } else {
                return false;
            }
        }
    }
}
