package p459j.p460a.p521j0.p522u.p523d.p524e1;

import android.text.Spannable;
import android.text.SpannableString;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import p459j.p460a.p582w0.C14147s;
import p459j.p460a.p582w0.C14167t;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.j0.u.d.e1.i */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/i.class */
public final class C12568i implements AbstractC12569j {

    /* renamed from: a */
    public final RowInfo f28314a;

    /* renamed from: b */
    public final boolean f28315b;

    public C12568i(RowInfo rowInfo, boolean z) {
        C15149k.m377b(rowInfo, "rowInfo");
        this.f28314a = rowInfo;
        this.f28315b = z;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: a */
    public Spannable mo5828a(String str, boolean z) {
        C15149k.m377b(str, LogsGroupRealmObject.DISPLAY_NAME);
        return null;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: a */
    public SpannableString mo5863a() {
        RowInfo.Primary h = this.f28314a.m28224h();
        return C14147s.m2358a(h != null ? (h.type != RowInfo.Primary.Type.NUMBER || !this.f28315b) ? h.name : this.f28314a.m28238c() : null);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: a */
    public boolean mo5862a(RowInfo rowInfo, boolean z) {
        C15149k.m377b(rowInfo, "rowInfo");
        return true;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: b */
    public int mo5861b() {
        return C14167t.m2311e();
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: c */
    public int mo5860c() {
        return C14167t.m2315a(2131100116);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: d */
    public boolean mo5827d() {
        return false;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    public String description() {
        return null;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: e */
    public int mo5859e() {
        return 1;
    }
}
