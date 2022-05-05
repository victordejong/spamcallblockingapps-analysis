package p081h.p093b.p099c.p103c;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import gogolook.callgogolook2.photo.SmsPhotoViewActivity;
import p081h.p093b.p099c.p103c.p105g.View$OnClickListenerC5644a;
/* renamed from: h.b.c.c.c */
/* loaded from: classes-dex2jar.jar:h/b/c/c/c.class */
public class C5623c {

    /* renamed from: h.b.c.c.c$b */
    /* loaded from: classes-dex2jar.jar:h/b/c/c/c$b.class */
    public static class C5625b {

        /* renamed from: a */
        public final Intent f14047a;

        /* renamed from: b */
        public int f14048b;

        /* renamed from: c */
        public Integer f14049c;

        /* renamed from: d */
        public String f14050d;

        /* renamed from: e */
        public String f14051e;

        /* renamed from: f */
        public String f14052f;

        /* renamed from: g */
        public String[] f14053g;

        /* renamed from: h */
        public String f14054h;

        /* renamed from: i */
        public Float f14055i;

        /* renamed from: j */
        public boolean f14056j;

        /* renamed from: k */
        public boolean f14057k;

        /* renamed from: l */
        public int f14058l;

        /* renamed from: m */
        public int f14059m;

        /* renamed from: n */
        public int f14060n;

        /* renamed from: o */
        public int f14061o;

        /* renamed from: p */
        public boolean f14062p;

        /* renamed from: q */
        public boolean f14063q;

        /* renamed from: r */
        public boolean f14064r;

        public C5625b(Context context, Class<?> cls) {
            this.f14047a = new Intent(context, cls);
            m24985b();
        }

        /* renamed from: a */
        public Intent m24989a() {
            this.f14047a.setAction("android.intent.action.VIEW");
            int i = this.f14048b;
            if (i != 0) {
                this.f14047a.setFlags(i);
            }
            Integer num = this.f14049c;
            if (num != null) {
                this.f14047a.putExtra("photo_index", num.intValue());
            }
            String str = this.f14050d;
            if (str != null) {
                this.f14047a.putExtra(SmsPhotoViewActivity.f12477m, str);
            }
            if (this.f14050d == null || this.f14049c == null) {
                String str2 = this.f14051e;
                if (str2 != null) {
                    this.f14047a.putExtra(SmsPhotoViewActivity.f12478n, str2);
                    this.f14047a.setData(Uri.parse(this.f14051e));
                }
                String str3 = this.f14052f;
                if (str3 != null) {
                    this.f14047a.putExtra("resolved_photo_uri", str3);
                }
                String[] strArr = this.f14053g;
                if (strArr != null) {
                    this.f14047a.putExtra(SmsPhotoViewActivity.f12480p, strArr);
                }
                String str4 = this.f14054h;
                if (str4 != null) {
                    this.f14047a.putExtra("thumbnail_uri", str4);
                }
                Float f = this.f14055i;
                if (f != null) {
                    this.f14047a.putExtra("max_scale", f);
                }
                this.f14047a.putExtra("watch_network", this.f14056j);
                this.f14047a.putExtra("scale_up_animation", this.f14057k);
                if (this.f14057k) {
                    this.f14047a.putExtra("start_x_extra", this.f14058l);
                    this.f14047a.putExtra("start_y_extra", this.f14059m);
                    this.f14047a.putExtra("start_width_extra", this.f14060n);
                    this.f14047a.putExtra("start_height_extra", this.f14061o);
                }
                this.f14047a.putExtra("action_bar_hidden_initially", this.f14062p);
                this.f14047a.putExtra("display_thumbs_fullscreen", this.f14063q);
                this.f14047a.putExtra("need_option_menu", this.f14064r);
                return this.f14047a;
            }
            throw new IllegalStateException("specified both photo index and photo uri");
        }

        /* renamed from: a */
        public C5625b m24988a(float f) {
            this.f14055i = Float.valueOf(f);
            return this;
        }

        /* renamed from: a */
        public C5625b m24987a(String str) {
            this.f14052f = str;
            return this;
        }

        /* renamed from: a */
        public C5625b m24986a(boolean z) {
            this.f14063q = z;
            return this;
        }

        /* renamed from: b */
        public C5625b m24984b(String str) {
            this.f14054h = str;
            return this;
        }

        /* renamed from: b */
        public final void m24985b() {
            this.f14057k = false;
            this.f14062p = false;
            this.f14063q = false;
            this.f14064r = true;
        }
    }

    /* renamed from: a */
    public static C5625b m24990a(Context context, Class<? extends View$OnClickListenerC5644a> cls) {
        return new C5625b(context, cls);
    }
}
