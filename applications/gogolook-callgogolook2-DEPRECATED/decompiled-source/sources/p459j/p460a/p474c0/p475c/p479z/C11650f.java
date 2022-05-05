package p459j.p460a.p474c0.p475c.p479z;

import android.accounts.Account;
import androidx.collection.ArrayMap;
import java.util.Map;
import p081h.p093b.p113e.C5673b;
import p081h.p093b.p113e.C5702k;
/* renamed from: j.a.c0.c.z.f */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/f.class */
public class C11650f extends C5673b {

    /* renamed from: t */
    public final Map<String, C5702k> f26154t = new ArrayMap();

    public C11650f(int i, Account account) {
        super(i, account);
    }

    @Override // p081h.p093b.p113e.C5673b
    /* renamed from: a */
    public void mo8716a(C5702k kVar) {
        super.mo8716a(kVar);
        this.f26154t.put(kVar.m24685b(), kVar);
    }
}
