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
import androidx.appcompat.widget.C0327v;
import p020b.p021a.C1423a;
import p020b.p021a.C1425c;
import p020b.p021a.C1426d;
import p020b.p021a.C1427e;
import p020b.p021a.p022k.p023a.C1433a;
import p020b.p041h.p042e.C1522a;
/* renamed from: androidx.appcompat.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/f.class */
public final class C0287f {

    /* renamed from: a */
    private static final PorterDuff.Mode f1256a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    private static C0287f f1257b;

    /* renamed from: c */
    private C0327v f1258c;

    /* renamed from: androidx.appcompat.widget.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/f$a.class */
    public class C0288a implements C0327v.AbstractC0333f {

        /* renamed from: a */
        private final int[] f1259a = {C1427e.abc_textfield_search_default_mtrl_alpha, C1427e.abc_textfield_default_mtrl_alpha, C1427e.abc_ab_share_pack_mtrl_alpha};

        /* renamed from: b */
        private final int[] f1260b = {C1427e.abc_ic_commit_search_api_mtrl_alpha, C1427e.abc_seekbar_tick_mark_material, C1427e.abc_ic_menu_share_mtrl_alpha, C1427e.abc_ic_menu_copy_mtrl_am_alpha, C1427e.abc_ic_menu_cut_mtrl_alpha, C1427e.abc_ic_menu_selectall_mtrl_alpha, C1427e.abc_ic_menu_paste_mtrl_am_alpha};

        /* renamed from: c */
        private final int[] f1261c = {C1427e.abc_textfield_activated_mtrl_alpha, C1427e.abc_textfield_search_activated_mtrl_alpha, C1427e.abc_cab_background_top_mtrl_alpha, C1427e.abc_text_cursor_material, C1427e.abc_text_select_handle_left_mtrl, C1427e.abc_text_select_handle_middle_mtrl, C1427e.abc_text_select_handle_right_mtrl};

        /* renamed from: d */
        private final int[] f1262d = {C1427e.abc_popup_background_mtrl_mult, C1427e.abc_cab_background_internal_bg, C1427e.abc_menu_hardkey_panel_mtrl_mult};

        /* renamed from: e */
        private final int[] f1263e = {C1427e.abc_tab_indicator_material, C1427e.abc_textfield_search_material};

        /* renamed from: f */
        private final int[] f1264f = {C1427e.abc_btn_check_material, C1427e.abc_btn_radio_material, C1427e.abc_btn_check_material_anim, C1427e.abc_btn_radio_material_anim};

        C0288a() {
        }

