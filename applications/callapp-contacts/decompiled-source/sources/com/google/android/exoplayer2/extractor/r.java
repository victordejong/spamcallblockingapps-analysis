package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.exoplayer2.util.af;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/r.class */
public final class r {

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f21320c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a  reason: collision with root package name */
    public int f21321a = -1;

    /* renamed from: b  reason: collision with root package name */
    public int f21322b = -1;

    private boolean a(String str) {
        Matcher matcher = f21320c.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            int parseInt = Integer.parseInt((String) af.a(matcher.group(1)), 16);
            int parseInt2 = Integer.parseInt((String) af.a(matcher.group(2)), 16);
            if (parseInt <= 0 && parseInt2 <= 0) {
                return false;
            }
            this.f21321a = parseInt;
            this.f21322b = parseInt2;
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    public final boolean a() {
        return (this.f21321a == -1 || this.f21322b == -1) ? false : true;
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
