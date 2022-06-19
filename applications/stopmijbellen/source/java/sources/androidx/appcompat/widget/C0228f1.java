package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import com.facebook.ads.AdError;
import me.zhanghai.android.materialprogressbar.C3681R;
/* renamed from: androidx.appcompat.widget.f1 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/f1.class */
public class C0228f1 {

    /* renamed from: a */
    public final Context f936a;

    /* renamed from: b */
    public final View f937b;

    /* renamed from: c */
    public final TextView f938c;

    /* renamed from: d */
    public final WindowManager.LayoutParams f939d;

    /* renamed from: e */
    public final Rect f940e = new Rect();

    /* renamed from: f */
    public final int[] f941f = new int[2];

    /* renamed from: g */
    public final int[] f942g = new int[2];

    public C0228f1(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f939d = layoutParams;
        this.f936a = context;
        View inflate = LayoutInflater.from(context).inflate(2131492891, (ViewGroup) null);
        this.f937b = inflate;
        this.f938c = (TextView) inflate.findViewById(C3681R.C3684id.message);
        layoutParams.setTitle(C0228f1.class.getSimpleName());
        layoutParams.packageName = context.getPackageName();
        layoutParams.type = AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = C3681R.style.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }

    /* renamed from: a */
    public void m8526a() {
        if (!(this.f937b.getParent() != null)) {
            return;
        }
        ((WindowManager) this.f936a.getSystemService("window")).removeView(this.f937b);
    }
}
