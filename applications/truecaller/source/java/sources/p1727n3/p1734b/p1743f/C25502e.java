package p1727n3.p1734b.p1743f;

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
import android.util.TypedValue;
import androidx.appcompat.C0032R;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p1727n3.p1734b.p1743f.C25512h0;
import p1727n3.p1807k.p1812c.C26493a;
/* renamed from: n3.b.f.e */
/* loaded from: classes-dex2jar.jar:n3/b/f/e.class */
public final class C25502e {

    /* renamed from: b */
    public static final PorterDuff.Mode f71363b = PorterDuff.Mode.SRC_IN;

    /* renamed from: c */
    public static C25502e f71364c;

    /* renamed from: a */
    public C25512h0 f71365a;

    /* renamed from: n3.b.f.e$a */
    /* loaded from: classes-dex2jar.jar:n3/b/f/e$a.class */
    public class C25503a implements C25512h0.AbstractC25518f {

        /* renamed from: a */
        public final int[] f71366a = {C0032R.C0033drawable.abc_textfield_search_default_mtrl_alpha, C0032R.C0033drawable.abc_textfield_default_mtrl_alpha, C0032R.C0033drawable.abc_ab_share_pack_mtrl_alpha};

        /* renamed from: b */
        public final int[] f71367b = {C0032R.C0033drawable.abc_ic_commit_search_api_mtrl_alpha, C0032R.C0033drawable.abc_seekbar_tick_mark_material, C0032R.C0033drawable.abc_ic_menu_share_mtrl_alpha, C0032R.C0033drawable.abc_ic_menu_copy_mtrl_am_alpha, C0032R.C0033drawable.abc_ic_menu_cut_mtrl_alpha, C0032R.C0033drawable.abc_ic_menu_selectall_mtrl_alpha, C0032R.C0033drawable.abc_ic_menu_paste_mtrl_am_alpha};

        /* renamed from: c */
        public final int[] f71368c = {C0032R.C0033drawable.abc_textfield_activated_mtrl_alpha, C0032R.C0033drawable.abc_textfield_search_activated_mtrl_alpha, C0032R.C0033drawable.abc_cab_background_top_mtrl_alpha, C0032R.C0033drawable.abc_text_cursor_material, C0032R.C0033drawable.abc_text_select_handle_left_mtrl, C0032R.C0033drawable.abc_text_select_handle_middle_mtrl, C0032R.C0033drawable.abc_text_select_handle_right_mtrl};

        /* renamed from: d */
        public final int[] f71369d = {C0032R.C0033drawable.abc_popup_background_mtrl_mult, C0032R.C0033drawable.abc_cab_background_internal_bg, C0032R.C0033drawable.abc_menu_hardkey_panel_mtrl_mult};

        /* renamed from: e */
        public final int[] f71370e = {C0032R.C0033drawable.abc_tab_indicator_material, C0032R.C0033drawable.abc_textfield_search_material};

        /* renamed from: f */
        public final int[] f71371f = {C0032R.C0033drawable.abc_btn_check_material, C0032R.C0033drawable.abc_btn_radio_material, C0032R.C0033drawable.abc_btn_check_material_anim, C0032R.C0033drawable.abc_btn_radio_material_anim};

