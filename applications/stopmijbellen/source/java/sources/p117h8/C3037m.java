package p117h8;

import android.support.p012v4.media.AbstractC0081a;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.raizlabs.android.dbflow.config.AbstractC2116c;
import com.raizlabs.android.dbflow.config.AbstractC2117d;
import com.raizlabs.android.dbflow.config.FlowManager;
import java.sql.Date;
import p010a9.C0044a;
import p010a9.C0045b;
import p024b9.AbstractC0744d;
import p034c9.AbstractC0859f;
import p034c9.C0860g;
import p124i4.C3102d;
import p235s8.AbstractC4332g;
import p235s8.C4331f;
import p278w8.C4776g;
import p278w8.C4785l;
import p278w8.C4791r;
import p289x8.AbstractC4932a;
import p289x8.C4933b;
import p289x8.C4934c;
/* renamed from: h8.m */
/* loaded from: classes2-dex2jar.jar:h8/m.class */
public final class C3037m extends AbstractC0744d<C3036l> {

    /* renamed from: A */
    public static final C4933b<Boolean> f10285A;

    /* renamed from: B */
    public static final AbstractC4932a[] f10286B;

    /* renamed from: g */
    public static final C4933b<Integer> f10287g;

    /* renamed from: h */
    public static final C4933b<String> f10288h;

    /* renamed from: i */
    public static final C4933b<Integer> f10289i;

    /* renamed from: j */
    public static final C4934c<Long, Date> f10290j;

    /* renamed from: k */
    public static final C4933b<Integer> f10291k;

    /* renamed from: l */
    public static final C4933b<String> f10292l;

    /* renamed from: m */
    public static final C4933b<String> f10293m;

    /* renamed from: n */
    public static final C4933b<Integer> f10294n;

    /* renamed from: o */
    public static final C4933b<Boolean> f10295o;

    /* renamed from: p */
    public static final C4933b<Boolean> f10296p;

    /* renamed from: q */
    public static final C4933b<Boolean> f10297q;

    /* renamed from: r */
    public static final C4933b<Integer> f10298r;

    /* renamed from: s */
    public static final C4933b<Boolean> f10299s;

    /* renamed from: t */
    public static final C4933b<Boolean> f10300t;

    /* renamed from: u */
    public static final C4933b<Boolean> f10301u;

    /* renamed from: v */
    public static final C4933b<Integer> f10302v;

    /* renamed from: w */
    public static final C4933b<Boolean> f10303w;

    /* renamed from: x */
    public static final C4933b<Boolean> f10304x;

    /* renamed from: y */
    public static final C4933b<Boolean> f10305y;

    /* renamed from: z */
    public static final C4933b<String> f10306z;

    /* renamed from: f */
    public final C4331f f10307f;

    /* renamed from: h8.m$a */
    /* loaded from: classes2-dex2jar.jar:h8/m$a.class */
    public class C3038a implements C4934c.AbstractC4935a {
        @Override // p289x8.C4934c.AbstractC4935a
        /* renamed from: a */
        public AbstractC4332g mo229a(Class<?> cls) {
            return ((C3037m) FlowManager.m3907f(cls)).f10307f;
        }
    }

    /* renamed from: h8.m$b */
    /* loaded from: classes2-dex2jar.jar:h8/m$b.class */
    public class C3039b implements C4934c.AbstractC4935a {
        @Override // p289x8.C4934c.AbstractC4935a
        /* renamed from: a */
        public AbstractC4332g mo229a(Class<?> cls) {
            return ((C3037m) FlowManager.m3907f(cls)).f10307f;
        }
    }

