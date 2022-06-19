package p193e.p194a.p1114o5;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.Toolbar;
import com.mopub.common.Constants;
import java.util.List;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p682e.p699c2.C13197i0;
/* renamed from: e.a.o5.j0 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/j0.class */
public final class C19045j0 extends C8605o {

    /* renamed from: b */
    public static final /* synthetic */ int f53198b = 0;

    /* renamed from: e.a.o5.j0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/j0$a.class */
    public interface AbstractC19046a<T> {
    }

    /* renamed from: j */
    public static C13197i0 m14206j(List<? extends C13197i0> list, String str) {
        for (C13197i0 c13197i0 : list) {
            if (c13197i0.mo18607e().toString().equalsIgnoreCase(str)) {
                return c13197i0;
            }
        }
        return list.get(0);
    }

    /* renamed from: k */
    public static View m14205k(Context context, int i) {
        return LayoutInflater.from(context).inflate(i, (ViewGroup) null);
    }

    /* renamed from: l */
    public static int m14204l(Resources resources) {
        int identifier = resources.getIdentifier("status_bar_height", "dimen", Constants.ANDROID_PLATFORM);
        return identifier > 0 ? resources.getDimensionPixelSize(identifier) : 0;
    }

    /* renamed from: m */
    public static TextView m14203m(View view, int i) {
        return (TextView) view.findViewById(i);
    }

    /* renamed from: n */
    public static void m14202n(View view, int i, boolean z) {
        View findViewById = view.findViewById(i);
        if (findViewById instanceof Checkable) {
            ((Checkable) findViewById).setChecked(z);
        }
    }

    /* renamed from: o */
    public static void m14201o(ImageView imageView, int i) {
        if (imageView == null) {
            return;
        }
        if (i <= 0) {
            m14194v(imageView, false, true);
            return;
        }
        imageView.setImageResource(i);
        m14194v(imageView, true, true);
    }

    /* renamed from: p */
    public static View m14200p(View view, int i, View.OnClickListener onClickListener) {
        View view2 = view;
        if (view != null) {
            View findViewById = view.findViewById(i);
            view2 = findViewById;
            if (findViewById != null) {
                findViewById.setClickable(true);
                findViewById.setOnClickListener(onClickListener);
                view2 = findViewById;
            }
        }
        return view2;
    }

    /* renamed from: q */
    public static SwitchCompat m14199q(View view, int i, boolean z, CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        SwitchCompat switchCompat = view != null ? (SwitchCompat) view.findViewById(i) : null;
        if (switchCompat == null) {
            return null;
        }
        switchCompat.setChecked(z);
        switchCompat.setOnCheckedChangeListener(onCheckedChangeListener);
        return switchCompat;
    }

    /* renamed from: r */
    public static void m14198r(View view, int i, CharSequence charSequence) {
        m14196t((TextView) view.findViewById(i), charSequence);
    }

    /* renamed from: s */
    public static void m14197s(TextView textView, int i) {
        if (textView == null) {
            return;
        }
        textView.setText(i);
        m14194v(textView, !TextUtils.isEmpty(textView.getText()) || !TextUtils.isEmpty(textView.getHint()), true);
    }

    /* renamed from: t */
    public static void m14196t(TextView textView, CharSequence charSequence) {
        if (textView == null) {
            return;
        }
        textView.setText(charSequence);
        m14194v(textView, !TextUtils.isEmpty(textView.getText()) || !TextUtils.isEmpty(textView.getHint()), true);
    }

    /* renamed from: u */
    public static View m14195u(View view, int i, boolean z) {
        View findViewById = view.findViewById(i);
        m14194v(findViewById, z, true);
        return findViewById;
    }

    /* renamed from: v */
    public static View m14194v(View view, boolean z, boolean z2) {
        if (view != null) {
            view.setVisibility(z ? 0 : z2 ? 8 : 4);
        }
        return view;
    }

    /* renamed from: w */
    public static void m14193w(TextView textView, int i) {
        Drawable[] compoundDrawables = textView.getCompoundDrawables();
        for (Drawable drawable : compoundDrawables) {
            if (drawable != null) {
                C19291g.m13522p1(textView.getContext(), drawable, i);
            }
        }
        textView.setCompoundDrawables(compoundDrawables[0], compoundDrawables[1], compoundDrawables[2], compoundDrawables[3]);
    }

    /* renamed from: x */
    public static void m14192x(Context context, Toolbar toolbar, int i) {
        Drawable icon;
        Drawable navigationIcon = toolbar.getNavigationIcon();
        if (navigationIcon != null) {
            C19291g.m13522p1(context, navigationIcon, i);
            toolbar.setNavigationIcon(navigationIcon);
        }
        Drawable overflowIcon = toolbar.getOverflowIcon();
        if (overflowIcon != null) {
            C19291g.m13522p1(context, overflowIcon, i);
            toolbar.setOverflowIcon(overflowIcon);
        }
        Menu menu = toolbar.getMenu();
        for (int i2 = 0; i2 < menu.size(); i2++) {
            MenuItem item = menu.getItem(i2);
            if (item != null && (icon = item.getIcon()) != null) {
                C19291g.m13522p1(context, icon, i);
                item.setIcon(icon);
            }
        }
    }
}
