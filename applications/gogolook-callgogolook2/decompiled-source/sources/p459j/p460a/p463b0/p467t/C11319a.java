package p459j.p460a.p463b0.p467t;

import kotlin.Metadata;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C14217x3;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018�� \u000f2\u00020\u0001:\u0001\u000fB'\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0002\u0010\bR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\f\u0010\nR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000e¨\u0006\u0010"}, m815d2 = {"Lgogolook/callgogolook2/main/drawer/BannerDrawerItem;", "Lgogolook/callgogolook2/adapter/ViewData;", "viewType", "", "title", "", "bannerUrl", "clickUrl", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getBannerUrl", "()Ljava/lang/String;", "getClickUrl", "getTitle", "getViewType", "()I", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.t.a */
/* loaded from: classes2-dex2jar.jar:j/a/b0/t/a.class */
public final class C11319a implements AbstractC12391a {

    /* renamed from: e */
    public static final C11320a f25410e = new C11320a(null);

    /* renamed from: a */
    public final int f25411a;

    /* renamed from: b */
    public final String f25412b;

    /* renamed from: c */
    public final String f25413c;

    /* renamed from: d */
    public final String f25414d;

    /* renamed from: j.a.b0.t.a$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/a$a.class */
    public static final class C11320a {
        public C11320a() {
        }

        public /* synthetic */ C11320a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C11319a m9785a(int i) {
            C13640c d = C13640c.m3745d();
            C11319a aVar = null;
            if (d != null) {
                String d2 = d.m3744d("mrt_activities_title");
                String d3 = d.m3744d("mrt_activities_url");
                String d4 = d.m3744d("mrt_activities_banner_" + C14217x3.m2141g());
                C15149k.m383a((Object) d4, "bannerUrl");
                boolean z = true;
                aVar = null;
                if (d4.length() > 0) {
                    C15149k.m383a((Object) d3, "clickUrl");
                    if (d3.length() <= 0) {
                        z = false;
                    }
                    aVar = null;
                    if (z) {
                        C15149k.m383a((Object) d2, "title");
                        aVar = new C11319a(i, d2, d4, d3, null);
                    }
                }
            }
            return aVar;
        }
    }

    public C11319a(int i, String str, String str2, String str3) {
        this.f25411a = i;
        this.f25412b = str;
        this.f25413c = str2;
        this.f25414d = str3;
    }

    public /* synthetic */ C11319a(int i, String str, String str2, String str3, C15145g gVar) {
        this(i, str, str2, str3);
    }

    /* renamed from: a */
    public final String m9788a() {
        return this.f25413c;
    }

    /* renamed from: b */
    public final String m9787b() {
        return this.f25414d;
    }

    /* renamed from: c */
    public final String m9786c() {
        return this.f25412b;
    }

    @Override // p459j.p460a.p511h.AbstractC12391a
    public int getViewType() {
        return this.f25411a;
    }
}
