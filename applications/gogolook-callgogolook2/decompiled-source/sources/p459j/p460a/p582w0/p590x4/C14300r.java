package p459j.p460a.p582w0.p590x4;

import android.content.Intent;
import com.mopub.common.Constants;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.p590x4.p591a0.C14231a;
import p459j.p460a.p582w0.p590x4.p591a0.C14234c;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.x4.r */
/* loaded from: classes3-dex2jar.jar:j/a/w0/x4/r.class */
public final class C14300r {
    static {
        new C14300r();
    }

    /* renamed from: a */
    public static final void m1653a(String str, Intent intent) {
        C15149k.m377b(str, "activityName");
        C15149k.m377b(intent, Constants.INTENT_SCHEME);
        if (C14017g4.m2799y()) {
            intent.putExtra("log_launch_event", true);
            new C14234c("La1_" + str).mo2087a(new C14231a());
        }
    }

    /* renamed from: b */
    public static final void m1652b(String str, Intent intent) {
        C15149k.m377b(str, "activityName");
        C15149k.m377b(intent, Constants.INTENT_SCHEME);
        if (C14017g4.m2799y() && intent.getBooleanExtra("log_launch_event", false)) {
            new C14234c("La2_" + str).mo2087a(new C14231a());
        }
    }
}
