package p459j.p460a.p582w0.p590x4.p592b0;

import androidx.annotation.NonNull;
import p459j.p460a.p582w0.p590x4.C14296p;
/* renamed from: j.a.w0.x4.b0.a */
/* loaded from: classes3-dex2jar.jar:j/a/w0/x4/b0/a.class */
public class C14241a {

    /* renamed from: a */
    public String f31791a;

    /* renamed from: b */
    public String f31792b;

    /* renamed from: c */
    public EnumC14244c f31793c;

    /* renamed from: d */
    public EnumC14243b f31794d = null;

    /* renamed from: e */
    public String f31795e = null;

    /* renamed from: f */
    public String f31796f = null;

    /* renamed from: g */
    public String f31797g = null;

    /* renamed from: h */
    public String f31798h = null;

    /* renamed from: i */
    public String f31799i;

    /* renamed from: j.a.w0.x4.b0.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/b0/a$a.class */
    public static /* synthetic */ class C14242a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f31800a = new int[EnumC14243b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            try {
                f31800a[EnumC14243b.View.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31800a[EnumC14243b.Close.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31800a[EnumC14243b.EnterTag.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31800a[EnumC14243b.ReportAsSpam.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31800a[EnumC14243b.ChooseSpamCategory.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31800a[EnumC14243b.ReviseTag.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31800a[EnumC14243b.ReportTagDone.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f31800a[EnumC14243b.ReportSpamDone.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f31800a[EnumC14243b.ReportNotSpamWithoutTag.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* renamed from: j.a.w0.x4.b0.a$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/b0/a$b.class */
    public enum EnumC14243b {
        View,
        Close,
        Confirm,
        Revise,
        Spam,
        Block,
        Tag,
        NotSpam,
        Yes,
        No,
        EnterTag,
        ReportAsSpam,
        ChooseSpamCategory,
        ReviseTag,
        ReviseTagAndSpam,
        Delete,
        AddContact,
        EnterNdp,
        CallBack,
        ReportTagDone,
        ReportSpamDone,
        ReportTagAndSpamDone,
        ReportBlockDone,
        ReportNotSpamWithoutTag
    }

    /* renamed from: j.a.w0.x4.b0.a$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/b0/a$c.class */
    public enum EnumC14244c {
        ConfirmTag,
        ConfirmSpam,
        ConfirmTagAndSpam,
        Direct,
        QuestionSpam,
        QuestionInfo,
        QuestionSuggestSpam,
        QuestionSuggestInfo,
        QuestionDiffInfo,
        MissCallEnd,
        MainAction,
        Direct2Level,
        Direct2Level2,
        Ndp,
        CallLogContextMenu,
        SMSLogContextMenu
    }

    public C14241a(String str, String str2, EnumC14244c cVar, String str3) {
        this.f31791a = null;
        this.f31792b = null;
        this.f31793c = null;
        this.f31791a = str;
        this.f31792b = str2;
        this.f31793c = cVar;
        this.f31799i = str3;
    }

    /* renamed from: a */
    public final void m2085a() {
        this.f31791a = null;
        this.f31792b = null;
        this.f31793c = null;
        this.f31794d = null;
        this.f31795e = null;
        this.f31796f = null;
        this.f31797g = null;
        this.f31798h = null;
    }

    /* renamed from: a */
    public void m2084a(@NonNull EnumC14243b bVar) {
        EnumC14243b bVar2 = this.f31794d;
        if (bVar2 == null) {
            this.f31794d = bVar;
        } else if ((bVar2 == EnumC14243b.ChooseSpamCategory && bVar == EnumC14243b.ReviseTag) || (this.f31794d == EnumC14243b.ReviseTag && bVar == EnumC14243b.ChooseSpamCategory)) {
            this.f31794d = EnumC14243b.ReviseTagAndSpam;
        } else if ((this.f31794d == EnumC14243b.ReportTagDone && bVar == EnumC14243b.ReportSpamDone) || (this.f31794d == EnumC14243b.ReportSpamDone && bVar == EnumC14243b.ReportTagDone)) {
            this.f31794d = EnumC14243b.ReportTagAndSpamDone;
        } else {
            switch (C14242a.f31800a[bVar.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                    if (bVar.ordinal() > this.f31794d.ordinal()) {
                        this.f31794d = bVar;
                        return;
                    }
                    return;
                default:
                    this.f31794d = bVar;
                    return;
            }
        }
    }

    /* renamed from: a */
    public void m2083a(String str) {
        this.f31796f = str;
    }

    /* renamed from: b */
    public void m2082b() {
        if (!(this.f31791a == null || this.f31792b == null || this.f31793c == null || this.f31794d == null)) {
            C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
            aVar.m1807a("remote_num", this.f31791a);
            aVar.m1807a("remote_e164", this.f31792b);
            aVar.m1807a("type", this.f31793c.toString());
            aVar.m1807a("action", this.f31794d.toString());
            aVar.m1807a("report_spamcateg", this.f31795e);
            aVar.m1807a("oldtag", this.f31798h);
            aVar.m1807a("newtag", this.f31797g);
            aVar.m1807a("oldspam", this.f31796f);
            aVar.m1807a("remote_call_type", this.f31799i);
            C14296p.m1830a("whoscall_userreport", aVar.m1811a());
        }
        m2085a();
    }

    /* renamed from: b */
    public void m2081b(String str) {
        this.f31798h = str;
    }

    /* renamed from: c */
    public void m2080c(String str) {
        this.f31795e = str;
    }

    /* renamed from: d */
    public void m2079d(String str) {
        this.f31797g = str;
    }
}
