package p156l4;

import android.os.Process;
import android.support.p012v4.media.C0082b;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
/* renamed from: l4.a */
/* loaded from: classes-dex2jar.jar:l4/a.class */
public class C3495a {

    /* renamed from: a */
    public static final Map f11607a = new HashMap();

    static {
        new HashSet(Arrays.asList("app_update", "review"));
        new HashSet(Arrays.asList("native", "unity"));
        StringBuilder m8753i = C0082b.m8753i(39, "UID: [", Process.myUid(), "]  PID: [", Process.myPid());
        m8753i.append("] ");
        String sb = m8753i.toString();
        if ("PlayCoreVersion".length() != 0) {
            sb.concat("PlayCoreVersion");
        } else {
            new String(sb);
        }
    }
}
