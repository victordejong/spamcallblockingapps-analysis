package p193e.p1512i.p1516b.p1531s2;

import android.content.Context;
import android.util.DisplayMetrics;
import com.criteo.publisher.model.AdSize;
import p193e.p1512i.p1516b.p1528q2.C23023i;
/* renamed from: e.i.b.s2.i */
/* loaded from: classes-dex2jar.jar:e/i/b/s2/i.class */
public class C23086i {

    /* renamed from: a */
    public final Context f63914a;

    public C23086i(Context context) {
        C23023i.m7583a(C23086i.class);
        this.f63914a = context;
    }

    /* renamed from: a */
    public AdSize m7564a() {
        DisplayMetrics displayMetrics = this.f63914a.getResources().getDisplayMetrics();
        return new AdSize(Math.round(displayMetrics.widthPixels / displayMetrics.density), Math.round(displayMetrics.heightPixels / displayMetrics.density));
    }
}
