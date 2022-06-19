package p189o4;

import java.util.Objects;
import me.zhanghai.android.materialprogressbar.C3681R;
/* renamed from: o4.r */
/* loaded from: classes-dex2jar.jar:o4/r.class */
public final class C3881r implements AbstractC3882s, AbstractC3879p {

    /* renamed from: c */
    public static final Object f12375c = new Object();

    /* renamed from: a */
    public volatile AbstractC3882s f12376a;

    /* renamed from: b */
    public volatile Object f12377b = f12375c;

    public C3881r(AbstractC3882s abstractC3882s) {
        this.f12376a = abstractC3882s;
    }

    /* renamed from: a */
    public static AbstractC3879p m1736a(AbstractC3882s abstractC3882s) {
        if (abstractC3882s instanceof AbstractC3879p) {
            return (AbstractC3879p) abstractC3882s;
        }
        Objects.requireNonNull(abstractC3882s);
        return new C3881r(abstractC3882s);
    }

    @Override // p189o4.AbstractC3882s
    public final Object zza() {
        Object obj = this.f12377b;
        Object obj2 = f12375c;
        Object obj3 = obj;
        if (obj == obj2) {
            synchronized (this) {
                Object obj4 = this.f12377b;
                obj3 = obj4;
                if (obj4 == obj2) {
                    obj3 = this.f12376a.zza();
                    Object obj5 = this.f12377b;
                    if (obj5 != obj2 && obj5 != obj3) {
                        String valueOf = String.valueOf(obj5);
                        String valueOf2 = String.valueOf(obj3);
                        int length = valueOf.length();
                        StringBuilder sb = new StringBuilder(length + C3681R.styleable.AppCompatTheme_windowActionBarOverlay + valueOf2.length());
                        sb.append("Scoped provider was invoked recursively returning different results: ");
                        sb.append(valueOf);
                        sb.append(" & ");
                        sb.append(valueOf2);
                        sb.append(". This is likely due to a circular dependency.");
                        throw new IllegalStateException(sb.toString());
                    }
                    this.f12377b = obj3;
                    this.f12376a = null;
                }
            }
        }
        return obj3;
    }
}
