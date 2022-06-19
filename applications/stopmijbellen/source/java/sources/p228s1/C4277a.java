package p228s1;

import android.content.ComponentName;
import android.content.Context;
import androidx.work.impl.background.systemjob.SystemJobService;
import p186o1.AbstractC3824h;
/* renamed from: s1.a */
/* loaded from: classes-dex2jar.jar:s1/a.class */
public class C4277a {

    /* renamed from: b */
    public static final String f13413b = AbstractC3824h.m1773e("SystemJobInfoConverter");

    /* renamed from: a */
    public final ComponentName f13414a;

    public C4277a(Context context) {
        this.f13414a = new ComponentName(context.getApplicationContext(), SystemJobService.class);
    }
}