        /* renamed from: a */
        public final boolean m3374a(int[] iArr, int i) {
            for (int i2 : iArr) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
        /* renamed from: b */
        public final ColorStateList m3373b(Context context, int i) {
            int m3342c = C25529m0.m3342c(context, C0032R.attr.colorControlHighlight);
            int m3343b = C25529m0.m3343b(context, C0032R.attr.colorButtonNormal);
            int[] iArr = C25529m0.f71424b;
            int[] iArr2 = C25529m0.f71426d;
            int m1752g = C26493a.m1752g(m3342c, i);
            return new ColorStateList(new int[]{iArr, iArr2, C25529m0.f71425c, C25529m0.f71428f}, new int[]{m3343b, m1752g, C26493a.m1752g(m3342c, i), i});
        }

        /* renamed from: c */
        public final LayerDrawable m3372c(C25512h0 c25512h0, Context context, int i) {
            BitmapDrawable bitmapDrawable;
            BitmapDrawable bitmapDrawable2;
            BitmapDrawable bitmapDrawable3;
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
            Drawable m3355f = c25512h0.m3355f(context, C0032R.C0033drawable.abc_star_black_48dp);
            Drawable m3355f2 = c25512h0.m3355f(context, C0032R.C0033drawable.abc_star_half_black_48dp);
            if ((m3355f instanceof BitmapDrawable) && m3355f.getIntrinsicWidth() == dimensionPixelSize && m3355f.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable2 = (BitmapDrawable) m3355f;
                bitmapDrawable = new BitmapDrawable(bitmapDrawable2.getBitmap());
            } else {
                Bitmap createBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                m3355f.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                m3355f.draw(canvas);
                bitmapDrawable2 = new BitmapDrawable(createBitmap);
                bitmapDrawable = new BitmapDrawable(createBitmap);
            }
            bitmapDrawable.setTileModeX(Shader.TileMode.REPEAT);
            if ((m3355f2 instanceof BitmapDrawable) && m3355f2.getIntrinsicWidth() == dimensionPixelSize && m3355f2.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable3 = (BitmapDrawable) m3355f2;
            } else {
                Bitmap createBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(createBitmap2);
                m3355f2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                m3355f2.draw(canvas2);
                bitmapDrawable3 = new BitmapDrawable(createBitmap2);
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable2, bitmapDrawable3, bitmapDrawable});
            layerDrawable.setId(0, 16908288);
            layerDrawable.setId(1, 16908303);
            layerDrawable.setId(2, 16908301);
            return layerDrawable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v41, types: [int[], int[][]] */
        /* renamed from: d */
        public ColorStateList m3371d(Context context, int i) {
            if (i == C0032R.C0033drawable.abc_edit_text_material) {
                int i2 = C0032R.color.abc_tint_edittext;
                ThreadLocal<TypedValue> threadLocal = C25440a.f71017a;
                return context.getColorStateList(i2);
            } else if (i == C0032R.C0033drawable.abc_switch_track_mtrl_alpha) {
                int i3 = C0032R.color.abc_tint_switch_track;
                ThreadLocal<TypedValue> threadLocal2 = C25440a.f71017a;
                return context.getColorStateList(i3);
            } else if (i == C0032R.C0033drawable.abc_switch_thumb_material) {
                ?? r0 = new int[3];
                int[] iArr = new int[3];
                int i4 = C0032R.attr.colorSwitchThumbNormal;
                ColorStateList m3341d = C25529m0.m3341d(context, i4);
                if (m3341d == null || !m3341d.isStateful()) {
                    r0[0] = C25529m0.f71424b;
                    iArr[0] = C25529m0.m3343b(context, i4);
                    r0[1] = C25529m0.f71427e;
                    iArr[1] = C25529m0.m3342c(context, C0032R.attr.colorControlActivated);
                    r0[2] = C25529m0.f71428f;
                    iArr[2] = C25529m0.m3342c(context, i4);
                } else {
                    r0[0] = C25529m0.f71424b;
                    iArr[0] = m3341d.getColorForState(r0[0], 0);
                    r0[1] = C25529m0.f71427e;
                    iArr[1] = C25529m0.m3342c(context, C0032R.attr.colorControlActivated);
                    r0[2] = C25529m0.f71428f;
                    iArr[2] = m3341d.getDefaultColor();
                }
                return new ColorStateList(r0, iArr);
            } else if (i == C0032R.C0033drawable.abc_btn_default_mtrl_shape) {
                return m3373b(context, C25529m0.m3342c(context, C0032R.attr.colorButtonNormal));
            } else {
                if (i == C0032R.C0033drawable.abc_btn_borderless_material) {
                    return m3373b(context, 0);
                }
                if (i == C0032R.C0033drawable.abc_btn_colored_material) {
                    return m3373b(context, C25529m0.m3342c(context, C0032R.attr.colorAccent));
                }
                if (i == C0032R.C0033drawable.abc_spinner_mtrl_am_alpha || i == C0032R.C0033drawable.abc_spinner_textfield_background_material) {
                    int i5 = C0032R.color.abc_tint_spinner;
                    ThreadLocal<TypedValue> threadLocal3 = C25440a.f71017a;
                    return context.getColorStateList(i5);
                } else if (m3374a(this.f71367b, i)) {
                    return C25529m0.m3341d(context, C0032R.attr.colorControlNormal);
                } else {
                    if (m3374a(this.f71370e, i)) {
                        int i6 = C0032R.color.abc_tint_default;
                        ThreadLocal<TypedValue> threadLocal4 = C25440a.f71017a;
                        return context.getColorStateList(i6);
                    } else if (m3374a(this.f71371f, i)) {
                        int i7 = C0032R.color.abc_tint_btn_checkable;
                        ThreadLocal<TypedValue> threadLocal5 = C25440a.f71017a;
                        return context.getColorStateList(i7);
                    } else if (i != C0032R.C0033drawable.abc_seekbar_thumb_material) {
                        return null;
                    } else {
                        int i8 = C0032R.color.abc_tint_seek_thumb;
                        ThreadLocal<TypedValue> threadLocal6 = C25440a.f71017a;
                        return context.getColorStateList(i8);
                    }
                }
            }
        }

        /* renamed from: e */
        public final void m3370e(Drawable drawable, int i, PorterDuff.Mode mode) {
            Drawable drawable2 = drawable;
            if (C25553w.m3250a(drawable)) {
                drawable2 = drawable.mutate();
            }
            PorterDuff.Mode mode2 = mode;
            if (mode == null) {
                mode2 = C25502e.f71363b;
            }
            drawable2.setColorFilter(C25502e.m3378c(i, mode2));
        }
    }

