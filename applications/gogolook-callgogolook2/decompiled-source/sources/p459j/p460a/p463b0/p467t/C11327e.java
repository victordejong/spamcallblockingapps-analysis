package p459j.p460a.p463b0.p467t;

import android.content.Context;
import android.content.Intent;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.developmode.DevelopModeDialogActivity;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14191v;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m815d2 = {"Lgogolook/callgogolook2/main/drawer/DevModeDrawerItem;", "Lgogolook/callgogolook2/main/drawer/TitleDrawerItem;", "viewType", "", "(I)V", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.t.e */
/* loaded from: classes2-dex2jar.jar:j/a/b0/t/e.class */
public final class C11327e extends C11393q {

    /* renamed from: j.a.b0.t.e$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/e$a.class */
    public static final class C11328a extends AbstractC15150l implements AbstractC15118l<Context, String> {

        /* renamed from: a */
        public static final C11328a f25419a = new C11328a();

        public C11328a() {
            super(1);
        }

        /* renamed from: a */
        public final String invoke(Context context) {
            C15149k.m377b(context, "c");
            String string = context.getString(R$string.developmode_title);
            C15149k.m383a((Object) string, "c.getString(R.string.developmode_title)");
            return string;
        }
    }

    /* renamed from: j.a.b0.t.e$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/e$b.class */
    public static final class C11329b extends AbstractC15150l implements AbstractC15118l<Context, C14989s> {

        /* renamed from: a */
        public static final C11329b f25420a = new C11329b();

        public C11329b() {
            super(1);
        }

        /* renamed from: a */
        public final void m9779a(Context context) {
            if (context != null) {
                Intent a = DevelopModeDialogActivity.m28589a(context, false);
                C15149k.m383a((Object) a, "DevelopModeDialogActivit…ateIntent(context, false)");
                C14191v.m2257a(context, a, null, 2, null);
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Context context) {
            m9779a(context);
            return C14989s.f33022a;
        }
    }

    public C11327e(int i) {
        super(i, C11328a.f25419a, false, C11329b.f25420a, 4, null);
    }
}
