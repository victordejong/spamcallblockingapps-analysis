package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.C0142a;
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.appcompat.widget.C0414t;
import androidx.core.graphics.C0834a;
/* renamed from: androidx.appcompat.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/f.class */
public final class C0392f {

    /* renamed from: a */
    private static final PorterDuff.Mode f1575a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    private static C0392f f1576b;

    /* renamed from: c */
    private C0414t f1577c;

    /* renamed from: a */
    public static PorterDuffColorFilter m45731a(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter m45608a;
        synchronized (C0392f.class) {
            try {
                m45608a = C0414t.m45608a(i, mode);
            } catch (Throwable th) {
                throw th;
            }
        }
        return m45608a;
    }

    /* renamed from: a */
    public static void m45732a() {
        synchronized (C0392f.class) {
            try {
                if (f1576b == null) {
                    C0392f c0392f = new C0392f();
                    f1576b = c0392f;
                    c0392f.f1577c = C0414t.m45610a();
                    f1576b.f1577c.m45597a(new C0414t.AbstractC0419e() { // from class: androidx.appcompat.widget.f.1

                        /* renamed from: a */
                        private final int[] f1578a = {C0142a.C0147e.abc_textfield_search_default_mtrl_alpha, C0142a.C0147e.abc_textfield_default_mtrl_alpha, C0142a.C0147e.abc_ab_share_pack_mtrl_alpha};

                        /* renamed from: b */
                        private final int[] f1579b = {C0142a.C0147e.abc_ic_commit_search_api_mtrl_alpha, C0142a.C0147e.abc_seekbar_tick_mark_material, C0142a.C0147e.abc_ic_menu_share_mtrl_alpha, C0142a.C0147e.abc_ic_menu_copy_mtrl_am_alpha, C0142a.C0147e.abc_ic_menu_cut_mtrl_alpha, C0142a.C0147e.abc_ic_menu_selectall_mtrl_alpha, C0142a.C0147e.abc_ic_menu_paste_mtrl_am_alpha};

                        /* renamed from: c */
                        private final int[] f1580c = {C0142a.C0147e.abc_textfield_activated_mtrl_alpha, C0142a.C0147e.abc_textfield_search_activated_mtrl_alpha, C0142a.C0147e.abc_cab_background_top_mtrl_alpha, C0142a.C0147e.abc_text_cursor_material, C0142a.C0147e.abc_text_select_handle_left_mtrl_dark, C0142a.C0147e.abc_text_select_handle_middle_mtrl_dark, C0142a.C0147e.abc_text_select_handle_right_mtrl_dark, C0142a.C0147e.abc_text_select_handle_left_mtrl_light, C0142a.C0147e.abc_text_select_handle_middle_mtrl_light, C0142a.C0147e.abc_text_select_handle_right_mtrl_light};

                        /* renamed from: d */
                        private final int[] f1581d = {C0142a.C0147e.abc_popup_background_mtrl_mult, C0142a.C0147e.abc_cab_background_internal_bg, C0142a.C0147e.abc_menu_hardkey_panel_mtrl_mult};

                        /* renamed from: e */
                        private final int[] f1582e = {C0142a.C0147e.abc_tab_indicator_material, C0142a.C0147e.abc_textfield_search_material};

                        /* renamed from: f */
                        private final int[] f1583f = {C0142a.C0147e.abc_btn_check_material, C0142a.C0147e.abc_btn_radio_material, C0142a.C0147e.abc_btn_check_material_anim, C0142a.C0147e.abc_btn_radio_material_anim};

                        /* renamed from: a */
                        private static void m45723a(Drawable drawable, int i, PorterDuff.Mode mode) {
                            Drawable drawable2 = drawable;
                            if (C0407p.m45619c(drawable)) {
                                drawable2 = drawable.mutate();
                            }
                            PorterDuff.Mode mode2 = mode;
                            if (mode == null) {
                                mode2 = C0392f.f1575a;
                            }
                            drawable2.setColorFilter(C0392f.m45731a(i, mode2));
                        }

                        /* renamed from: a */
                        private static boolean m45722a(int[] iArr, int i) {
                            for (int i2 : iArr) {
                                if (i2 == i) {
                                    return true;
                                }
                            }
                            return false;
                        }

                        /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
                        /* renamed from: b */
                        private static ColorStateList m45721b(Context context, int i) {
                            int m45573a = C0425x.m45573a(context, C0142a.C0143a.colorControlHighlight);
                            int m45570c = C0425x.m45570c(context, C0142a.C0143a.colorButtonNormal);
                            int[] iArr = C0425x.f1683a;
                            int[] iArr2 = C0425x.f1686d;
                            int m44403a = C0834a.m44403a(m45573a, i);
                            return new ColorStateList(new int[]{iArr, iArr2, C0425x.f1684b, C0425x.f1690h}, new int[]{m45570c, m44403a, C0834a.m44403a(m45573a, i), i});
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r0v36, types: [int[], int[][]] */
                        @Override // androidx.appcompat.widget.C0414t.AbstractC0419e
                        /* renamed from: a */
                        public final ColorStateList mo45591a(Context context, int i) {
                            if (i == C0142a.C0147e.abc_edit_text_material) {
                                return C0153a.m46375a(context, C0142a.C0145c.abc_tint_edittext);
                            }
                            if (i == C0142a.C0147e.abc_switch_track_mtrl_alpha) {
                                return C0153a.m46375a(context, C0142a.C0145c.abc_tint_switch_track);
                            }
                            if (i == C0142a.C0147e.abc_switch_thumb_material) {
                                ?? r0 = new int[3];
                                int[] iArr = new int[3];
                                ColorStateList m45571b = C0425x.m45571b(context, C0142a.C0143a.colorSwitchThumbNormal);
                                if (m45571b == null || !m45571b.isStateful()) {
                                    r0[0] = C0425x.f1683a;
                                    iArr[0] = C0425x.m45570c(context, C0142a.C0143a.colorSwitchThumbNormal);
                                    r0[1] = C0425x.f1687e;
                                    iArr[1] = C0425x.m45573a(context, C0142a.C0143a.colorControlActivated);
                                    r0[2] = C0425x.f1690h;
                                    iArr[2] = C0425x.m45573a(context, C0142a.C0143a.colorSwitchThumbNormal);
                                } else {
                                    r0[0] = C0425x.f1683a;
                                    iArr[0] = m45571b.getColorForState(r0[0], 0);
                                    r0[1] = C0425x.f1687e;
                                    iArr[1] = C0425x.m45573a(context, C0142a.C0143a.colorControlActivated);
                                    r0[2] = C0425x.f1690h;
                                    iArr[2] = m45571b.getDefaultColor();
                                }
                                return new ColorStateList(r0, iArr);
                            } else if (i == C0142a.C0147e.abc_btn_default_mtrl_shape) {
                                return m45721b(context, C0425x.m45573a(context, C0142a.C0143a.colorButtonNormal));
                            } else {
                                if (i == C0142a.C0147e.abc_btn_borderless_material) {
                                    return m45721b(context, 0);
                                }
                                if (i == C0142a.C0147e.abc_btn_colored_material) {
                                    return m45721b(context, C0425x.m45573a(context, C0142a.C0143a.colorAccent));
                                }
                                if (i == C0142a.C0147e.abc_spinner_mtrl_am_alpha || i == C0142a.C0147e.abc_spinner_textfield_background_material) {
                                    return C0153a.m46375a(context, C0142a.C0145c.abc_tint_spinner);
                                }
                                if (m45722a(this.f1579b, i)) {
                                    return C0425x.m45571b(context, C0142a.C0143a.colorControlNormal);
                                }
                                if (m45722a(this.f1582e, i)) {
                                    return C0153a.m46375a(context, C0142a.C0145c.abc_tint_default);
                                }
                                if (m45722a(this.f1583f, i)) {
                                    return C0153a.m46375a(context, C0142a.C0145c.abc_tint_btn_checkable);
                                }
                                if (i != C0142a.C0147e.abc_seekbar_thumb_material) {
                                    return null;
                                }
                                return C0153a.m46375a(context, C0142a.C0145c.abc_tint_seek_thumb);
                            }
                        }

                        @Override // androidx.appcompat.widget.C0414t.AbstractC0419e
                        /* renamed from: a */
                        public final PorterDuff.Mode mo45592a(int i) {
                            return i == C0142a.C0147e.abc_switch_thumb_material ? PorterDuff.Mode.MULTIPLY : null;
                        }

                        @Override // androidx.appcompat.widget.C0414t.AbstractC0419e
                        /* renamed from: a */
                        public final Drawable mo45589a(C0414t c0414t, Context context, int i) {
                            if (i == C0142a.C0147e.abc_cab_background_top_material) {
                                return new LayerDrawable(new Drawable[]{c0414t.m45606a(context, C0142a.C0147e.abc_cab_background_internal_bg), c0414t.m45606a(context, C0142a.C0147e.abc_cab_background_top_mtrl_alpha)});
                            }
                            return null;
                        }

                        @Override // androidx.appcompat.widget.C0414t.AbstractC0419e
                        /* renamed from: a */
                        public final boolean mo45590a(Context context, int i, Drawable drawable) {
                            if (i == C0142a.C0147e.abc_seekbar_track_material) {
                                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                                m45723a(layerDrawable.findDrawableByLayerId(16908288), C0425x.m45573a(context, C0142a.C0143a.colorControlNormal), C0392f.f1575a);
                                m45723a(layerDrawable.findDrawableByLayerId(16908303), C0425x.m45573a(context, C0142a.C0143a.colorControlNormal), C0392f.f1575a);
                                m45723a(layerDrawable.findDrawableByLayerId(16908301), C0425x.m45573a(context, C0142a.C0143a.colorControlActivated), C0392f.f1575a);
                                return true;
                            } else if (i != C0142a.C0147e.abc_ratingbar_material && i != C0142a.C0147e.abc_ratingbar_indicator_material && i != C0142a.C0147e.abc_ratingbar_small_material) {
                                return false;
                            } else {
                                LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                                m45723a(layerDrawable2.findDrawableByLayerId(16908288), C0425x.m45570c(context, C0142a.C0143a.colorControlNormal), C0392f.f1575a);
                                m45723a(layerDrawable2.findDrawableByLayerId(16908303), C0425x.m45573a(context, C0142a.C0143a.colorControlActivated), C0392f.f1575a);
                                m45723a(layerDrawable2.findDrawableByLayerId(16908301), C0425x.m45573a(context, C0142a.C0143a.colorControlActivated), C0392f.f1575a);
                                return true;
                            }
                        }

                        /* JADX WARN: Removed duplicated region for block: B:22:0x007e  */
                        /* JADX WARN: Removed duplicated region for block: B:29:0x00ac A[RETURN] */
                        @Override // androidx.appcompat.widget.C0414t.AbstractC0419e
                        /* renamed from: b */
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final boolean mo45588b(android.content.Context r5, int r6, android.graphics.drawable.Drawable r7) {
                            /*
                                r4 = this;
                                android.graphics.PorterDuff$Mode r0 = androidx.appcompat.widget.C0392f.m45725c()
                                r8 = r0
                                r0 = r4
                                int[] r0 = r0.f1578a
                                r1 = r6
                                boolean r0 = m45722a(r0, r1)
                                r9 = r0
                                r0 = 16842801(0x1010031, float:2.3693695E-38)
                                r10 = r0
                                r0 = r9
                                if (r0 == 0) goto L26
                                int r0 = androidx.appcompat.C0142a.C0143a.colorControlNormal
                                r6 = r0
                            L1d:
                                r0 = -1
                                r10 = r0
                            L20:
                                r0 = 1
                                r11 = r0
                                goto L79
                            L26:
                                r0 = r4
                                int[] r0 = r0.f1580c
                                r1 = r6
                                boolean r0 = m45722a(r0, r1)
                                if (r0 == 0) goto L38
                                int r0 = androidx.appcompat.C0142a.C0143a.colorControlActivated
                                r6 = r0
                                goto L1d
                            L38:
                                r0 = r4
                                int[] r0 = r0.f1581d
                                r1 = r6
                                boolean r0 = m45722a(r0, r1)
                                if (r0 == 0) goto L4e
                                android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
                                r8 = r0
                                r0 = r10
                                r6 = r0
                                goto L1d
                            L4e:
                                r0 = r6
                                int r1 = androidx.appcompat.C0142a.C0147e.abc_list_divider_mtrl_alpha
                                if (r0 != r1) goto L64
                                r0 = 16842800(0x1010030, float:2.3693693E-38)
                                r6 = r0
                                r0 = 1109603123(0x42233333, float:40.8)
                                int r0 = java.lang.Math.round(r0)
                                r10 = r0
                                goto L20
                            L64:
                                r0 = r6
                                int r1 = androidx.appcompat.C0142a.C0147e.abc_dialog_material_background
                                if (r0 != r1) goto L71
                                r0 = r10
                                r6 = r0
                                goto L1d
                            L71:
                                r0 = -1
                                r10 = r0
                                r0 = 0
                                r11 = r0
                                r0 = 0
                                r6 = r0
                            L79:
                                r0 = r11
                                if (r0 == 0) goto Lac
                                r0 = r7
                                r12 = r0
                                r0 = r7
                                boolean r0 = androidx.appcompat.widget.C0407p.m45619c(r0)
                                if (r0 == 0) goto L8e
                                r0 = r7
                                android.graphics.drawable.Drawable r0 = r0.mutate()
                                r12 = r0
                            L8e:
                                r0 = r12
                                r1 = r5
                                r2 = r6
                                int r1 = androidx.appcompat.widget.C0425x.m45573a(r1, r2)
                                r2 = r8
                                android.graphics.PorterDuffColorFilter r1 = androidx.appcompat.widget.C0392f.m45731a(r1, r2)
                                r0.setColorFilter(r1)
                                r0 = r10
                                r1 = -1
                                if (r0 == r1) goto Laa
                                r0 = r12
                                r1 = r10
                                r0.setAlpha(r1)
                            Laa:
                                r0 = 1
                                return r0
                            Lac:
                                r0 = 0
                                return r0
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0392f.C03931.mo45588b(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m45728a(Drawable drawable, C0427z c0427z, int[] iArr) {
        C0414t.m45599a(drawable, c0427z, iArr);
    }

    /* renamed from: b */
    public static C0392f m45727b() {
        C0392f c0392f;
        synchronized (C0392f.class) {
            try {
                if (f1576b == null) {
                    m45732a();
                }
                c0392f = f1576b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0392f;
    }

    /* renamed from: a */
    public final Drawable m45729a(Context context, int i) {
        Drawable m45606a;
        synchronized (this) {
            m45606a = this.f1577c.m45606a(context, i);
        }
        return m45606a;
    }

    /* renamed from: a */
    public final void m45730a(Context context) {
        synchronized (this) {
            this.f1577c.m45607a(context);
        }
    }

    /* renamed from: b */
    public final Drawable m45726b(Context context, int i) {
        Drawable m45604a;
        synchronized (this) {
            m45604a = this.f1577c.m45604a(context, i, true);
        }
        return m45604a;
    }

    /* renamed from: c */
    public final ColorStateList m45724c(Context context, int i) {
        ColorStateList m45595b;
        synchronized (this) {
            m45595b = this.f1577c.m45595b(context, i);
        }
        return m45595b;
    }
}
