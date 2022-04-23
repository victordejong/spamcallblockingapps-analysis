package p131c.p161d.p282e.p289l.p290d.p308r;

import android.content.Context;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
/* renamed from: c.d.e.l.d.r.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/r/a.class */
public class C5452a implements AbstractC5453b {

    /* renamed from: a */
    public final Context f18432a;

    /* renamed from: b */
    public boolean f18433b = false;

    /* renamed from: c */
    public String f18434c;

    public C5452a(Context context) {
        this.f18432a = context;
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p308r.AbstractC5453b
    /* renamed from: a */
    public String mo23757a() {
        if (!this.f18433b) {
            this.f18434c = CommonUtils.m7640k(this.f18432a);
            this.f18433b = true;
        }
        String str = this.f18434c;
        if (str != null) {
            return str;
        }
        return null;
    }
}
