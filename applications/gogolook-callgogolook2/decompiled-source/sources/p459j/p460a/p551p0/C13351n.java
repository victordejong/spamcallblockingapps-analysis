package p459j.p460a.p551p0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$integer;
import p459j.p460a.p582w0.C14217x3;
/* renamed from: j.a.p0.n */
/* loaded from: classes3-dex2jar.jar:j/a/p0/n.class */
public class C13351n {

    /* renamed from: A */
    public int f30031A;

    /* renamed from: B */
    public int f30032B;

    /* renamed from: C */
    public int f30033C;

    /* renamed from: D */
    public int f30034D;

    /* renamed from: E */
    public int f30035E;

    /* renamed from: F */
    public int f30036F;

    /* renamed from: G */
    public int f30037G;

    /* renamed from: H */
    public int f30038H;

    /* renamed from: I */
    public int f30039I;

    /* renamed from: J */
    public int f30040J;

    /* renamed from: K */
    public int f30041K;

    /* renamed from: L */
    public int f30042L;

    /* renamed from: M */
    public int f30043M;

    /* renamed from: N */
    public int f30044N;

    /* renamed from: O */
    public int f30045O;

    /* renamed from: P */
    public int f30046P;

    /* renamed from: Q */
    public int f30047Q;

    /* renamed from: R */
    public int f30048R;

    /* renamed from: S */
    public int f30049S;

    /* renamed from: T */
    public int f30050T;

    /* renamed from: U */
    public int f30051U;

    /* renamed from: V */
    public final Paint f30052V;

    /* renamed from: W */
    public final Paint f30053W;

    /* renamed from: a */
    public int f30054a;

    /* renamed from: b */
    public int f30055b;

    /* renamed from: c */
    public int f30056c;

    /* renamed from: d */
    public int f30057d;

    /* renamed from: e */
    public int f30058e;

    /* renamed from: f */
    public int f30059f;

    /* renamed from: g */
    public int f30060g;

    /* renamed from: h */
    public int f30061h;

    /* renamed from: i */
    public int f30062i;

    /* renamed from: j */
    public int f30063j;

    /* renamed from: k */
    public int f30064k;

    /* renamed from: l */
    public int f30065l;

    /* renamed from: m */
    public int f30066m;

    /* renamed from: n */
    public float f30067n;

    /* renamed from: o */
    public float f30068o;

    /* renamed from: p */
    public int f30069p;

    /* renamed from: q */
    public int f30070q;

    /* renamed from: r */
    public int f30071r;

    /* renamed from: s */
    public int f30072s;

    /* renamed from: t */
    public int f30073t;

    /* renamed from: u */
    public int f30074u;

    /* renamed from: v */
    public int f30075v;

    /* renamed from: w */
    public int f30076w;

    /* renamed from: x */
    public int f30077x;

    /* renamed from: y */
    public int f30078y;

    /* renamed from: z */
    public int f30079z;

    /* renamed from: j.a.p0.n$b */
    /* loaded from: classes3-dex2jar.jar:j/a/p0/n$b.class */
    public static class C13353b {

        /* renamed from: a */
        public static final C13351n f30080a = new C13351n();
    }

    public C13351n() {
        this.f30052V = new Paint();
        this.f30053W = new Paint();
        m4135a(MyApplication.m29013o());
    }

    /* renamed from: a */
    public static C13351n m4136a() {
        return C13353b.f30080a;
    }

