package p209q4;

import android.content.Context;
import android.os.Process;
import android.support.p012v4.media.C0082b;
/* renamed from: q4.a */
/* loaded from: classes-dex2jar.jar:q4/a.class */
public final class C4154a {
    static {
        StringBuilder m8753i = C0082b.m8753i(39, "UID: [", Process.myUid(), "]  PID: [", Process.myPid());
        m8753i.append("] ");
        String sb = m8753i.toString();
        if ("SplitInstallInfoProvider".length() != 0) {
            sb.concat("SplitInstallInfoProvider");
        } else {
            new String(sb);
        }
    }

    public C4154a(Context context) {
        context.getPackageName();
    }
}
