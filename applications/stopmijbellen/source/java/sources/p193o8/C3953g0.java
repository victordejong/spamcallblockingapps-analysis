package p193o8;

import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import com.mglab.scm.visual.C2107c;
/* renamed from: o8.g0 */
/* loaded from: classes2-dex2jar.jar:o8/g0.class */
public class C3953g0 implements AdapterView.OnItemSelectedListener {

    /* renamed from: a */
    public final /* synthetic */ ImageView f12446a;

    /* renamed from: b */
    public final /* synthetic */ C2107c f12447b;

    public C3953g0(C2107c c2107c, ImageView imageView) {
        this.f12447b = c2107c;
        this.f12446a = imageView;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        if (i == 1) {
            this.f12446a.setImageResource(2131231000);
        } else if (i != 2) {
            this.f12446a.setImageResource(2131230998);
        } else {
            this.f12446a.setImageResource(2131230999);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
