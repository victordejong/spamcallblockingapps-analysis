package p1727n3.p1734b.p1743f;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.appcompat.C0032R;
/* renamed from: n3.b.f.v0 */
/* loaded from: classes-dex2jar.jar:n3/b/f/v0.class */
public class C25552v0 {

    /* renamed from: a */
    public final Context f71515a;

    /* renamed from: b */
    public final View f71516b;

    /* renamed from: c */
    public final TextView f71517c;

    /* renamed from: d */
    public final WindowManager.LayoutParams f71518d;

    /* renamed from: e */
    public final Rect f71519e = new Rect();

    /* renamed from: f */
    public final int[] f71520f = new int[2];

    /* renamed from: g */
    public final int[] f71521g = new int[2];

    public C25552v0(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f71518d = layoutParams;
        this.f71515a = context;
        View inflate = LayoutInflater.from(context).inflate(C0032R.layout.abc_tooltip, (ViewGroup) null);
        this.f71516b = inflate;
        this.f71517c = (TextView) inflate.findViewById(C0032R.C0034id.message);
        layoutParams.setTitle(C25552v0.class.getSimpleName());
        layoutParams.packageName = context.getPackageName();
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = C0032R.style.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }

    /* renamed from: a */
    public void m3251a() {
        if (!(this.f71516b.getParent() != null)) {
            return;
        }
        ((WindowManager) this.f71515a.getSystemService("window")).removeView(this.f71516b);
    }
}
