package p193e.p194a.p1365y.p1381b;

import android.content.Context;
import android.content.res.Resources;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.List;
import s1.s;
import s1.z.c.l;
/* renamed from: e.a.y.b.c0 */
/* loaded from: classes9-dex2jar.jar:e/a/y/b/c0.class */
public final class C21598c0 extends AbstractC21594a0<String> implements AbstractC21629z<String> {

    /* renamed from: d */
    public final Context f60254d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21598c0(Context context, AbstractC21626w abstractC21626w) {
        super(abstractC21626w, C21604f0.f60260a.length);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC21626w, "preferenceUtil");
        int[] iArr = C21604f0.f60260a;
        this.f60254d = context;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21629z
    /* renamed from: a */
    public void mo9335a(int i) {
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21629z
    /* renamed from: b */
    public void mo9334b(long j) {
        m9394f("recent_sent" + j);
        if (m9395e() == 0) {
            Resources resources = this.f60254d.getResources();
            int[] iArr = C21604f0.f60260a;
            int[] iArr2 = C21604f0.f60260a;
            ArrayList arrayList = new ArrayList(iArr2.length);
            for (int i : iArr2) {
                String string = resources.getString(i);
                l.d(string, "resources.getString(it)");
                l.e(string, "object");
                m9393g(string);
                arrayList.add(s.a);
            }
            mo9332d(j);
        }
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21629z
    /* renamed from: c */
    public int mo9333c() {
        return 0;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21629z
    /* renamed from: d */
    public void mo9332d(long j) {
        m9392h("recent_sent" + j);
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21629z
    public List<String> getAll() {
        return this.f60249a;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21594a0
    /* renamed from: i */
    public String mo9337i(String str) {
        l.e(str, "value");
        return str;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21594a0
    /* renamed from: j */
    public String mo9336j(String str) {
        String str2 = str;
        l.e(str2, "object");
        return str2;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21629z
    public void push(String str) {
        String str2 = str;
        l.e(str2, "object");
        m9393g(str2);
    }
}
