package p171m8;

import android.view.View;
import androidx.appcompat.widget.SwitchCompat;
import com.mglab.scm.visual.C2107c;
import java.util.Objects;
/* renamed from: m8.e */
/* loaded from: classes2-dex2jar.jar:m8/e.class */
public final /* synthetic */ class View$OnClickListenerC3671e implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f12018a;

    /* renamed from: b */
    public final /* synthetic */ Object f12019b;

    /* renamed from: c */
    public final /* synthetic */ Object f12020c;

    public /* synthetic */ View$OnClickListenerC3671e(Object obj, Object obj2, int i) {
        this.f12018a = i;
        this.f12019b = obj;
        this.f12020c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f12018a) {
            case 0:
                C3673g c3673g = (C3673g) this.f12019b;
                Objects.requireNonNull(c3673g);
                ((C3670d) this.f12020c).m1902h(false);
                c3673g.notifyDataSetChanged();
                return;
            default:
                ((C2107c) this.f12019b).m3917o((SwitchCompat) this.f12020c);
                return;
        }
    }
}
