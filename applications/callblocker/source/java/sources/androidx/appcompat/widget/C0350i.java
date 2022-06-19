package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.C0083a;
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.appcompat.widget.C0296af;
import androidx.core.graphics.C0529a;
/* renamed from: androidx.appcompat.widget.i */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i.class */
public final class C0350i {

    /* renamed from: a */
    private static final PorterDuff.Mode f1457a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    private static C0350i f1458b;

    /* renamed from: c */
    private C0296af f1459c;

    /* renamed from: a */
    public static PorterDuffColorFilter m21312a(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter m21511a;
        synchronized (C0350i.class) {
            try {
                m21511a = C0296af.m21511a(i, mode);
            } catch (Throwable th) {
                throw th;
            }
        }
        return m21511a;
    }

    /* renamed from: a */
    public static void m21313a() {
        synchronized (C0350i.class) {
            try {
                if (f1458b == null) {
                    f1458b = new C0350i();
                    f1458b.f1459c = C0296af.m21513a();
                    f1458b.f1459c.m21497a(new C0296af.AbstractC0301e() { // from class: androidx.appcompat.widget.i.1

                        /* renamed from: a */
                        private final int[] f1460a = {C0083a.C0088e.abc_textfield_search_default_mtrl_alpha, C0083a.C0088e.abc_textfield_default_mtrl_alpha, C0083a.C0088e.abc_ab_share_pack_mtrl_alpha};

                        /* renamed from: b */
                        private final int[] f1461b = {C0083a.C0088e.abc_ic_commit_search_api_mtrl_alpha, C0083a.C0088e.abc_seekbar_tick_mark_material, C0083a.C0088e.abc_ic_menu_share_mtrl_alpha, C0083a.C0088e.abc_ic_menu_copy_mtrl_am_alpha, C0083a.C0088e.abc_ic_menu_cut_mtrl_alpha, C0083a.C0088e.abc_ic_menu_selectall_mtrl_alpha, C0083a.C0088e.abc_ic_menu_paste_mtrl_am_alpha};

                        /* renamed from: c */
                        private final int[] f1462c = {C0083a.C0088e.abc_textfield_activated_mtrl_alpha, C0083a.C0088e.abc_textfield_search_activated_mtrl_alpha, C0083a.C0088e.abc_cab_background_top_mtrl_alpha, C0083a.C0088e.abc_text_cursor_material, C0083a.C0088e.abc_text_select_handle_left_mtrl_dark, C0083a.C0088e.abc_text_select_handle_middle_mtrl_dark, C0083a.C0088e.abc_text_select_handle_right_mtrl_dark, C0083a.C0088e.abc_text_select_handle_left_mtrl_light, C0083a.C0088e.abc_text_select_handle_middle_mtrl_light, C0083a.C0088e.abc_text_select_handle_right_mtrl_light};

                        /* renamed from: d */
                        private final int[] f1463d = {C0083a.C0088e.abc_popup_background_mtrl_mult, C0083a.C0088e.abc_cab_background_internal_bg, C0083a.C0088e.abc_menu_hardkey_panel_mtrl_mult};

                        /* renamed from: e */
                        private final int[] f1464e = {C0083a.C0088e.abc_tab_indicator_material, C0083a.C0088e.abc_textfield_search_material};

                        /* renamed from: f */
                        private final int[] f1465f = {C0083a.C0088e.abc_btn_check_material, C0083a.C0088e.abc_btn_radio_material, C0083a.C0088e.abc_btn_check_material_anim, C0083a.C0088e.abc_btn_radio_material_anim};

                        /* renamed from: a */
                        private ColorStateList m21303a(Context context) {
                            return m21296b(context, C0312ak.m21450a(context, C0083a.C0084a.colorButtonNormal));
                        }

                        /* renamed from: a */
                        private void m21300a(Drawable drawable, int i, PorterDuff.Mode mode) {
                            Drawable drawable2 = drawable;
                            if (C0369y.m21166b(drawable)) {
                                drawable2 = drawable.mutate();
                            }
                            PorterDuff.Mode mode2 = mode;
                            if (mode == null) {
                                mode2 = C0350i.f1457a;
                            }
                            drawable2.setColorFilter(C0350i.m21312a(i, mode2));
                        }

                        /* renamed from: a */
                        private boolean m21298a(int[] iArr, int i) {
                            boolean z;
                            int length = iArr.length;
                            int i2 = 0;
                            while (true) {
                                z = false;
                                if (i2 >= length) {
                                    break;
                                } else if (iArr[i2] == i) {
                                    z = true;
                                    break;
                                } else {
                                    i2++;
                                }
                            }
                            return z;
                        }

                        /* renamed from: b */
                        private ColorStateList m21297b(Context context) {
                            return m21296b(context, 0);
                        }

                        /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
                        /* renamed from: b */
                        private ColorStateList m21296b(Context context, int i) {
                            int m21450a = C0312ak.m21450a(context, C0083a.C0084a.colorControlHighlight);
                            int m21447c = C0312ak.m21447c(context, C0083a.C0084a.colorButtonNormal);
                            int[] iArr = C0312ak.f1319a;
                            int[] iArr2 = C0312ak.f1322d;
                            int m20635a = C0529a.m20635a(m21450a, i);
                            return new ColorStateList(new int[]{iArr, iArr2, C0312ak.f1320b, C0312ak.f1326h}, new int[]{m21447c, m20635a, C0529a.m20635a(m21450a, i), i});
                        }

                        /* renamed from: c */
                        private ColorStateList m21294c(Context context) {
                            return m21296b(context, C0312ak.m21450a(context, C0083a.C0084a.colorAccent));
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r0v1, types: [int[], int[][]] */
                        /* renamed from: d */
                        private ColorStateList m21293d(Context context) {
                            ?? r0 = new int[3];
                            int[] iArr = new int[3];
                            ColorStateList m21448b = C0312ak.m21448b(context, C0083a.C0084a.colorSwitchThumbNormal);
                            if (m21448b == null || !m21448b.isStateful()) {
                                r0[0] = C0312ak.f1319a;
                                iArr[0] = C0312ak.m21447c(context, C0083a.C0084a.colorSwitchThumbNormal);
                                r0[1] = C0312ak.f1323e;
                                iArr[1] = C0312ak.m21450a(context, C0083a.C0084a.colorControlActivated);
                                r0[2] = C0312ak.f1326h;
                                iArr[2] = C0312ak.m21450a(context, C0083a.C0084a.colorSwitchThumbNormal);
                            } else {
                                r0[0] = C0312ak.f1319a;
                                iArr[0] = m21448b.getColorForState(r0[0], 0);
                                r0[1] = C0312ak.f1323e;
                                iArr[1] = C0312ak.m21450a(context, C0083a.C0084a.colorControlActivated);
                                r0[2] = C0312ak.f1326h;
                                iArr[2] = m21448b.getDefaultColor();
                            }
                            return new ColorStateList(r0, iArr);
                        }

                        @Override // androidx.appcompat.widget.C0296af.AbstractC0301e
                        /* renamed from: a */
                        public ColorStateList mo21302a(Context context, int i) {
                            return i == C0083a.C0088e.abc_edit_text_material ? C0094a.m22277a(context, C0083a.C0086c.abc_tint_edittext) : i == C0083a.C0088e.abc_switch_track_mtrl_alpha ? C0094a.m22277a(context, C0083a.C0086c.abc_tint_switch_track) : i == C0083a.C0088e.abc_switch_thumb_material ? m21293d(context) : i == C0083a.C0088e.abc_btn_default_mtrl_shape ? m21303a(context) : i == C0083a.C0088e.abc_btn_borderless_material ? m21297b(context) : i == C0083a.C0088e.abc_btn_colored_material ? m21294c(context) : (i == C0083a.C0088e.abc_spinner_mtrl_am_alpha || i == C0083a.C0088e.abc_spinner_textfield_background_material) ? C0094a.m22277a(context, C0083a.C0086c.abc_tint_spinner) : m21298a(this.f1461b, i) ? C0312ak.m21448b(context, C0083a.C0084a.colorControlNormal) : m21298a(this.f1464e, i) ? C0094a.m22277a(context, C0083a.C0086c.abc_tint_default) : m21298a(this.f1465f, i) ? C0094a.m22277a(context, C0083a.C0086c.abc_tint_btn_checkable) : i == C0083a.C0088e.abc_seekbar_thumb_material ? C0094a.m22277a(context, C0083a.C0086c.abc_tint_seek_thumb) : null;
                        }

                        @Override // androidx.appcompat.widget.C0296af.AbstractC0301e
                        /* renamed from: a */
                        public PorterDuff.Mode mo21304a(int i) {
                            PorterDuff.Mode mode = null;
                            if (i == C0083a.C0088e.abc_switch_thumb_material) {
                                mode = PorterDuff.Mode.MULTIPLY;
                            }
                            return mode;
                        }

                        @Override // androidx.appcompat.widget.C0296af.AbstractC0301e
                        /* renamed from: a */
                        public Drawable mo21299a(C0296af c0296af, Context context, int i) {
                            return i == C0083a.C0088e.abc_cab_background_top_material ? new LayerDrawable(new Drawable[]{c0296af.m21509a(context, C0083a.C0088e.abc_cab_background_internal_bg), c0296af.m21509a(context, C0083a.C0088e.abc_cab_background_top_mtrl_alpha)}) : null;
                        }

                        @Override // androidx.appcompat.widget.C0296af.AbstractC0301e
                        /* renamed from: a */
                        public boolean mo21301a(Context context, int i, Drawable drawable) {
                            boolean z = true;
                            if (i == C0083a.C0088e.abc_seekbar_track_material) {
                                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                                m21300a(layerDrawable.findDrawableByLayerId(16908288), C0312ak.m21450a(context, C0083a.C0084a.colorControlNormal), C0350i.f1457a);
                                m21300a(layerDrawable.findDrawableByLayerId(16908303), C0312ak.m21450a(context, C0083a.C0084a.colorControlNormal), C0350i.f1457a);
                                m21300a(layerDrawable.findDrawableByLayerId(16908301), C0312ak.m21450a(context, C0083a.C0084a.colorControlActivated), C0350i.f1457a);
                            } else if (i == C0083a.C0088e.abc_ratingbar_material || i == C0083a.C0088e.abc_ratingbar_indicator_material || i == C0083a.C0088e.abc_ratingbar_small_material) {
                                LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                                m21300a(layerDrawable2.findDrawableByLayerId(16908288), C0312ak.m21447c(context, C0083a.C0084a.colorControlNormal), C0350i.f1457a);
                                m21300a(layerDrawable2.findDrawableByLayerId(16908303), C0312ak.m21450a(context, C0083a.C0084a.colorControlActivated), C0350i.f1457a);
                                m21300a(layerDrawable2.findDrawableByLayerId(16908301), C0312ak.m21450a(context, C0083a.C0084a.colorControlActivated), C0350i.f1457a);
                            } else {
                                z = false;
                            }
                            return z;
                        }

                        @Override // androidx.appcompat.widget.C0296af.AbstractC0301e
                        /* renamed from: b */
                        public boolean mo21295b(Context context, int i, Drawable drawable) {
                            int i2;
                            boolean z;
                            boolean z2;
                            int i3 = 16842801;
                            PorterDuff.Mode mode = C0350i.f1457a;
                            if (m21298a(this.f1460a, i)) {
                                i3 = C0083a.C0084a.colorControlNormal;
                                i2 = -1;
                                z = true;
                            } else if (m21298a(this.f1462c, i)) {
                                i3 = C0083a.C0084a.colorControlActivated;
                                i2 = -1;
                                z = true;
                            } else if (m21298a(this.f1463d, i)) {
                                mode = PorterDuff.Mode.MULTIPLY;
                                i2 = -1;
                                z = true;
                            } else if (i == C0083a.C0088e.abc_list_divider_mtrl_alpha) {
                                i3 = 16842800;
                                i2 = Math.round(40.8f);
                                z = true;
                            } else if (i == C0083a.C0088e.abc_dialog_material_background) {
                                i2 = -1;
                                z = true;
                            } else {
                                i2 = -1;
                                i3 = 0;
                                z = false;
                            }
                            if (z) {
                                Drawable drawable2 = drawable;
                                if (C0369y.m21166b(drawable)) {
                                    drawable2 = drawable.mutate();
                                }
                                drawable2.setColorFilter(C0350i.m21312a(C0312ak.m21450a(context, i3), mode));
                                z2 = true;
                                if (i2 != -1) {
                                    drawable2.setAlpha(i2);
                                    z2 = true;
                                }
                            } else {
                                z2 = false;
                            }
                            return z2;
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m21308a(Drawable drawable, C0315an c0315an, int[] iArr) {
        C0296af.m21499a(drawable, c0315an, iArr);
    }

    /* renamed from: b */
    public static C0350i m21307b() {
        C0350i c0350i;
        synchronized (C0350i.class) {
            try {
                if (f1458b == null) {
                    m21313a();
                }
                c0350i = f1458b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0350i;
    }

    /* renamed from: a */
    public Drawable m21310a(Context context, int i) {
        Drawable m21509a;
        synchronized (this) {
            m21509a = this.f1459c.m21509a(context, i);
        }
        return m21509a;
    }

    /* renamed from: a */
    public Drawable m21309a(Context context, int i, boolean z) {
        Drawable m21506a;
        synchronized (this) {
            m21506a = this.f1459c.m21506a(context, i, z);
        }
        return m21506a;
    }

    /* renamed from: a */
    public void m21311a(Context context) {
        synchronized (this) {
            this.f1459c.m21510a(context);
        }
    }

    /* renamed from: b */
    public ColorStateList m21306b(Context context, int i) {
        ColorStateList m21493b;
        synchronized (this) {
            m21493b = this.f1459c.m21493b(context, i);
        }
        return m21493b;
    }
}
