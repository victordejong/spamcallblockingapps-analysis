package p193e.p194a.p294b.p295a.p296a.p297a;

import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.truecaller.bizmon.C3478R;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.b.a.a.a.b0 */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/b0.class */
public final class C7494b0 extends m implements l<Spinner, s> {

    /* renamed from: b */
    public final /* synthetic */ C7578v f23773b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7494b0(C7578v c7578v) {
        super(1);
        this.f23773b = c7578v;
    }

    /* renamed from: a */
    public final void m29553a(Spinner spinner) {
        s1.z.c.l.e(spinner, "spinner");
        ArrayAdapter<CharSequence> createFromResource = ArrayAdapter.createFromResource(this.f23773b.requireContext(), C3478R.array.BusinessEditProfile_time, C3478R.layout.layout_biztime_spinner);
        createFromResource.setDropDownViewResource(17367049);
        spinner.setAdapter((SpinnerAdapter) createFromResource);
        spinner.setEnabled(false);
    }

    /* renamed from: d */
    public /* bridge */ /* synthetic */ Object m29552d(Object obj) {
        m29553a((Spinner) obj);
        return s.a;
    }
}
