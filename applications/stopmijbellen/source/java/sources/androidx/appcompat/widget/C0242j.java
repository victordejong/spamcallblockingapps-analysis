package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import androidx.appcompat.widget.C0264p0;
import me.zhanghai.android.materialprogressbar.C3681R;
import p087f0.C2694a;
import p097g.C2788a;
/* renamed from: androidx.appcompat.widget.j */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/j.class */
public final class C0242j {

    /* renamed from: b */
    public static final PorterDuff.Mode f985b = PorterDuff.Mode.SRC_IN;

    /* renamed from: c */
    public static C0242j f986c;

    /* renamed from: a */
    public C0264p0 f987a;

    /* renamed from: androidx.appcompat.widget.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/j$a.class */
    public class C0243a implements C0264p0.AbstractC0270f {

        /* renamed from: a */
        public final int[] f988a = {C3681R.C3683drawable.abc_textfield_search_default_mtrl_alpha, C3681R.C3683drawable.abc_textfield_default_mtrl_alpha, C3681R.C3683drawable.abc_ab_share_pack_mtrl_alpha};

        /* renamed from: b */
        public final int[] f989b = {C3681R.C3683drawable.abc_ic_commit_search_api_mtrl_alpha, C3681R.C3683drawable.abc_seekbar_tick_mark_material, C3681R.C3683drawable.abc_ic_menu_share_mtrl_alpha, C3681R.C3683drawable.abc_ic_menu_copy_mtrl_am_alpha, C3681R.C3683drawable.abc_ic_menu_cut_mtrl_alpha, C3681R.C3683drawable.abc_ic_menu_selectall_mtrl_alpha, C3681R.C3683drawable.abc_ic_menu_paste_mtrl_am_alpha};

        /* renamed from: c */
        public final int[] f990c = {C3681R.C3683drawable.abc_textfield_activated_mtrl_alpha, C3681R.C3683drawable.abc_textfield_search_activated_mtrl_alpha, C3681R.C3683drawable.abc_cab_background_top_mtrl_alpha, C3681R.C3683drawable.abc_text_cursor_material, 2131230806, 2131230807, 2131230808};

        /* renamed from: d */
        public final int[] f991d = {C3681R.C3683drawable.abc_popup_background_mtrl_mult, C3681R.C3683drawable.abc_cab_background_internal_bg, C3681R.C3683drawable.abc_menu_hardkey_panel_mtrl_mult};

        /* renamed from: e */
        public final int[] f992e = {C3681R.C3683drawable.abc_tab_indicator_material, C3681R.C3683drawable.abc_textfield_search_material};

        /* renamed from: f */
        public final int[] f993f = {C3681R.C3683drawable.abc_btn_check_material, C3681R.C3683drawable.abc_btn_radio_material, 2131230740, 2131230746};

