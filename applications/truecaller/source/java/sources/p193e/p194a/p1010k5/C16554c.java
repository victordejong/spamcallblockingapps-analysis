package p193e.p194a.p1010k5;

import android.content.Context;
import com.truecaller.timezone.C4631R;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.k5.c */
/* loaded from: classes15-dex2jar.jar:e/a/k5/c.class */
public final class C16554c extends m implements a<String> {

    /* renamed from: b */
    public final /* synthetic */ Context f46524b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16554c(Context context) {
        super(0);
        this.f46524b = context;
    }

    public Object invoke() {
        String string = this.f46524b.getString(C4631R.string.timezone_local_time);
        l.d(string, "context.getString(R.string.timezone_local_time)");
        return string;
    }
}
