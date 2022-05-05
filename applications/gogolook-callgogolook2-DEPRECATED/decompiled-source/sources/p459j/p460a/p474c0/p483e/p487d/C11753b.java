package p459j.p460a.p474c0.p483e.p487d;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.TextView;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.view.style.WhoscallUrlSpan;
import kotlin.Metadata;
import p459j.p460a.p474c0.p483e.p487d.C11796r;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p572v0.p573c.AbstractC13719n;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p613z0.p617p.C14666a;
import p459j.p460a.p613z0.p617p.C14684g;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rH\u0016¨\u0006\u000e"}, m815d2 = {"Lgogolook/callgogolook2/messaging/scan/ui/GoogleResultTypeDelegateAdapter;", "Lgogolook/callgogolook2/messaging/scan/ui/ResultViewTypeDelegateAdapter;", "listener", "Lgogolook/callgogolook2/messaging/scan/ui/ScanResultPageRecyclerViewAdapter$Listener;", "(Lgogolook/callgogolook2/messaging/scan/ui/ScanResultPageRecyclerViewAdapter$Listener;)V", "onBindViewHolder", "", "holder", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "item", "Lgogolook/callgogolook2/adapter/ViewData;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.e.d.b */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/b.class */
public final class C11753b extends AbstractC11774l {

    /* renamed from: j.a.c0.e.d.b$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/b$a.class */
    public static final class C11754a extends AbstractC15150l implements AbstractC15118l<String, WhoscallUrlSpan> {

        /* renamed from: a */
        public static final C11754a f26366a = new C11754a();

        public C11754a() {
            super(1);
        }

        /* renamed from: a */
        public final WhoscallUrlSpan invoke(String str) {
            C15149k.m377b(str, "url");
            return new WhoscallUrlSpan(str, C14167t.m2315a(2131100120), true);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11753b(C11796r.AbstractC11797a aVar) {
        super(aVar);
        C15149k.m377b(aVar, "listener");
    }

    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C14666a mo1120a(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "parent");
        return new C11772j(viewGroup, R$layout.url_scan_result_item);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo1119a(C14666a aVar, AbstractC12391a aVar2) {
        C15149k.m377b(aVar, "holder");
        C15149k.m377b(aVar2, "item");
        Context a = aVar.m907a();
        if (a != null) {
            C14666a aVar3 = aVar;
            if (!(aVar instanceof C11772j)) {
                aVar3 = null;
            }
            C11772j jVar = (C11772j) aVar3;
            if (jVar != null) {
                AbstractC12391a aVar4 = aVar2;
                if (!(aVar2 instanceof C11755c)) {
                    aVar4 = null;
                }
                C11755c cVar = (C11755c) aVar4;
                if (cVar != null) {
                    m8322a(jVar, (AbstractC11814w) cVar);
                    AbstractC13719n.C13721b b = cVar.m8246b();
                    TextView f = jVar.m8324f();
                    String string = a.getString(R$string.srp_powerbygoogle);
                    C15149k.m383a((Object) string, "context.getString(R.string.srp_powerbygoogle)");
                    C14684g.m868a(f, string, C11754a.f26366a, 2131100120, null, 8, null);
                    m8321a(jVar, b);
                }
            }
        }
    }
}
