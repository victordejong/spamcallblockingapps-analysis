package p193e.p194a.p294b.p331b.p334c;

import android.view.View;
import android.widget.AdapterView;
import android.widget.TextView;
import com.truecaller.bizmon.p152ui.profile.CreateBusinessProfileActivity;
import p193e.p194a.p294b.p355m.C8106v;
import s1.z.c.l;
/* renamed from: e.a.b.b.c.m */
/* loaded from: classes6-dex2jar.jar:e/a/b/b/c/m.class */
public final class C7889m implements AdapterView.OnItemSelectedListener {

    /* renamed from: a */
    public final /* synthetic */ CreateBusinessProfileActivity f24474a;

    public C7889m(CreateBusinessProfileActivity createBusinessProfileActivity) {
        this.f24474a = createBusinessProfileActivity;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        C8106v c8106v = this.f24474a.f10416q;
        if (c8106v == null) {
            l.l("binding");
            throw null;
        }
        TextView textView = c8106v.f25112B;
        l.d(textView, "binding.sizeEditText");
        textView.setError(null);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