    /* renamed from: a */
    public static C25502e m3380a() {
        C25502e c25502e;
        synchronized (C25502e.class) {
            try {
                if (f71364c == null) {
                    m3376e();
                }
                c25502e = f71364c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c25502e;
    }

    /* renamed from: c */
    public static PorterDuffColorFilter m3378c(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter m3353h;
        synchronized (C25502e.class) {
            try {
                m3353h = C25512h0.m3353h(i, mode);
            } catch (Throwable th) {
                throw th;
            }
        }
        return m3353h;
    }

    /* renamed from: e */
    public static void m3376e() {
        synchronized (C25502e.class) {
            try {
                if (f71364c == null) {
                    C25502e c25502e = new C25502e();
                    f71364c = c25502e;
                    c25502e.f71365a = C25512h0.m3357d();
                    C25512h0 c25512h0 = f71364c.f71365a;
                    C25503a c25503a = new C25503a();
                    synchronized (c25512h0) {
                        c25512h0.f71394g = c25503a;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: f */
    public static void m3375f(Drawable drawable, C25535p0 c25535p0, int[] iArr) {
        PorterDuff.Mode mode = C25512h0.f71385h;
        if (!C25553w.m3250a(drawable) || drawable.mutate() == drawable) {
            boolean z = c25535p0.f71444d;
            if (z || c25535p0.f71443c) {
                ColorStateList colorStateList = z ? c25535p0.f71441a : null;
                PorterDuff.Mode mode2 = c25535p0.f71443c ? c25535p0.f71442b : C25512h0.f71385h;
                PorterDuffColorFilter porterDuffColorFilter = null;
                if (colorStateList != null) {
                    porterDuffColorFilter = mode2 == null ? null : C25512h0.m3353h(colorStateList.getColorForState(iArr, 0), mode2);
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
    public Drawable m3379b(Context context, int i) {
        Drawable m3355f;
        synchronized (this) {
            m3355f = this.f71365a.m3355f(context, i);
        }
        return m3355f;
    }

    /* renamed from: d */
    public ColorStateList m3377d(Context context, int i) {
        ColorStateList m3352i;
        synchronized (this) {
            m3352i = this.f71365a.m3352i(context, i);
        }
        return m3352i;
    }
}