    static {
        C4933b<Integer> c4933b = new C4933b<>(C3036l.class, FacebookAdapter.KEY_ID);
        f10287g = c4933b;
        C4933b<String> c4933b2 = new C4933b<>(C3036l.class, "number");
        f10288h = c4933b2;
        C4933b<Integer> c4933b3 = new C4933b<>(C3036l.class, "receiver_result");
        f10289i = c4933b3;
        C4934c<Long, Date> c4934c = new C4934c<>(C3036l.class, "receiver_date", true, new C3038a());
        f10290j = c4934c;
        C4933b c4933b4 = new C4933b(C3036l.class, "receiver_simno");
        C4933b<Integer> c4933b5 = new C4933b<>(C3036l.class, "call_log_id");
        f10291k = c4933b5;
        C4933b<String> c4933b6 = new C4933b<>(C3036l.class, "call_log_name");
        f10292l = c4933b6;
        C4934c c4934c2 = new C4934c(C3036l.class, "call_log_date", true, new C3039b());
        C4933b c4933b7 = new C4933b(C3036l.class, "call_log_type");
        C4933b c4933b8 = new C4933b(C3036l.class, "call_log_duration");
        C4933b c4933b9 = new C4933b(C3036l.class, "call_log_country_iso");
        C4933b c4933b10 = new C4933b(C3036l.class, "set_need_delete");
        C4933b c4933b11 = new C4933b(C3036l.class, "set_use_db");
        C4933b c4933b12 = new C4933b(C3036l.class, "set_use_bl");
        C4933b c4933b13 = new C4933b(C3036l.class, "set_use_wl");
        C4933b c4933b14 = new C4933b(C3036l.class, "set_use_foreign");
        C4933b c4933b15 = new C4933b(C3036l.class, "set_use_contacts");
        C4933b c4933b16 = new C4933b(C3036l.class, "set_use_hidden");
        C4933b c4933b17 = new C4933b(C3036l.class, "set_foreground_service");
        C4933b c4933b18 = new C4933b(C3036l.class, "set_pick_up");
        C4933b<String> c4933b19 = new C4933b<>(C3036l.class, "image_uri");
        f10293m = c4933b19;
        C4933b c4933b20 = new C4933b(C3036l.class, "call_check_time");
        C4933b c4933b21 = new C4933b(C3036l.class, "call_memory_check");
        C4933b c4933b22 = new C4933b(C3036l.class, "debug");
        C4933b c4933b23 = new C4933b(C3036l.class, "last_db_check");
        C4933b<Integer> c4933b24 = new C4933b<>(C3036l.class, "invisible");
        f10294n = c4933b24;
        C4933b<Boolean> c4933b25 = new C4933b<>(C3036l.class, "set_block_all_except_contacts");
        f10295o = c4933b25;
        C4933b<Boolean> c4933b26 = new C4933b<>(C3036l.class, "set_silence_ringer");
        f10296p = c4933b26;
        C4933b c4933b27 = new C4933b(C3036l.class, "endcall_result");
        C4933b c4933b28 = new C4933b(C3036l.class, "appvc");
        C4933b<Boolean> c4933b29 = new C4933b<>(C3036l.class, "set_block_all_except_whitelist");
        f10297q = c4933b29;
        C4933b<Integer> c4933b30 = new C4933b<>(C3036l.class, "preset");
        f10298r = c4933b30;
        C4933b<Boolean> c4933b31 = new C4933b<>(C3036l.class, "set_use_calendar");
        f10299s = c4933b31;
        C4933b c4933b32 = new C4933b(C3036l.class, "calendar");
        C4933b<Boolean> c4933b33 = new C4933b<>(C3036l.class, "set_use_sim1");
        f10300t = c4933b33;
        C4933b<Boolean> c4933b34 = new C4933b<>(C3036l.class, "set_use_sim2");
        f10301u = c4933b34;
        C4933b<Integer> c4933b35 = new C4933b<>(C3036l.class, "blockmethod");
        f10302v = c4933b35;
        C4933b<Boolean> c4933b36 = new C4933b<>(C3036l.class, "dnd");
        f10303w = c4933b36;
        C4933b<Boolean> c4933b37 = new C4933b<>(C3036l.class, "system_vibrate");
        f10304x = c4933b37;
        C4933b<Boolean> c4933b38 = new C4933b<>(C3036l.class, "set_second_call");
        f10305y = c4933b38;
        C4933b<String> c4933b39 = new C4933b<>(C3036l.class, "feedbackName");
        f10306z = c4933b39;
        C4933b c4933b40 = new C4933b(C3036l.class, "realCallLogName");
        C4933b c4933b41 = new C4933b(C3036l.class, "isDefaultPhoneApp");
        C4933b c4933b42 = new C4933b(C3036l.class, "defaultPhoneAppOption");
        C4933b<Boolean> c4933b43 = new C4933b<>(C3036l.class, "feedbackChecked");
        f10285A = c4933b43;
        f10286B = new AbstractC4932a[]{c4933b, c4933b2, c4933b3, c4934c, c4933b4, c4933b5, c4933b6, c4934c2, c4933b7, c4933b8, c4933b9, c4933b10, c4933b11, c4933b12, c4933b13, c4933b14, c4933b15, c4933b16, c4933b17, c4933b18, c4933b19, c4933b20, c4933b21, c4933b22, c4933b23, c4933b24, c4933b25, c4933b26, c4933b27, c4933b28, c4933b29, c4933b30, c4933b31, c4933b32, c4933b33, c4933b34, c4933b35, c4933b36, c4933b37, c4933b38, c4933b39, c4933b40, c4933b41, c4933b42, c4933b43};
    }

