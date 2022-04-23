package p459j.p460a.p474c0.p491g;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import gogolook.callgogolook2.R$color;
import gogolook.callgogolook2.R$drawable;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p499h.C12242z;
/* renamed from: j.a.c0.g.f */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/f.class */
public class C12081f {

    /* renamed from: x */
    public static C12081f f27129x;

    /* renamed from: a */
    public Drawable f27130a;

    /* renamed from: b */
    public Drawable f27131b;

    /* renamed from: c */
    public Drawable f27132c;

    /* renamed from: d */
    public Drawable f27133d;

    /* renamed from: e */
    public Drawable f27134e;

    /* renamed from: f */
    public Drawable f27135f;

    /* renamed from: g */
    public Drawable f27136g;

    /* renamed from: h */
    public Drawable f27137h;

    /* renamed from: i */
    public Drawable f27138i;

    /* renamed from: j */
    public Drawable f27139j;

    /* renamed from: k */
    public Drawable f27140k;

    /* renamed from: l */
    public Drawable f27141l;

    /* renamed from: m */
    public Drawable f27142m;

    /* renamed from: n */
    public Drawable f27143n;

    /* renamed from: o */
    public final Context f27144o;

    /* renamed from: p */
    public int f27145p;

    /* renamed from: q */
    public int f27146q;

    /* renamed from: r */
    public int f27147r;

    /* renamed from: s */
    public int f27148s;

    /* renamed from: t */
    public int f27149t;

    /* renamed from: u */
    public int f27150u;

    /* renamed from: v */
    public int f27151v;

    /* renamed from: w */
    public int f27152w;

    public C12081f(Context context) {
        this.f27144o = context;
        m7214c();
    }

    /* renamed from: d */
    public static C12081f m7212d() {
        if (f27129x == null) {
            f27129x = new C12081f(AbstractC11516a.m9413n().mo9412a());
        }
        return f27129x;
    }

    /* renamed from: a */
    public int m7219a() {
        return this.f27149t;
    }

    /* renamed from: a */
    public Drawable m7218a(boolean z) {
        return z ? this.f27139j : this.f27140k;
    }

    /* renamed from: a */
    public Drawable m7217a(boolean z, boolean z2, boolean z3, boolean z4) {
        return C12242z.m6562a(this.f27144o, z3 ? z2 ? (!z4 || z) ? this.f27130a : this.f27132c : this.f27131b : z2 ? this.f27133d : this.f27134e, z ? this.f27148s : z2 ? z4 ? this.f27147r : this.f27145p : this.f27146q);
    }

    /* renamed from: b */
    public int m7216b() {
        return this.f27150u;
    }

    /* renamed from: b */
    public Drawable m7215b(boolean z) {
        return new ColorDrawable(z ? -8947849 : -1);
    }

    /* renamed from: c */
    public Drawable m7213c(boolean z) {
        return C12242z.m6562a(this.f27144o, this.f27143n, z ? this.f27152w : this.f27151v);
    }

    /* renamed from: c */
    public void m7214c() {
        Resources resources = this.f27144o.getResources();
        this.f27130a = resources.getDrawable(R$drawable.ch_sp_take);
        this.f27133d = resources.getDrawable(R$drawable.ch_down);
        this.f27132c = resources.getDrawable(R$drawable.ch_down);
        this.f27131b = resources.getDrawable(R$drawable.ch_sp_send);
        this.f27134e = resources.getDrawable(R$drawable.ch_down);
        this.f27135f = resources.getDrawable(R$drawable.ip_audio_1_play_btn);
        this.f27136g = resources.getDrawable(R$drawable.ip_audio_1_play_btn_stop);
        this.f27137h = resources.getDrawable(R$drawable.ip_audio_4_play_btn);
        this.f27138i = resources.getDrawable(R$drawable.ip_audio_4_play_btn_stop);
        this.f27139j = resources.getDrawable(R$drawable.app_incoming_audio_progress_bar_background);
        this.f27140k = resources.getDrawable(R$drawable.app_outgoing_audio_progress_bar_background);
        resources.getDrawable(R$drawable.audio_progress_bar_progress);
        resources.getDrawable(R$drawable.fastscroll_thumb);
        resources.getDrawable(R$drawable.fastscroll_thumb_pressed);
        resources.getDrawable(R$drawable.fastscroll_preview_left);
        resources.getDrawable(R$drawable.fastscroll_preview_right);
        this.f27146q = resources.getColor(R$color.app_message_tint_color_outgoing);
        this.f27145p = resources.getColor(R$color.app_message_tint_color_incoming);
        this.f27147r = resources.getColor(R$color.message_error_bubble_color_incoming);
        resources.getColor(R$color.message_audio_button_color_incoming);
        this.f27148s = resources.getColor(R$color.app_message_tint_color_selected);
        this.f27149t = resources.getColor(2131100157);
        this.f27150u = resources.getColor(R$color.app_media_picker_background_color);
        this.f27141l = resources.getDrawable(R$drawable.ch_down_icon);
        this.f27142m = resources.getDrawable(R$drawable.ch_downloading_icon);
        this.f27143n = resources.getDrawable(R$drawable.ch_down_fail_icon);
        this.f27151v = resources.getColor(R$color.app_message_download_icon_color);
        this.f27152w = resources.getColor(R$color.app_message_download_icon_selected_color);
    }

    /* renamed from: d */
    public Drawable m7211d(boolean z) {
        return C12242z.m6562a(this.f27144o, this.f27141l, z ? this.f27152w : this.f27151v);
    }

    /* renamed from: e */
    public Drawable m7210e(boolean z) {
        return C12242z.m6562a(this.f27144o, this.f27142m, z ? this.f27152w : this.f27151v);
    }

    /* renamed from: f */
    public Drawable m7209f(boolean z) {
        return z ? this.f27138i : this.f27136g;
    }

    /* renamed from: g */
    public Drawable m7208g(boolean z) {
        return z ? this.f27137h : this.f27135f;
    }
}