    /* renamed from: a */
    public final void m4135a(Context context) {
        Resources resources = context.getResources();
        if (resources != null) {
            this.f30054a = resources.getDimensionPixelSize(R$dimen.search_map_button_height);
            this.f30055b = resources.getDimensionPixelSize(R$dimen.search_action_bar_height);
            this.f30056c = resources.getDimensionPixelSize(R$dimen.search_map_item_width);
            this.f30057d = resources.getDimensionPixelSize(R$dimen.search_map_item_height);
            this.f30058e = resources.getDimensionPixelSize(R$dimen.search_map_item_margin_left);
            this.f30059f = resources.getDimensionPixelSize(R$dimen.search_map_item_margin_right);
            this.f30060g = resources.getInteger(R$integer.search_map_item_rotation);
            this.f30061h = resources.getDimensionPixelSize(R$dimen.search_map_margin_left);
            this.f30062i = resources.getDimensionPixelSize(R$dimen.search_list_result_margin_top);
            this.f30063j = resources.getDimensionPixelSize(R$dimen.search_list_result_margin_left);
            this.f30064k = resources.getDimensionPixelSize(R$dimen.search_list_result_margin_right);
            this.f30065l = resources.getDimensionPixelSize(R$dimen.google_map_padding_left_right);
            this.f30066m = resources.getDimensionPixelSize(R$dimen.google_map_padding_bottom);
            int i = this.f30057d;
            int i2 = this.f30062i;
            this.f30067n = i + i2 + this.f30054a;
            this.f30068o = i + i2;
            this.f30072s = resources.getColor(2131100127);
            this.f30073t = resources.getColor(2131099954);
            this.f30069p = resources.getInteger(R$integer.label_text_size);
            this.f30070q = C14217x3.m2201a(this.f30069p);
            this.f30071r = C14217x3.m2201a(resources.getInteger(R$integer.text_paint_size));
            this.f30052V.setTextSize(this.f30070q);
            this.f30053W.setTextSize(this.f30071r);
            this.f30074u = resources.getDimensionPixelOffset(R$dimen.label_container_margin_top);
            this.f30075v = resources.getDimensionPixelSize(R$dimen.label_container_margin_left);
            this.f30076w = resources.getDimensionPixelSize(R$dimen.label_container_margin_bottom);
            this.f30077x = resources.getDimensionPixelSize(R$dimen.label_container_padding_left_right);
            this.f30078y = resources.getDimensionPixelSize(R$dimen.label_container_padding_top_bottom);
            this.f30079z = resources.getDimensionPixelSize(R$dimen.public_label_container_margin_left);
            resources.getDimensionPixelSize(R$dimen.trending_label_padding_left_right);
            this.f30031A = resources.getDimensionPixelSize(R$dimen.trending_label_padding_top);
            this.f30032B = resources.getDimensionPixelSize(R$dimen.trending_label_padding_bottom);
            this.f30033C = resources.getDimensionPixelOffset(R$dimen.trending_label_margin_bottom);
            this.f30034D = resources.getColor(2131100134);
            this.f30035E = resources.getInteger(R$integer.trending_label_text_size);
            this.f30036F = C14217x3.m2201a(this.f30035E);
            this.f30037G = resources.getInteger(R$integer.trending_title_text_size);
            this.f30038H = resources.getColor(2131100135);
            this.f30039I = resources.getDimensionPixelSize(R$dimen.favorite_times_margin_left);
            this.f30040J = resources.getDimensionPixelSize(R$dimen.info_margin_left);
            this.f30041K = resources.getDimensionPixelSize(R$dimen.call_width);
            this.f30042L = resources.getDimensionPixelSize(R$dimen.call_margin_right);
            this.f30043M = resources.getDimensionPixelSize(R$dimen.title_left_margin);
            this.f30044N = resources.getDimensionPixelSize(R$dimen.title_margin_top);
            this.f30045O = resources.getDimensionPixelOffset(R$dimen.auto_complete_margin_top);
            this.f30046P = resources.getDimensionPixelSize(R$dimen.metaphor_margin_left);
            this.f30047Q = resources.getDimensionPixelSize(R$dimen.metaphor_width);
            this.f30048R = resources.getDimensionPixelSize(R$dimen.horizontal_line_margin_top_bottom);
            this.f30049S = resources.getDimensionPixelOffset(R$dimen.default_map_padding);
            this.f30050T = resources.getDimensionPixelOffset(R$dimen.tab_height);
            this.f30051U = C14217x3.m2201a(12.0f);
        }
    }
}
