package p459j.p460a.p572v0.p573c;

import kotlin.Metadata;
import p459j.p460a.p572v0.p573c.AbstractC13709g;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018�� \u00142\u00020\u0001:\u0001\u0014B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0003H\u0002J\b\u0010\u0013\u001a\u00020\u0003H\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0015"}, m815d2 = {"Lgogolook/callgogolook2/urlscan/data/GoogleEvaluateResult;", "Lgogolook/callgogolook2/urlscan/data/SourceResult;", "url", "", "scoresResult", "Lgogolook/callgogolook2/urlscan/data/GoogleEvaluateScores;", "(Ljava/lang/String;Lgogolook/callgogolook2/urlscan/data/GoogleEvaluateScores;)V", "rawResult", "Lgogolook/callgogolook2/urlscan/data/GoogleEvaluateScore;", "getRawResult", "()Lgogolook/callgogolook2/urlscan/data/GoogleEvaluateScore;", "getUrl", "()Ljava/lang/String;", "urlRating", "Lgogolook/callgogolook2/urlscan/data/UrlRating;", "getUrlRating", "()Lgogolook/callgogolook2/urlscan/data/UrlRating;", "convertRating", "confidenceLevel", "toString", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.v0.c.b */
/* loaded from: classes3-dex2jar.jar:j/a/v0/c/b.class */
public final class C13703b extends AbstractC13709g {

    /* renamed from: b */
    public final EnumC13715k f30770b;

    /* renamed from: c */
    public final C13705c f30771c;

    /* renamed from: d */
    public final String f30772d;

    /* renamed from: e */
    public final C13706d f30773e;

    /* renamed from: j.a.v0.c.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/v0/c/b$a.class */
    public static final class C13704a {
        public C13704a() {
        }

        public /* synthetic */ C13704a(C15145g gVar) {
            this();
        }
    }

    static {
        new C13704a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13703b(String str, C13706d dVar) {
        super(AbstractC13709g.EnumC13710a.GOOGLE_EVALUATE_API, null);
        C15149k.m377b(str, "url");
        C15149k.m377b(dVar, "scoresResult");
        this.f30772d = str;
        this.f30773e = dVar;
        if (this.f30773e.m3623a().isEmpty()) {
            this.f30770b = EnumC13715k.UNRATED;
            this.f30771c = null;
            return;
        }
        C13705c cVar = this.f30773e.m3623a().get(0);
        this.f30771c = cVar;
        this.f30770b = m3627a(cVar.m3624a());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0065, code lost:
        if (r4.equals("HIGH") != false) goto L_0x008c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0071, code lost:
        if (r4.equals("LOW") != false) goto L_0x008c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x007d, code lost:
        if (r4.equals("EXTREMELY_HIGH") != false) goto L_0x008c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0089, code lost:
        if (r4.equals("MEDIUM") != false) goto L_0x008c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x008c, code lost:
        r4 = p459j.p460a.p572v0.p573c.EnumC13715k.SUSPICIOUS;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0049, code lost:
        if (r4.equals("VERY_HIGH") != false) goto L_0x008c;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p459j.p460a.p572v0.p573c.EnumC13715k m3627a(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            int r0 = r0.hashCode()
            switch(r0) {
                case -2024701067: goto L_0x0083;
                case -687569144: goto L_0x0077;
                case 75572: goto L_0x006b;
                case 2217378: goto L_0x005f;
                case 2537357: goto L_0x004f;
                case 1571371787: goto L_0x0043;
                default: goto L_0x0040;
            }
        L_0x0040:
            goto L_0x0093
        L_0x0043:
            r0 = r4
            java.lang.String r1 = "VERY_HIGH"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0093
            goto L_0x008c
        L_0x004f:
            r0 = r4
            java.lang.String r1 = "SAFE"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0093
            j.a.v0.c.k r0 = p459j.p460a.p572v0.p573c.EnumC13715k.SAFE
            r4 = r0
            goto L_0x0097
        L_0x005f:
            r0 = r4
            java.lang.String r1 = "HIGH"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0093
            goto L_0x008c
        L_0x006b:
            r0 = r4
            java.lang.String r1 = "LOW"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0093
            goto L_0x008c
        L_0x0077:
            r0 = r4
            java.lang.String r1 = "EXTREMELY_HIGH"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0093
            goto L_0x008c
        L_0x0083:
            r0 = r4
            java.lang.String r1 = "MEDIUM"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0093
        L_0x008c:
            j.a.v0.c.k r0 = p459j.p460a.p572v0.p573c.EnumC13715k.SUSPICIOUS
            r4 = r0
            goto L_0x0097
        L_0x0093:
            j.a.v0.c.k r0 = p459j.p460a.p572v0.p573c.EnumC13715k.UNRATED
            r4 = r0
        L_0x0097:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p572v0.p573c.C13703b.m3627a(java.lang.String):j.a.v0.c.k");
    }

    @Override // p459j.p460a.p572v0.p573c.AbstractC13709g
    /* renamed from: b */
    public EnumC13715k mo3601b() {
        return this.f30770b;
    }

    /* renamed from: c */
    public final C13705c m3626c() {
        return this.f30771c;
    }

    /* renamed from: d */
    public String m3625d() {
        return this.f30772d;
    }

    public String toString() {
        return "GoogleEvaluateResult { url=" + m3625d() + ", rating=" + mo3601b() + ", sourceResult=" + this.f30773e + " }";
    }
}
