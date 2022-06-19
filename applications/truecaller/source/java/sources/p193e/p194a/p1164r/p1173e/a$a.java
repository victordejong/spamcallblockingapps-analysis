package p193e.p194a.p1164r.p1173e;

import android.content.Context;
import android.content.SharedPreferences;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.r.e.a$a */
/* loaded from: classes5-dex2jar.jar:e/a/r/e/a$a.class */
public final class a$a extends m implements a<SharedPreferences> {

    /* renamed from: b */
    public final /* synthetic */ int f54800b;

    /* renamed from: c */
    public final /* synthetic */ Object f54801c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a$a(int i, Object obj) {
        super(0);
        this.f54800b = i;
        this.f54801c = obj;
    }

    public final Object invoke() {
        int i = this.f54800b;
        if (i != 0) {
            if (i != 1) {
                throw null;
            }
            return ((Context) this.f54801c).getSharedPreferences("tc.settings", 0);
        }
        return ((Context) this.f54801c).getSharedPreferences("core_settings", 0);
    }
}
