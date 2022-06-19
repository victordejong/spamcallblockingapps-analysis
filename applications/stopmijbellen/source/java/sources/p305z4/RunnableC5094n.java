package p305z4;

import android.content.Context;
import java.util.Map;
import p081e6.C2603t;
import p104g6.C2905a;
import p158l6.C3505b;
import p180n6.C3729e;
import p191o6.C3903e;
import p253u5.AbstractC4487b;
import p253u5.C4486a;
/* renamed from: z4.n */
/* loaded from: classes2-dex2jar.jar:z4/n.class */
public final /* synthetic */ class RunnableC5094n implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f15436a;

    /* renamed from: b */
    public final /* synthetic */ Object f15437b;

    /* renamed from: c */
    public final /* synthetic */ Object f15438c;

    public /* synthetic */ RunnableC5094n(Object obj, Object obj2, int i) {
        this.f15436a = i;
        this.f15437b = obj;
        this.f15438c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f15436a) {
            case 0:
                Map.Entry entry = (Map.Entry) this.f15437b;
                ((AbstractC4487b) entry.getKey()).mo341a((C4486a) this.f15438c);
                return;
            case 1:
                C2603t c2603t = (C2603t) this.f15437b;
                Context context = (Context) this.f15438c;
                if (c2603t.f9032a != null || context == null) {
                    return;
                }
                c2603t.f9032a = context.getSharedPreferences("FirebasePerfSharedPrefs", 0);
                return;
            default:
                C3505b c3505b = (C3505b) this.f15437b;
                C3729e c3729e = (C3729e) this.f15438c;
                C2905a c2905a = C3505b.f11624g;
                C3903e m2222b = c3505b.m2222b(c3729e);
                if (m2222b == null) {
                    return;
                }
                c3505b.f11627a.add(m2222b);
                return;
        }
    }
}
