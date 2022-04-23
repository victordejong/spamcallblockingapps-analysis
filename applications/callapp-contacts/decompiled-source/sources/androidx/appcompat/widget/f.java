package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.a;
import androidx.appcompat.widget.t;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final PorterDuff.Mode f1089a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b  reason: collision with root package name */
    private static f f1090b;

    /* renamed from: c  reason: collision with root package name */
    private t f1091c;

    public static PorterDuffColorFilter a(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter a2;
        synchronized (f.class) {
            try {
                a2 = t.a(i, mode);
            } catch (Throwable th) {
                throw th;
            }
        }
        return a2;
    }

    public static void a() {
        synchronized (f.class) {
            try {
                if (f1090b == null) {
                    f fVar = new f();
                    f1090b = fVar;
                    fVar.f1091c = t.a();
                    f1090b.f1091c.a(new t.e() { // from class: androidx.appcompat.widget.f.1

                        /* renamed from: a  reason: collision with root package name */
                        private final int[] f1092a = {a.e.abc_textfield_search_default_mtrl_alpha, a.e.abc_textfield_default_mtrl_alpha, a.e.abc_ab_share_pack_mtrl_alpha};

                        /* renamed from: b  reason: collision with root package name */
                        private final int[] f1093b = {a.e.abc_ic_commit_search_api_mtrl_alpha, a.e.abc_seekbar_tick_mark_material, a.e.abc_ic_menu_share_mtrl_alpha, a.e.abc_ic_menu_copy_mtrl_am_alpha, a.e.abc_ic_menu_cut_mtrl_alpha, a.e.abc_ic_menu_selectall_mtrl_alpha, a.e.abc_ic_menu_paste_mtrl_am_alpha};

                        /* renamed from: c  reason: collision with root package name */
                        private final int[] f1094c = {a.e.abc_textfield_activated_mtrl_alpha, a.e.abc_textfield_search_activated_mtrl_alpha, a.e.abc_cab_background_top_mtrl_alpha, a.e.abc_text_cursor_material, a.e.abc_text_select_handle_left_mtrl_dark, a.e.abc_text_select_handle_middle_mtrl_dark, a.e.abc_text_select_handle_right_mtrl_dark, a.e.abc_text_select_handle_left_mtrl_light, a.e.abc_text_select_handle_middle_mtrl_light, a.e.abc_text_select_handle_right_mtrl_light};

                        /* renamed from: d  reason: collision with root package name */
                        private final int[] f1095d = {a.e.abc_popup_background_mtrl_mult, a.e.abc_cab_background_internal_bg, a.e.abc_menu_hardkey_panel_mtrl_mult};
                        private final int[] e = {a.e.abc_tab_indicator_material, a.e.abc_textfield_search_material};
                        private final int[] f = {a.e.abc_btn_check_material, a.e.abc_btn_radio_material, a.e.abc_btn_check_material_anim, a.e.abc_btn_radio_material_anim};

                        private static void a(Drawable drawable, int i, PorterDuff.Mode mode) {
                            Drawable drawable2 = drawable;
                            if (p.c(drawable)) {
                                drawable2 = drawable.mutate();
                            }
                            PorterDuff.Mode mode2 = mode;
                            if (mode == null) {
                                mode2 = f.f1089a;
                            }
                            drawable2.setColorFilter(f.a(i, mode2));
                        }

                        private static boolean a(int[] iArr, int i) {
                            for (int i2 : iArr) {
                                if (i2 == i) {
                                    return true;
                                }
                            }
                            return false;
                        }

                        /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
                        private static ColorStateList b(Context context, int i) {
                            int a2 = x.a(context, a.C0018a.colorControlHighlight);
                            int c2 = x.c(context, a.C0018a.colorButtonNormal);
                            int[] iArr = x.f1144a;
                            int[] iArr2 = x.f1147d;
                            int a3 = androidx.core.graphics.a.a(a2, i);
                            return new ColorStateList(new int[]{iArr, iArr2, x.f1145b, x.h}, new int[]{c2, a3, androidx.core.graphics.a.a(a2, i), i});
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r0v36, types: [int[], int[][]] */
                        /* JADX WARN: Unknown variable types count: 1 */
                        @Override // androidx.appcompat.widget.t.e
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final android.content.res.ColorStateList a(android.content.Context r7, int r8) {
                            /*
                                Method dump skipped, instructions count: 335
                                To view this dump add '--comments-level debug' option
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.f.AnonymousClass1.a(android.content.Context, int):android.content.res.ColorStateList");
                        }

                        @Override // androidx.appcompat.widget.t.e
                        public final PorterDuff.Mode a(int i) {
                            return i == a.e.abc_switch_thumb_material ? PorterDuff.Mode.MULTIPLY : null;
                        }

                        @Override // androidx.appcompat.widget.t.e
                        public final Drawable a(t tVar, Context context, int i) {
                            if (i == a.e.abc_cab_background_top_material) {
                                return new LayerDrawable(new Drawable[]{tVar.a(context, a.e.abc_cab_background_internal_bg), tVar.a(context, a.e.abc_cab_background_top_mtrl_alpha)});
                            }
                            return null;
                        }

                        @Override // androidx.appcompat.widget.t.e
                        public final boolean a(Context context, int i, Drawable drawable) {
                            if (i == a.e.abc_seekbar_track_material) {
                                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                                a(layerDrawable.findDrawableByLayerId(16908288), x.a(context, a.C0018a.colorControlNormal), f.f1089a);
                                a(layerDrawable.findDrawableByLayerId(16908303), x.a(context, a.C0018a.colorControlNormal), f.f1089a);
                                a(layerDrawable.findDrawableByLayerId(16908301), x.a(context, a.C0018a.colorControlActivated), f.f1089a);
                                return true;
                            } else if (i != a.e.abc_ratingbar_material && i != a.e.abc_ratingbar_indicator_material && i != a.e.abc_ratingbar_small_material) {
                                return false;
                            } else {
                                LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                                a(layerDrawable2.findDrawableByLayerId(16908288), x.c(context, a.C0018a.colorControlNormal), f.f1089a);
                                a(layerDrawable2.findDrawableByLayerId(16908303), x.a(context, a.C0018a.colorControlActivated), f.f1089a);
                                a(layerDrawable2.findDrawableByLayerId(16908301), x.a(context, a.C0018a.colorControlActivated), f.f1089a);
                                return true;
                            }
                        }

                        /* JADX WARN: Removed duplicated region for block: B:22:0x007e  */
                        /* JADX WARN: Removed duplicated region for block: B:29:0x00ac A[RETURN] */
                        @Override // androidx.appcompat.widget.t.e
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final boolean b(android.content.Context r5, int r6, android.graphics.drawable.Drawable r7) {
                            /*
                                r4 = this;
                                android.graphics.PorterDuff$Mode r0 = androidx.appcompat.widget.f.c()
                                r8 = r0
                                r0 = r4
                                int[] r0 = r0.f1092a
                                r1 = r6
                                boolean r0 = a(r0, r1)
                                r9 = r0
                                r0 = 16842801(0x1010031, float:2.3693695E-38)
                                r10 = r0
                                r0 = r9
                                if (r0 == 0) goto L_0x0026
                                int r0 = androidx.appcompat.a.C0018a.colorControlNormal
                                r6 = r0
                            L_0x001d:
                                r0 = -1
                                r10 = r0
                            L_0x0020:
                                r0 = 1
                                r11 = r0
                                goto L_0x0079
                            L_0x0026:
                                r0 = r4
                                int[] r0 = r0.f1094c
                                r1 = r6
                                boolean r0 = a(r0, r1)
                                if (r0 == 0) goto L_0x0038
                                int r0 = androidx.appcompat.a.C0018a.colorControlActivated
                                r6 = r0
                                goto L_0x001d
                            L_0x0038:
                                r0 = r4
                                int[] r0 = r0.f1095d
                                r1 = r6
                                boolean r0 = a(r0, r1)
                                if (r0 == 0) goto L_0x004e
                                android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
                                r8 = r0
                                r0 = r10
                                r6 = r0
                                goto L_0x001d
                            L_0x004e:
                                r0 = r6
                                int r1 = androidx.appcompat.a.e.abc_list_divider_mtrl_alpha
                                if (r0 != r1) goto L_0x0064
                                r0 = 16842800(0x1010030, float:2.3693693E-38)
                                r6 = r0
                                r0 = 1109603123(0x42233333, float:40.8)
                                int r0 = java.lang.Math.round(r0)
                                r10 = r0
                                goto L_0x0020
                            L_0x0064:
                                r0 = r6
                                int r1 = androidx.appcompat.a.e.abc_dialog_material_background
                                if (r0 != r1) goto L_0x0071
                                r0 = r10
                                r6 = r0
                                goto L_0x001d
                            L_0x0071:
                                r0 = -1
                                r10 = r0
                                r0 = 0
                                r11 = r0
                                r0 = 0
                                r6 = r0
                            L_0x0079:
                                r0 = r11
                                if (r0 == 0) goto L_0x00ac
                                r0 = r7
                                r12 = r0
                                r0 = r7
                                boolean r0 = androidx.appcompat.widget.p.c(r0)
                                if (r0 == 0) goto L_0x008e
                                r0 = r7
                                android.graphics.drawable.Drawable r0 = r0.mutate()
                                r12 = r0
                            L_0x008e:
                                r0 = r12
                                r1 = r5
                                r2 = r6
                                int r1 = androidx.appcompat.widget.x.a(r1, r2)
                                r2 = r8
                                android.graphics.PorterDuffColorFilter r1 = androidx.appcompat.widget.f.a(r1, r2)
                                r0.setColorFilter(r1)
                                r0 = r10
                                r1 = -1
                                if (r0 == r1) goto L_0x00aa
                                r0 = r12
                                r1 = r10
                                r0.setAlpha(r1)
                            L_0x00aa:
                                r0 = 1
                                return r0
                            L_0x00ac:
                                r0 = 0
                                return r0
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.f.AnonymousClass1.b(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Drawable drawable, z zVar, int[] iArr) {
        t.a(drawable, zVar, iArr);
    }

    public static f b() {
        f fVar;
        synchronized (f.class) {
            try {
                if (f1090b == null) {
                    a();
                }
                fVar = f1090b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return fVar;
    }

    public final Drawable a(Context context, int i) {
        Drawable a2;
        synchronized (this) {
            a2 = this.f1091c.a(context, i);
        }
        return a2;
    }

    public final void a(Context context) {
        synchronized (this) {
            this.f1091c.a(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Drawable b(Context context, int i) {
        Drawable a2;
        synchronized (this) {
            a2 = this.f1091c.a(context, i, true);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ColorStateList c(Context context, int i) {
        ColorStateList b2;
        synchronized (this) {
            b2 = this.f1091c.b(context, i);
        }
        return b2;
    }
}
