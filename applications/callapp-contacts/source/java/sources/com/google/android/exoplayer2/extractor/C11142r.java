package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.exoplayer2.util.C11599af;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.android.exoplayer2.extractor.r */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/r.class */
public final class C11142r {

    /* renamed from: c */
    private static final Pattern f36493c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a */
    public int f36494a = -1;

    /* renamed from: b */
    public int f36495b = -1;

    /* renamed from: a */
    private boolean m21391a(String str) {
        Matcher matcher = f36493c.matcher(str);
        if (matcher.find()) {
            try {
                int parseInt = Integer.parseInt((String) C11599af.m19974a(matcher.group(1)), 16);
                int parseInt2 = Integer.parseInt((String) C11599af.m19974a(matcher.group(2)), 16);
                if (parseInt <= 0 && parseInt2 <= 0) {
                    return false;
                }
                this.f36494a = parseInt;
                this.f36495b = parseInt2;
                return true;
            } catch (NumberFormatException e) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m21393a() {
        return (this.f36494a == -1 || this.f36495b == -1) ? false : true;
    }

    /* renamed from: a */
    public final boolean m21392a(Metadata metadata) {
        for (int i = 0; i < metadata.length(); i++) {
            Metadata.Entry entry = metadata.get(i);
            if (entry instanceof CommentFrame) {
                CommentFrame commentFrame = (CommentFrame) entry;
                if ("iTunSMPB".equals(commentFrame.description) && m21391a(commentFrame.text)) {
                    return true;
                }
            } else if (entry instanceof InternalFrame) {
                InternalFrame internalFrame = (InternalFrame) entry;
                if ("com.apple.iTunes".equals(internalFrame.domain) && "iTunSMPB".equals(internalFrame.description) && m21391a(internalFrame.text)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }
}