    public C3037m(AbstractC2117d abstractC2117d, AbstractC2116c abstractC2116c) {
        super(abstractC2116c);
        this.f10307f = (C4331f) abstractC2117d.getTypeConverterForClass(Date.class);
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: a */
    public boolean mo2691a(Object obj, AbstractC0859f abstractC0859f) {
        C3036l c3036l = (C3036l) obj;
        boolean z = true;
        if (c3036l.f10260b <= 0 || !new C4791r(new C4776g(C3102d.m2646F(new AbstractC4932a[0]), C3036l.class), mo2689c(c3036l)).m479g(abstractC0859f)) {
            z = false;
        }
        return z;
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: b */
    public final Class<C3036l> mo2690b() {
        return C3036l.class;
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: d */
    public void mo2688d(C0860g c0860g, Object obj) {
        C3036l c3036l = (C3036l) obj;
        c3036l.f10260b = c0860g.m7250k(FacebookAdapter.KEY_ID);
        c3036l.f10261c = c0860g.m7247p("number");
        c3036l.f10262d = c0860g.m7249l("receiver_result", null);
        int columnIndex = c0860g.getColumnIndex("receiver_date");
        if (columnIndex == -1 || c0860g.isNull(columnIndex)) {
            c3036l.f10263e = this.f10307f.m1096c(null);
        } else {
            c3036l.f10263e = this.f10307f.m1096c(Long.valueOf(c0860g.getLong(columnIndex)));
        }
        c3036l.f10264f = c0860g.m7249l("receiver_simno", null);
        c3036l.f10265g = c0860g.m7249l("call_log_id", null);
        c3036l.f10266h = c0860g.m7247p("call_log_name");
        int columnIndex2 = c0860g.getColumnIndex("call_log_date");
        if (columnIndex2 == -1 || c0860g.isNull(columnIndex2)) {
            c3036l.f10267i = this.f10307f.m1096c(null);
        } else {
            c3036l.f10267i = this.f10307f.m1096c(Long.valueOf(c0860g.getLong(columnIndex2)));
        }
        c3036l.f10268j = c0860g.m7249l("call_log_type", null);
        c3036l.f10269k = c0860g.m7249l("call_log_duration", null);
        c3036l.f10270l = c0860g.m7247p("call_log_country_iso");
        int columnIndex3 = c0860g.getColumnIndex("set_need_delete");
        if (columnIndex3 == -1 || c0860g.isNull(columnIndex3)) {
            c3036l.f10271m = false;
        } else {
            c3036l.f10271m = c0860g.m7251d(columnIndex3);
        }
        int columnIndex4 = c0860g.getColumnIndex("set_use_db");
        if (columnIndex4 == -1 || c0860g.isNull(columnIndex4)) {
            c3036l.f10272n = false;
        } else {
            c3036l.f10272n = c0860g.m7251d(columnIndex4);
        }
        int columnIndex5 = c0860g.getColumnIndex("set_use_bl");
        if (columnIndex5 == -1 || c0860g.isNull(columnIndex5)) {
            c3036l.f10273o = false;
        } else {
            c3036l.f10273o = c0860g.m7251d(columnIndex5);
        }
        int columnIndex6 = c0860g.getColumnIndex("set_use_wl");
        if (columnIndex6 == -1 || c0860g.isNull(columnIndex6)) {
            c3036l.f10274p = false;
        } else {
            c3036l.f10274p = c0860g.m7251d(columnIndex6);
        }
        int columnIndex7 = c0860g.getColumnIndex("set_use_foreign");
        if (columnIndex7 == -1 || c0860g.isNull(columnIndex7)) {
            c3036l.f10275q = false;
        } else {
            c3036l.f10275q = c0860g.m7251d(columnIndex7);
        }
        int columnIndex8 = c0860g.getColumnIndex("set_use_contacts");
        if (columnIndex8 == -1 || c0860g.isNull(columnIndex8)) {
            c3036l.f10276r = false;
        } else {
            c3036l.f10276r = c0860g.m7251d(columnIndex8);
        }
        int columnIndex9 = c0860g.getColumnIndex("set_use_hidden");
        if (columnIndex9 == -1 || c0860g.isNull(columnIndex9)) {
            c3036l.f10277s = false;
        } else {
            c3036l.f10277s = c0860g.m7251d(columnIndex9);
        }
        int columnIndex10 = c0860g.getColumnIndex("set_foreground_service");
        if (columnIndex10 == -1 || c0860g.isNull(columnIndex10)) {
            c3036l.f10278t = false;
        } else {
            c3036l.f10278t = c0860g.m7251d(columnIndex10);
        }
        int columnIndex11 = c0860g.getColumnIndex("set_pick_up");
        if (columnIndex11 == -1 || c0860g.isNull(columnIndex11)) {
            c3036l.f10279u = false;
        } else {
            c3036l.f10279u = c0860g.m7251d(columnIndex11);
        }
        c3036l.f10280v = c0860g.m7247p("image_uri");
        c3036l.f10281w = c0860g.m7248o("call_check_time");
        int columnIndex12 = c0860g.getColumnIndex("call_memory_check");
        if (columnIndex12 == -1 || c0860g.isNull(columnIndex12)) {
            c3036l.f10282x = false;
        } else {
            c3036l.f10282x = c0860g.m7251d(columnIndex12);
        }
        c3036l.f10283y = c0860g.m7247p("debug");
        c3036l.f10284z = c0860g.m7248o("last_db_check");
        c3036l.f10240A = c0860g.m7250k("invisible");
        int columnIndex13 = c0860g.getColumnIndex("set_block_all_except_contacts");
        if (columnIndex13 == -1 || c0860g.isNull(columnIndex13)) {
            c3036l.f10241B = false;
        } else {
            c3036l.f10241B = c0860g.m7251d(columnIndex13);
        }
        int columnIndex14 = c0860g.getColumnIndex("set_silence_ringer");
        if (columnIndex14 == -1 || c0860g.isNull(columnIndex14)) {
            c3036l.f10242C = false;
        } else {
            c3036l.f10242C = c0860g.m7251d(columnIndex14);
        }
        c3036l.f10243D = c0860g.m7247p("endcall_result");
        c3036l.f10244E = c0860g.m7250k("appvc");
        int columnIndex15 = c0860g.getColumnIndex("set_block_all_except_whitelist");
        if (columnIndex15 == -1 || c0860g.isNull(columnIndex15)) {
            c3036l.f10245F = false;
        } else {
            c3036l.f10245F = c0860g.m7251d(columnIndex15);
        }
        c3036l.f10246G = c0860g.m7250k("preset");
        int columnIndex16 = c0860g.getColumnIndex("set_use_calendar");
        if (columnIndex16 == -1 || c0860g.isNull(columnIndex16)) {
            c3036l.f10247H = false;
        } else {
            c3036l.f10247H = c0860g.m7251d(columnIndex16);
        }
        c3036l.f10248I = c0860g.m7247p("calendar");
        int columnIndex17 = c0860g.getColumnIndex("set_use_sim1");
        if (columnIndex17 == -1 || c0860g.isNull(columnIndex17)) {
            c3036l.f10249J = false;
        } else {
            c3036l.f10249J = c0860g.m7251d(columnIndex17);
        }
        int columnIndex18 = c0860g.getColumnIndex("set_use_sim2");
        if (columnIndex18 == -1 || c0860g.isNull(columnIndex18)) {
            c3036l.f10250K = false;
        } else {
            c3036l.f10250K = c0860g.m7251d(columnIndex18);
        }
        c3036l.f10251L = c0860g.m7250k("blockmethod");
        int columnIndex19 = c0860g.getColumnIndex("dnd");
        if (columnIndex19 == -1 || c0860g.isNull(columnIndex19)) {
            c3036l.f10252M = false;
        } else {
            c3036l.f10252M = c0860g.m7251d(columnIndex19);
        }
        int columnIndex20 = c0860g.getColumnIndex("system_vibrate");
        if (columnIndex20 == -1 || c0860g.isNull(columnIndex20)) {
            c3036l.f10253N = false;
        } else {
            c3036l.f10253N = c0860g.m7251d(columnIndex20);
        }
        int columnIndex21 = c0860g.getColumnIndex("set_second_call");
        if (columnIndex21 == -1 || c0860g.isNull(columnIndex21)) {
            c3036l.f10254O = false;
        } else {
            c3036l.f10254O = c0860g.m7251d(columnIndex21);
        }
        c3036l.f10255P = c0860g.m7247p("feedbackName");
        c3036l.f10256Q = c0860g.m7247p("realCallLogName");
        int columnIndex22 = c0860g.getColumnIndex("isDefaultPhoneApp");
        if (columnIndex22 == -1 || c0860g.isNull(columnIndex22)) {
            c3036l.f10257R = false;
        } else {
            c3036l.f10257R = c0860g.m7251d(columnIndex22);
        }
        int columnIndex23 = c0860g.getColumnIndex("defaultPhoneAppOption");
        if (columnIndex23 == -1 || c0860g.isNull(columnIndex23)) {
            c3036l.f10258S = false;
        } else {
            c3036l.f10258S = c0860g.m7251d(columnIndex23);
        }
        int columnIndex24 = c0860g.getColumnIndex("feedbackChecked");
        if (columnIndex24 == -1 || c0860g.isNull(columnIndex24)) {
            c3036l.f10259T = false;
        } else {
            c3036l.f10259T = c0860g.m7251d(columnIndex24);
        }
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: e */
    public Object mo2687e() {
        return new C3036l();
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: g */
    public void mo2685g(AbstractC0081a abstractC0081a, C3036l c3036l) {
        C3036l c3036l2 = c3036l;
        abstractC0081a.mo7274g(1, c3036l2.f10260b);
        mo2686f(abstractC0081a, c3036l2, 1);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: h */
    public void mo2684h(AbstractC0081a abstractC0081a, Object obj) {
        C3036l c3036l = (C3036l) obj;
        abstractC0081a.mo7274g(1, c3036l.f10260b);
        abstractC0081a.m8764k(2, c3036l.f10261c);
        abstractC0081a.m8765i(3, c3036l.f10262d);
        Date date = c3036l.f10263e;
        abstractC0081a.m8765i(4, date != null ? this.f10307f.mo1095a(date) : null);
        abstractC0081a.m8765i(5, c3036l.f10264f);
        abstractC0081a.m8765i(6, c3036l.f10265g);
        abstractC0081a.m8764k(7, c3036l.f10266h);
        Date date2 = c3036l.f10267i;
        Long l = null;
        if (date2 != null) {
            l = this.f10307f.mo1095a(date2);
        }
        abstractC0081a.m8765i(8, l);
        abstractC0081a.m8765i(9, c3036l.f10268j);
        abstractC0081a.m8765i(10, c3036l.f10269k);
        abstractC0081a.m8764k(11, c3036l.f10270l);
        abstractC0081a.mo7274g(12, (c3036l.f10271m ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(13, (c3036l.f10272n ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(14, (c3036l.f10273o ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(15, (c3036l.f10274p ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(16, (c3036l.f10275q ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(17, (c3036l.f10276r ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(18, (c3036l.f10277s ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(19, (c3036l.f10278t ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(20, (c3036l.f10279u ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.m8764k(21, c3036l.f10280v);
        abstractC0081a.mo7274g(22, c3036l.f10281w);
        abstractC0081a.mo7274g(23, (c3036l.f10282x ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.m8764k(24, c3036l.f10283y);
        abstractC0081a.mo7274g(25, c3036l.f10284z);
        abstractC0081a.mo7274g(26, c3036l.f10240A);
        abstractC0081a.mo7274g(27, (c3036l.f10241B ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(28, (c3036l.f10242C ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.m8764k(29, c3036l.f10243D);
        abstractC0081a.mo7274g(30, c3036l.f10244E);
        abstractC0081a.mo7274g(31, (c3036l.f10245F ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(32, c3036l.f10246G);
        abstractC0081a.mo7274g(33, (c3036l.f10247H ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.m8764k(34, c3036l.f10248I);
        abstractC0081a.mo7274g(35, (c3036l.f10249J ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(36, (c3036l.f10250K ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(37, c3036l.f10251L);
        abstractC0081a.mo7274g(38, (c3036l.f10252M ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(39, (c3036l.f10253N ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(40, (c3036l.f10254O ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.m8764k(41, c3036l.f10255P);
        abstractC0081a.m8764k(42, c3036l.f10256Q);
        abstractC0081a.mo7274g(43, (c3036l.f10257R ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(44, (c3036l.f10258S ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(45, (c3036l.f10259T ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(46, c3036l.f10260b);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: i */
    public final C0045b<C3036l> mo2683i() {
        return new C0044a();
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: j */
    public Number mo2682j(C3036l c3036l) {
        return Integer.valueOf(c3036l.f10260b);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: k */
    public final String mo2681k() {
        return "INSERT INTO `Logs`(`id`,`number`,`receiver_result`,`receiver_date`,`receiver_simno`,`call_log_id`,`call_log_name`,`call_log_date`,`call_log_type`,`call_log_duration`,`call_log_country_iso`,`set_need_delete`,`set_use_db`,`set_use_bl`,`set_use_wl`,`set_use_foreign`,`set_use_contacts`,`set_use_hidden`,`set_foreground_service`,`set_pick_up`,`image_uri`,`call_check_time`,`call_memory_check`,`debug`,`last_db_check`,`invisible`,`set_block_all_except_contacts`,`set_silence_ringer`,`endcall_result`,`appvc`,`set_block_all_except_whitelist`,`preset`,`set_use_calendar`,`calendar`,`set_use_sim1`,`set_use_sim2`,`blockmethod`,`dnd`,`system_vibrate`,`set_second_call`,`feedbackName`,`realCallLogName`,`isDefaultPhoneApp`,`defaultPhoneAppOption`,`feedbackChecked`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: l */
    public final String mo2680l() {
        return "CREATE TABLE IF NOT EXISTS `Logs`(`id` INTEGER PRIMARY KEY AUTOINCREMENT, `number` TEXT, `receiver_result` INTEGER, `receiver_date` INTEGER, `receiver_simno` INTEGER, `call_log_id` INTEGER, `call_log_name` TEXT, `call_log_date` INTEGER, `call_log_type` INTEGER, `call_log_duration` INTEGER, `call_log_country_iso` TEXT, `set_need_delete` INTEGER, `set_use_db` INTEGER, `set_use_bl` INTEGER, `set_use_wl` INTEGER, `set_use_foreign` INTEGER, `set_use_contacts` INTEGER, `set_use_hidden` INTEGER, `set_foreground_service` INTEGER, `set_pick_up` INTEGER, `image_uri` TEXT, `call_check_time` INTEGER, `call_memory_check` INTEGER, `debug` TEXT, `last_db_check` INTEGER, `invisible` INTEGER, `set_block_all_except_contacts` INTEGER, `set_silence_ringer` INTEGER, `endcall_result` TEXT, `appvc` INTEGER, `set_block_all_except_whitelist` INTEGER, `preset` INTEGER, `set_use_calendar` INTEGER, `calendar` TEXT, `set_use_sim1` INTEGER, `set_use_sim2` INTEGER, `blockmethod` INTEGER, `dnd` INTEGER, `system_vibrate` INTEGER, `set_second_call` INTEGER, `feedbackName` TEXT, `realCallLogName` TEXT, `isDefaultPhoneApp` INTEGER, `defaultPhoneAppOption` INTEGER, `feedbackChecked` INTEGER)";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: m */
    public final String mo2679m() {
        return "INSERT INTO `Logs`(`number`,`receiver_result`,`receiver_date`,`receiver_simno`,`call_log_id`,`call_log_name`,`call_log_date`,`call_log_type`,`call_log_duration`,`call_log_country_iso`,`set_need_delete`,`set_use_db`,`set_use_bl`,`set_use_wl`,`set_use_foreign`,`set_use_contacts`,`set_use_hidden`,`set_foreground_service`,`set_pick_up`,`image_uri`,`call_check_time`,`call_memory_check`,`debug`,`last_db_check`,`invisible`,`set_block_all_except_contacts`,`set_silence_ringer`,`endcall_result`,`appvc`,`set_block_all_except_whitelist`,`preset`,`set_use_calendar`,`calendar`,`set_use_sim1`,`set_use_sim2`,`blockmethod`,`dnd`,`system_vibrate`,`set_second_call`,`feedbackName`,`realCallLogName`,`isDefaultPhoneApp`,`defaultPhoneAppOption`,`feedbackChecked`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: n */
    public final String mo2678n() {
        return "`Logs`";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: p */
    public final String mo2677p() {
        return "UPDATE `Logs` SET `id`=?,`number`=?,`receiver_result`=?,`receiver_date`=?,`receiver_simno`=?,`call_log_id`=?,`call_log_name`=?,`call_log_date`=?,`call_log_type`=?,`call_log_duration`=?,`call_log_country_iso`=?,`set_need_delete`=?,`set_use_db`=?,`set_use_bl`=?,`set_use_wl`=?,`set_use_foreign`=?,`set_use_contacts`=?,`set_use_hidden`=?,`set_foreground_service`=?,`set_pick_up`=?,`image_uri`=?,`call_check_time`=?,`call_memory_check`=?,`debug`=?,`last_db_check`=?,`invisible`=?,`set_block_all_except_contacts`=?,`set_silence_ringer`=?,`endcall_result`=?,`appvc`=?,`set_block_all_except_whitelist`=?,`preset`=?,`set_use_calendar`=?,`calendar`=?,`set_use_sim1`=?,`set_use_sim2`=?,`blockmethod`=?,`dnd`=?,`system_vibrate`=?,`set_second_call`=?,`feedbackName`=?,`realCallLogName`=?,`isDefaultPhoneApp`=?,`defaultPhoneAppOption`=?,`feedbackChecked`=? WHERE `id`=?";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: s */
    public void mo2676s(C3036l c3036l, Number number) {
        c3036l.f10260b = number.intValue();
    }

    /* renamed from: t */
    public final void mo2686f(AbstractC0081a abstractC0081a, C3036l c3036l, int i) {
        abstractC0081a.m8764k(i + 1, c3036l.f10261c);
        abstractC0081a.m8765i(i + 2, c3036l.f10262d);
        Date date = c3036l.f10263e;
        abstractC0081a.m8765i(i + 3, date != null ? this.f10307f.mo1095a(date) : null);
        abstractC0081a.m8765i(i + 4, c3036l.f10264f);
        abstractC0081a.m8765i(i + 5, c3036l.f10265g);
        abstractC0081a.m8764k(i + 6, c3036l.f10266h);
        Date date2 = c3036l.f10267i;
        Long l = null;
        if (date2 != null) {
            l = this.f10307f.mo1095a(date2);
        }
        abstractC0081a.m8765i(i + 7, l);
        abstractC0081a.m8765i(i + 8, c3036l.f10268j);
        abstractC0081a.m8765i(i + 9, c3036l.f10269k);
        abstractC0081a.m8764k(i + 10, c3036l.f10270l);
        abstractC0081a.mo7274g(i + 11, (c3036l.f10271m ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(i + 12, (c3036l.f10272n ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(i + 13, (c3036l.f10273o ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(i + 14, (c3036l.f10274p ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(i + 15, (c3036l.f10275q ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(i + 16, (c3036l.f10276r ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(i + 17, (c3036l.f10277s ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(i + 18, (c3036l.f10278t ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(i + 19, (c3036l.f10279u ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.m8764k(i + 20, c3036l.f10280v);
        abstractC0081a.mo7274g(i + 21, c3036l.f10281w);
        abstractC0081a.mo7274g(i + 22, (c3036l.f10282x ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.m8764k(i + 23, c3036l.f10283y);
        abstractC0081a.mo7274g(i + 24, c3036l.f10284z);
        abstractC0081a.mo7274g(i + 25, c3036l.f10240A);
        abstractC0081a.mo7274g(i + 26, (c3036l.f10241B ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(i + 27, (c3036l.f10242C ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.m8764k(i + 28, c3036l.f10243D);
        abstractC0081a.mo7274g(i + 29, c3036l.f10244E);
        abstractC0081a.mo7274g(i + 30, (c3036l.f10245F ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(i + 31, c3036l.f10246G);
        abstractC0081a.mo7274g(i + 32, (c3036l.f10247H ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.m8764k(i + 33, c3036l.f10248I);
        abstractC0081a.mo7274g(i + 34, (c3036l.f10249J ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(i + 35, (c3036l.f10250K ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(i + 36, c3036l.f10251L);
        abstractC0081a.mo7274g(i + 37, (c3036l.f10252M ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(i + 38, (c3036l.f10253N ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(i + 39, (c3036l.f10254O ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.m8764k(i + 40, c3036l.f10255P);
        abstractC0081a.m8764k(i + 41, c3036l.f10256Q);
        abstractC0081a.mo7274g(i + 42, (c3036l.f10257R ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(i + 43, (c3036l.f10258S ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(i + 44, (c3036l.f10259T ? 1 : null) == 1 ? 1L : 0L);
    }

    /* renamed from: u */
    public final C4785l mo2689c(C3036l c3036l) {
        C4785l c4785l = new C4785l();
        c4785l.m467k("AND", f10287g.m239a(Integer.valueOf(c3036l.f10260b)));
        return c4785l;
    }
}
