package p193e.p194a.p1275v.p1306m;

import androidx.appcompat.widget.SwitchCompat;
import com.truecaller.details_view.p161qa.DetailsViewQaActivity;
import com.truecaller.searchwarnings.data.SearchWarningDTO;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1359x4.p1360j.AbstractC21427a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.details_view.qa.DetailsViewQaActivity$insertSearchWarningsIfChosen$1", f = "DetailsViewQaActivity.kt", l = {105}, m = "invokeSuspend")
/* renamed from: e.a.v.m.a */
/* loaded from: classes8-dex2jar.jar:e/a/v/m/a.class */
public final class C20915a extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f58851e;

    /* renamed from: f */
    public final /* synthetic */ DetailsViewQaActivity f58852f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20915a(DetailsViewQaActivity detailsViewQaActivity, d dVar) {
        super(2, dVar);
        this.f58852f = detailsViewQaActivity;
    }

    /* renamed from: i */
    public final d<s> m10528i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C20915a(this.f58852f, dVar);
    }

    /* renamed from: k */
    public final Object m10527k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C20915a(this.f58852f, dVar).m10526s(s.a);
    }

    /* renamed from: s */
    public final Object m10526s(Object obj) {
        a aVar = a.a;
        int i = this.f58851e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC21427a mo12628N3 = ((AbstractC15539j2) this.f58852f.f11694a.getValue()).mo12628N3();
            SwitchCompat switchCompat = (SwitchCompat) this.f58852f.f11706m.getValue();
            l.d(switchCompat, "hasSearchWarningsMessage");
            SearchWarningDTO searchWarningDTO = new SearchWarningDTO("2147483647", "Potential sales", switchCompat.isChecked() ? "Potential sales veeeeeeeeeeeeeeeery looooooooooong message" : "", "#00FF00", "#1900FF", "https://storage.googleapis.com/tc-search-context-eu/message-icon/ic_fraud.png");
            this.f58851e = 1;
            if (mo12628N3.mo9740d(new SearchWarningDTO[]{searchWarningDTO}, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
