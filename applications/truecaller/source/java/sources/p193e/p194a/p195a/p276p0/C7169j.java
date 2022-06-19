package p193e.p194a.p195a.p276p0;

import com.truecaller.messaging.data.types.Mention;
import java.util.ArrayList;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p235g1.AbstractC6254b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.categorizer.UnclassifiedMessagesSyncHelper$maybeTranslate$1", f = "UnclassifiedMessagesSyncHelper.kt", l = {331}, m = "invokeSuspend")
/* renamed from: e.a.a.p0.j */
/* loaded from: classes10-dex2jar.jar:e/a/a/p0/j.class */
public final class C7169j extends i implements p<i0, d<? super String>, Object> {

    /* renamed from: e */
    public int f23041e;

    /* renamed from: f */
    public final /* synthetic */ C7170k f23042f;

    /* renamed from: g */
    public final /* synthetic */ String f23043g;

    /* renamed from: h */
    public final /* synthetic */ String f23044h;

    /* renamed from: i */
    public final /* synthetic */ Mention[] f23045i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7169j(C7170k c7170k, String str, String str2, Mention[] mentionArr, d dVar) {
        super(2, dVar);
        this.f23042f = c7170k;
        this.f23043g = str;
        this.f23044h = str2;
        this.f23045i = mentionArr;
    }

    /* renamed from: i */
    public final d<s> m30029i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C7169j(this.f23042f, this.f23043g, this.f23044h, this.f23045i, dVar);
    }

    /* renamed from: k */
    public final Object m30028k(Object obj, Object obj2) {
        return m30029i(obj, (d) obj2).m30027s(s.a);
    }

    /* renamed from: s */
    public final Object m30027s(Object obj) {
        String str;
        a aVar = a.a;
        int i = this.f23041e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            Objects.requireNonNull(this.f23042f);
            if (!s1.u.i.T(new String[]{"sv", "ar"}).contains(this.f23043g)) {
                str = null;
                return str;
            }
            AbstractC6254b abstractC6254b = this.f23042f.f23052g;
            String str2 = this.f23043g;
            String str3 = this.f23044h;
            Mention[] mentionArr = this.f23045i;
            ArrayList arrayList = new ArrayList(mentionArr.length);
            for (Mention mention : mentionArr) {
                arrayList.add(mention.getPrivateName());
            }
            Object[] array = arrayList.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            this.f23041e = 1;
            Object mo31543f = abstractC6254b.mo31543f(str2, "en", str3, (String[]) array, this);
            obj = mo31543f;
            if (mo31543f == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        str = (String) obj;
        return str;
    }
}