        /* renamed from: a */
        public final boolean m8480a(int[] iArr, int i) {
            for (int i2 : iArr) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
        /* renamed from: b */
        public final ColorStateList m8479b(Context context, int i) {
            int m8425c = C0283u0.m8425c(context, C3681R.attr.colorControlHighlight);
            int m8426b = C0283u0.m8426b(context, C3681R.attr.colorButtonNormal);
            int[] iArr = C0283u0.f1115b;
            int[] iArr2 = C0283u0.f1117d;
            int m3257b = C2694a.m3257b(m8425c, i);
            return new ColorStateList(new int[]{iArr, iArr2, C0283u0.f1116c, C0283u0.f1119f}, new int[]{m8426b, m3257b, C2694a.m3257b(m8425c, i), i});
        }

        /* renamed from: c */
        public final LayerDrawable m8478c(C0264p0 c0264p0, Context context, int i) {
            BitmapDrawable bitmapDrawable;
            BitmapDrawable bitmapDrawable2;
            BitmapDrawable bitmapDrawable3;
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
            Drawable m8444f = c0264p0.m8444f(context, 2131230799);
            Drawable m8444f2 = c0264p0.m8444f(context, 2131230800);
            if ((m8444f instanceof BitmapDrawable) && m8444f.getIntrinsicWidth() == dimensionPixelSize && m8444f.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable = (BitmapDrawable) m8444f;
                bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
            } else {
                Bitmap createBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                m8444f.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                m8444f.draw(canvas);
                bitmapDrawable = new BitmapDrawable(createBitmap);
                bitmapDrawable2 = new BitmapDrawable(createBitmap);
            }
            bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
            if ((m8444f2 instanceof BitmapDrawable) && m8444f2.getIntrinsicWidth() == dimensionPixelSize && m8444f2.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable3 = (BitmapDrawable) m8444f2;
            } else {
                Bitmap createBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(createBitmap2);
                m8444f2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                m8444f2.draw(canvas2);
                bitmapDrawable3 = new BitmapDrawable(createBitmap2);
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
            layerDrawable.setId(0, 16908288);
            layerDrawable.setId(1, 16908303);
            layerDrawable.setId(2, 16908301);
            return layerDrawable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v33, types: [int[], int[][]] */
        /* renamed from: d */
        public ColorStateList m8477d(Context context, int i) {
            if (i == 2131230756) {
                return C2788a.m3016a(context, C3681R.C3682color.abc_tint_edittext);
            }
            if (i == 2131230802) {
                return C2788a.m3016a(context, C3681R.C3682color.abc_tint_switch_track);
            }
            if (i == 2131230801) {
                ?? r0 = new int[3];
                int[] iArr = new int[3];
                ColorStateList m8424d = C0283u0.m8424d(context, C3681R.attr.colorSwitchThumbNormal);
                if (m8424d == null || !m8424d.isStateful()) {
                    r0[0] = C0283u0.f1115b;
                    iArr[0] = C0283u0.m8426b(context, C3681R.attr.colorSwitchThumbNormal);
                    r0[1] = C0283u0.f1118e;
                    iArr[1] = C0283u0.m8425c(context, C3681R.attr.colorControlActivated);
                    r0[2] = C0283u0.f1119f;
                    iArr[2] = C0283u0.m8425c(context, C3681R.attr.colorSwitchThumbNormal);
                } else {
                    r0[0] = C0283u0.f1115b;
                    iArr[0] = m8424d.getColorForState(r0[0], 0);
                    r0[1] = C0283u0.f1118e;
                    iArr[1] = C0283u0.m8425c(context, C3681R.attr.colorControlActivated);
                    r0[2] = C0283u0.f1119f;
                    iArr[2] = m8424d.getDefaultColor();
                }
                return new ColorStateList(r0, iArr);
            } else if (i == 2131230744) {
                return m8479b(context, C0283u0.m8425c(context, C3681R.attr.colorButtonNormal));
            } else {
                if (i == 2131230738) {
                    return m8479b(context, 0);
                }
                if (i == 2131230743) {
                    return m8479b(context, C0283u0.m8425c(context, C3681R.attr.colorAccent));
                }
                if (i == 2131230797 || i == 2131230798) {
                    return C2788a.m3016a(context, C3681R.C3682color.abc_tint_spinner);
                }
                if (m8480a(this.f989b, i)) {
                    return C0283u0.m8424d(context, C3681R.attr.colorControlNormal);
                }
                if (m8480a(this.f992e, i)) {
                    return C2788a.m3016a(context, C3681R.C3682color.abc_tint_default);
                }
                if (m8480a(this.f993f, i)) {
                    return C2788a.m3016a(context, C3681R.C3682color.abc_tint_btn_checkable);
                }
                if (i != 2131230794) {
                    return null;
                }
                return C2788a.m3016a(context, C3681R.C3682color.abc_tint_seek_thumb);
            }
        }

        /* renamed from: e */
        public final void m8476e(Drawable drawable, int i, PorterDuff.Mode mode) {
            Drawable drawable2 = drawable;
            if (C0233h0.m8499a(drawable)) {
                drawable2 = drawable.mutate();
            }
            PorterDuff.Mode mode2 = mode;
            if (mode == null) {
                mode2 = C0242j.f985b;
            }
            drawable2.setColorFilter(C0242j.m8484c(i, mode2));
        }
    }

    /* renamed from: a */
    public static C0242j m8486a() {
        C0242j c0242j;
        synchronized (C0242j.class) {
            try {
                if (f986c == null) {
                    m8482e();
                }
                c0242j = f986c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0242j;
    }

    /* renamed from: c */
    public static PorterDuffColorFilter m8484c(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter m8442h;
        synchronized (C0242j.class) {
            try {
                m8442h = C0264p0.m8442h(i, mode);
            } catch (Throwable th) {
                throw th;
            }
        }
        return m8442h;
    }

    /* renamed from: e */
    public static void m8482e() {
        synchronized (C0242j.class) {
            try {
                if (f986c == null) {
                    C0242j c0242j = new C0242j();
                    f986c = c0242j;
                    c0242j.f987a = C0264p0.m8446d();
                    C0264p0 c0264p0 = f986c.f987a;
                    C0243a c0243a = new C0243a();
                    synchronized (c0264p0) {
                        c0264p0.f1074g = c0243a;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: f */
    public static void m8481f(Drawable drawable, C0289x0 c0289x0, int[] iArr) {
        PorterDuff.Mode mode = C0264p0.f1065h;
        if (!C0233h0.m8499a(drawable) || drawable.mutate() == drawable) {
            boolean z = c0289x0.f1134d;
            if (z || c0289x0.f1133c) {
                ColorStateList colorStateList = z ? c0289x0.f1131a : null;
                PorterDuff.Mode mode2 = c0289x0.f1133c ? c0289x0.f1132b : C0264p0.f1065h;
                PorterDuffColorFilter porterDuffColorFilter = null;
                if (colorStateList != null) {
                    porterDuffColorFilter = mode2 == null ? null : C0264p0.m8442h(colorStateList.getColorForState(iArr, 0), mode2);
                }
                drawable.setColorFilter(porterDuffColorFilter);
            } else {
                drawable.clearColorFilter();
            }
            if (Build.VERSION.SDK_INT > 23) {
                return;
            }
            drawable.invalidateSelf();
        }
    }

    /* renamed from: b */
    public Drawable m8485b(Context context, int i) {
        Drawable m8444f;
        synchronized (this) {
            m8444f = this.f987a.m8444f(context, i);
        }
        return m8444f;
    }

    /* renamed from: d */
    public ColorStateList m8483d(Context context, int i) {
        ColorStateList m8441i;
        synchronized (this) {
            m8441i = this.f987a.m8441i(context, i);
        }
        return m8441i;
    }
}