        /* renamed from: f */
        private boolean m34935f(int[] iArr, int i) {
            for (int i2 : iArr) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: g */
        private ColorStateList m34934g(Context context) {
            return m34933h(context, 0);
        }

        /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
        /* renamed from: h */
        private ColorStateList m34933h(Context context, int i) {
            int m34685c = C0339z.m34685c(context, C1423a.colorControlHighlight);
            int m34686b = C0339z.m34686b(context, C1423a.colorButtonNormal);
            int[] iArr = C0339z.f1431b;
            int[] iArr2 = C0339z.f1434e;
            int m29850b = C1522a.m29850b(m34685c, i);
            return new ColorStateList(new int[]{iArr, iArr2, C0339z.f1432c, C0339z.f1438i}, new int[]{m34686b, m29850b, C1522a.m29850b(m34685c, i), i});
        }

        /* renamed from: i */
        private ColorStateList m34932i(Context context) {
            return m34933h(context, C0339z.m34685c(context, C1423a.colorAccent));
        }

        /* renamed from: j */
        private ColorStateList m34931j(Context context) {
            return m34933h(context, C0339z.m34685c(context, C1423a.colorButtonNormal));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [int[], int[][]] */
        /* renamed from: k */
        private ColorStateList m34930k(Context context) {
            ?? r0 = new int[3];
            int[] iArr = new int[3];
            int i = C1423a.colorSwitchThumbNormal;
            ColorStateList m34683e = C0339z.m34683e(context, i);
            if (m34683e == null || !m34683e.isStateful()) {
                r0[0] = C0339z.f1431b;
                iArr[0] = C0339z.m34686b(context, i);
                r0[1] = C0339z.f1435f;
                iArr[1] = C0339z.m34685c(context, C1423a.colorControlActivated);
                r0[2] = C0339z.f1438i;
                iArr[2] = C0339z.m34685c(context, i);
            } else {
                r0[0] = C0339z.f1431b;
                iArr[0] = m34683e.getColorForState(r0[0], 0);
                r0[1] = C0339z.f1435f;
                iArr[1] = C0339z.m34685c(context, C1423a.colorControlActivated);
                r0[2] = C0339z.f1438i;
                iArr[2] = m34683e.getDefaultColor();
            }
            return new ColorStateList(r0, iArr);
        }

        /* renamed from: l */
        private LayerDrawable m34929l(C0327v c0327v, Context context, int i) {
            BitmapDrawable bitmapDrawable;
            BitmapDrawable bitmapDrawable2;
            BitmapDrawable bitmapDrawable3;
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
            Drawable m34736j = c0327v.m34736j(context, C1427e.abc_star_black_48dp);
            Drawable m34736j2 = c0327v.m34736j(context, C1427e.abc_star_half_black_48dp);
            if ((m34736j instanceof BitmapDrawable) && m34736j.getIntrinsicWidth() == dimensionPixelSize && m34736j.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable2 = (BitmapDrawable) m34736j;
                bitmapDrawable = new BitmapDrawable(bitmapDrawable2.getBitmap());
            } else {
                Bitmap createBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                m34736j.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                m34736j.draw(canvas);
                bitmapDrawable2 = new BitmapDrawable(createBitmap);
                bitmapDrawable = new BitmapDrawable(createBitmap);
            }
            bitmapDrawable.setTileModeX(Shader.TileMode.REPEAT);
            if ((m34736j2 instanceof BitmapDrawable) && m34736j2.getIntrinsicWidth() == dimensionPixelSize && m34736j2.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable3 = (BitmapDrawable) m34736j2;
            } else {
                Bitmap createBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(createBitmap2);
                m34736j2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                m34736j2.draw(canvas2);
                bitmapDrawable3 = new BitmapDrawable(createBitmap2);
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable2, bitmapDrawable3, bitmapDrawable});
            layerDrawable.setId(0, 16908288);
            layerDrawable.setId(1, 16908303);
            layerDrawable.setId(2, 16908301);
            return layerDrawable;
        }

        /* renamed from: m */
        private void m34928m(Drawable drawable, int i, PorterDuff.Mode mode) {
            Drawable drawable2 = drawable;
            if (C0317q.m34777a(drawable)) {
                drawable2 = drawable.mutate();
            }
            PorterDuff.Mode mode2 = mode;
            if (mode == null) {
                mode2 = C0287f.f1256a;
            }
            drawable2.setColorFilter(C0287f.m34940e(i, mode2));
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0081  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00af A[RETURN] */
        @Override // androidx.appcompat.widget.C0327v.AbstractC0333f
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean mo34718a(android.content.Context r5, int r6, android.graphics.drawable.Drawable r7) {
            /*
                r4 = this;
                android.graphics.PorterDuff$Mode r0 = androidx.appcompat.widget.C0287f.m34944a()
                r8 = r0
                r0 = r4
                r1 = r4
                int[] r1 = r1.f1259a
                r2 = r6
                boolean r0 = r0.m34935f(r1, r2)
                r9 = r0
                r0 = 16842801(0x1010031, float:2.3693695E-38)
                r10 = r0
                r0 = r9
                if (r0 == 0) goto L27
                int r0 = p020b.p021a.C1423a.colorControlNormal
                r6 = r0
            L1e:
                r0 = -1
                r10 = r0
            L21:
                r0 = 1
                r11 = r0
                goto L7c
            L27:
                r0 = r4
                r1 = r4
                int[] r1 = r1.f1261c
                r2 = r6
                boolean r0 = r0.m34935f(r1, r2)
                if (r0 == 0) goto L3a
                int r0 = p020b.p021a.C1423a.colorControlActivated
                r6 = r0
                goto L1e
            L3a:
                r0 = r4
                r1 = r4
                int[] r1 = r1.f1262d
                r2 = r6
                boolean r0 = r0.m34935f(r1, r2)
                if (r0 == 0) goto L51
                android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
                r8 = r0
                r0 = r10
                r6 = r0
                goto L1e
            L51:
                r0 = r6
                int r1 = p020b.p021a.C1427e.abc_list_divider_mtrl_alpha
                if (r0 != r1) goto L67
                r0 = 16842800(0x1010030, float:2.3693693E-38)
                r6 = r0
                r0 = 1109603123(0x42233333, float:40.8)
                int r0 = java.lang.Math.round(r0)
                r10 = r0
                goto L21
            L67:
                r0 = r6
                int r1 = p020b.p021a.C1427e.abc_dialog_material_background
                if (r0 != r1) goto L74
                r0 = r10
                r6 = r0
                goto L1e
            L74:
                r0 = -1
                r10 = r0
                r0 = 0
                r11 = r0
                r0 = 0
                r6 = r0
            L7c:
                r0 = r11
                if (r0 == 0) goto Laf
                r0 = r7
                r12 = r0
                r0 = r7
                boolean r0 = androidx.appcompat.widget.C0317q.m34777a(r0)
                if (r0 == 0) goto L91
                r0 = r7
                android.graphics.drawable.Drawable r0 = r0.mutate()
                r12 = r0
            L91:
                r0 = r12
                r1 = r5
                r2 = r6
                int r1 = androidx.appcompat.widget.C0339z.m34685c(r1, r2)
                r2 = r8
                android.graphics.PorterDuffColorFilter r1 = androidx.appcompat.widget.C0287f.m34940e(r1, r2)
                r0.setColorFilter(r1)
                r0 = r10
                r1 = -1
                if (r0 == r1) goto Lad
                r0 = r12
                r1 = r10
                r0.setAlpha(r1)
            Lad:
                r0 = 1
                return r0
            Laf:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0287f.C0288a.mo34718a(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
        }

        @Override // androidx.appcompat.widget.C0327v.AbstractC0333f
        /* renamed from: b */
        public PorterDuff.Mode mo34717b(int i) {
            return i == C1427e.abc_switch_thumb_material ? PorterDuff.Mode.MULTIPLY : null;
        }

        @Override // androidx.appcompat.widget.C0327v.AbstractC0333f
        /* renamed from: c */
        public Drawable mo34716c(C0327v c0327v, Context context, int i) {
            if (i == C1427e.abc_cab_background_top_material) {
                return new LayerDrawable(new Drawable[]{c0327v.m34736j(context, C1427e.abc_cab_background_internal_bg), c0327v.m34736j(context, C1427e.abc_cab_background_top_mtrl_alpha)});
            }
            if (i == C1427e.abc_ratingbar_material) {
                return m34929l(c0327v, context, C1426d.abc_star_big);
            }
            if (i == C1427e.abc_ratingbar_indicator_material) {
                return m34929l(c0327v, context, C1426d.abc_star_medium);
            }
            if (i != C1427e.abc_ratingbar_small_material) {
                return null;
            }
            return m34929l(c0327v, context, C1426d.abc_star_small);
        }

        @Override // androidx.appcompat.widget.C0327v.AbstractC0333f
        /* renamed from: d */
        public ColorStateList mo34715d(Context context, int i) {
            if (i == C1427e.abc_edit_text_material) {
                return C1433a.m30127c(context, C1425c.abc_tint_edittext);
            }
            if (i == C1427e.abc_switch_track_mtrl_alpha) {
                return C1433a.m30127c(context, C1425c.abc_tint_switch_track);
            }
            if (i == C1427e.abc_switch_thumb_material) {
                return m34930k(context);
            }
            if (i == C1427e.abc_btn_default_mtrl_shape) {
                return m34931j(context);
            }
            if (i == C1427e.abc_btn_borderless_material) {
                return m34934g(context);
            }
            if (i == C1427e.abc_btn_colored_material) {
                return m34932i(context);
            }
            if (i == C1427e.abc_spinner_mtrl_am_alpha || i == C1427e.abc_spinner_textfield_background_material) {
                return C1433a.m30127c(context, C1425c.abc_tint_spinner);
            }
            if (m34935f(this.f1260b, i)) {
                return C0339z.m34683e(context, C1423a.colorControlNormal);
            }
            if (m34935f(this.f1263e, i)) {
                return C1433a.m30127c(context, C1425c.abc_tint_default);
            }
            if (m34935f(this.f1264f, i)) {
                return C1433a.m30127c(context, C1425c.abc_tint_btn_checkable);
            }
            if (i != C1427e.abc_seekbar_thumb_material) {
                return null;
            }
            return C1433a.m30127c(context, C1425c.abc_tint_seek_thumb);
        }

        @Override // androidx.appcompat.widget.C0327v.AbstractC0333f
        /* renamed from: e */
        public boolean mo34714e(Context context, int i, Drawable drawable) {
            if (i == C1427e.abc_seekbar_track_material) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                Drawable findDrawableByLayerId = layerDrawable.findDrawableByLayerId(16908288);
                int i2 = C1423a.colorControlNormal;
                m34928m(findDrawableByLayerId, C0339z.m34685c(context, i2), C0287f.f1256a);
                m34928m(layerDrawable.findDrawableByLayerId(16908303), C0339z.m34685c(context, i2), C0287f.f1256a);
                m34928m(layerDrawable.findDrawableByLayerId(16908301), C0339z.m34685c(context, C1423a.colorControlActivated), C0287f.f1256a);
                return true;
            } else if (i != C1427e.abc_ratingbar_material && i != C1427e.abc_ratingbar_indicator_material && i != C1427e.abc_ratingbar_small_material) {
                return false;
            } else {
                LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                m34928m(layerDrawable2.findDrawableByLayerId(16908288), C0339z.m34686b(context, C1423a.colorControlNormal), C0287f.f1256a);
                Drawable findDrawableByLayerId2 = layerDrawable2.findDrawableByLayerId(16908303);
                int i3 = C1423a.colorControlActivated;
                m34928m(findDrawableByLayerId2, C0339z.m34685c(context, i3), C0287f.f1256a);
                m34928m(layerDrawable2.findDrawableByLayerId(16908301), C0339z.m34685c(context, i3), C0287f.f1256a);
                return true;
            }
        }
    }

    /* renamed from: b */
    public static C0287f m34943b() {
        C0287f c0287f;
        synchronized (C0287f.class) {
            try {
                if (f1257b == null) {
                    m34937h();
                }
                c0287f = f1257b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0287f;
    }

    /* renamed from: e */
    public static PorterDuffColorFilter m34940e(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter m34734l;
        synchronized (C0287f.class) {
            try {
                m34734l = C0327v.m34734l(i, mode);
            } catch (Throwable th) {
                throw th;
            }
        }
        return m34734l;
    }

    /* renamed from: h */
    public static void m34937h() {
        synchronized (C0287f.class) {
            try {
                if (f1257b == null) {
                    C0287f c0287f = new C0287f();
                    f1257b = c0287f;
                    c0287f.f1258c = C0327v.m34738h();
                    f1257b.f1258c.m34725u(new C0288a());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: i */
    public static void m34936i(Drawable drawable, C0282c0 c0282c0, int[] iArr) {
        C0327v.m34723w(drawable, c0282c0, iArr);
    }

    /* renamed from: c */
    public Drawable m34942c(Context context, int i) {
        Drawable m34736j;
        synchronized (this) {
            m34736j = this.f1258c.m34736j(context, i);
        }
        return m34736j;
    }

    /* renamed from: d */
    public Drawable m34941d(Context context, int i, boolean z) {
        Drawable m34735k;
        synchronized (this) {
            m34735k = this.f1258c.m34735k(context, i, z);
        }
        return m34735k;
    }

    /* renamed from: f */
    public ColorStateList m34939f(Context context, int i) {
        ColorStateList m34733m;
        synchronized (this) {
            m34733m = this.f1258c.m34733m(context, i);
        }
        return m34733m;
    }

    /* renamed from: g */
    public void m34938g(Context context) {
        synchronized (this) {
            this.f1258c.m34727s(context);
        }
    }
}
