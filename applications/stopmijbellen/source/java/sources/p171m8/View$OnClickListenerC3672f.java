package p171m8;

import android.view.View;
import android.widget.CheckBox;
import androidx.appcompat.widget.SwitchCompat;
import com.mglab.scm.visual.C2107c;
import java.util.Objects;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p095f8.C2780h;
/* renamed from: m8.f */
/* loaded from: classes2-dex2jar.jar:m8/f.class */
public final /* synthetic */ class View$OnClickListenerC3672f implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f12021a;

    /* renamed from: b */
    public final /* synthetic */ Object f12022b;

    /* renamed from: c */
    public final /* synthetic */ Object f12023c;

    public /* synthetic */ View$OnClickListenerC3672f(Object obj, Object obj2, int i) {
        this.f12021a = i;
        this.f12022b = obj;
        this.f12023c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f12021a) {
            case 0:
                C3673g c3673g = (C3673g) this.f12022b;
                Objects.requireNonNull(c3673g);
                ((C3670d) this.f12023c).m1902h(true);
                c3673g.notifyDataSetChanged();
                return;
            case 1:
                ((View$OnClickListenerC2530g) this.f12022b).m3481c(EnumC2524b.NEGATIVE).setEnabled(((CheckBox) this.f12023c).isChecked());
                return;
            default:
                C2107c c2107c = (C2107c) this.f12022b;
                SwitchCompat switchCompat = (SwitchCompat) this.f12023c;
                Objects.requireNonNull(c2107c);
                if (switchCompat.isEnabled() && switchCompat.getVisibility() == 0) {
                    C2780h.m3049g0(c2107c.f7646a, "dlgbwlsoc", switchCompat.isChecked());
                }
                c2107c.m3917o(switchCompat);
                return;
        }
    }
}
