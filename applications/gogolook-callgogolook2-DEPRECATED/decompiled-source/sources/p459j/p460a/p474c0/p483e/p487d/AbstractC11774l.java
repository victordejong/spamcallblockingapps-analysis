package p459j.p460a.p474c0.p483e.p487d;

import android.view.View;
import android.widget.TextView;
import com.gogolook.commonlib.view.IconFontTextView;
import gogolook.callgogolook2.R$string;
import kotlin.Metadata;
import p459j.p460a.p474c0.p483e.p487d.C11796r;
import p459j.p460a.p511h.AbstractC12392b;
import p459j.p460a.p572v0.p573c.AbstractC13719n;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.C14976h;
import p626l.C14984n;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\b&\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0004J\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0004R\u0014\u0010\u0003\u001a\u00020\u0004X\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, m815d2 = {"Lgogolook/callgogolook2/messaging/scan/ui/ResultViewTypeDelegateAdapter;", "Lgogolook/callgogolook2/adapter/ViewTypeDelegateAdapter;", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "listener", "Lgogolook/callgogolook2/messaging/scan/ui/ScanResultPageRecyclerViewAdapter$Listener;", "(Lgogolook/callgogolook2/messaging/scan/ui/ScanResultPageRecyclerViewAdapter$Listener;)V", "getListener", "()Lgogolook/callgogolook2/messaging/scan/ui/ScanResultPageRecyclerViewAdapter$Listener;", "bindData", "", "holder", "Lgogolook/callgogolook2/messaging/scan/ui/ResultViewHolder;", "scanResult", "Lgogolook/callgogolook2/urlscan/data/UrlScanResult$ScanResult;", "setViewShape", "viewData", "Lgogolook/callgogolook2/messaging/scan/ui/UrlScanResultViewData;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.e.d.l */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/l.class */
public abstract class AbstractC11774l implements AbstractC12392b<C14666a> {

    /* renamed from: a */
    public final C11796r.AbstractC11797a f26418a;

    /* renamed from: j.a.c0.e.d.l$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/l$a.class */
    public static final class View$OnClickListenerC11775a implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ AbstractC13719n.C13721b f26420b;

        public View$OnClickListenerC11775a(AbstractC13719n.C13721b bVar) {
            this.f26420b = bVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC11774l.this.m8323a().mo8292a(this.f26420b);
        }
    }

    public AbstractC11774l(C11796r.AbstractC11797a aVar) {
        C15149k.m377b(aVar, "listener");
        this.f26418a = aVar;
    }

    /* renamed from: a */
    public final C11796r.AbstractC11797a m8323a() {
        return this.f26418a;
    }

    /* renamed from: a */
    public final void m8322a(C11772j jVar, AbstractC11814w wVar) {
        C15149k.m377b(jVar, "holder");
        C15149k.m377b(wVar, "viewData");
        jVar.m8329a(wVar.m8291a());
        int i = C11773k.f26416a[wVar.m8291a().ordinal()];
        Integer num = i != 1 ? i != 2 ? i != 3 ? null : 2131230858 : 2131230859 : 2131230862;
        if (num != null) {
            jVar.itemView.setBackgroundResource(num.intValue());
        }
    }

    /* renamed from: a */
    public final void m8321a(C11772j jVar, AbstractC13719n.C13721b bVar) {
        C14984n nVar;
        C15149k.m377b(jVar, "holder");
        C15149k.m377b(bVar, "scanResult");
        int i = C11773k.f26417b[bVar.m3607a().ordinal()];
        if (i == 1) {
            nVar = new C14984n(2131887243, 2131100120, Integer.valueOf((int) R$string.srp_unrated_url));
        } else if (i == 2) {
            nVar = new C14984n(2131887291, 2131100157, Integer.valueOf((int) R$string.srp_safe_url));
        } else if (i == 3) {
            nVar = new C14984n(2131887313, 2131100137, Integer.valueOf((int) R$string.srp_suspicious_url));
        } else if (i == 4) {
            nVar = new C14984n(2131887249, 2131099767, Integer.valueOf((int) R$string.srp_malicious_url));
        } else {
            throw new C14976h();
        }
        int intValue = ((Number) nVar.m650a()).intValue();
        int intValue2 = ((Number) nVar.m649b()).intValue();
        int intValue3 = ((Number) nVar.m648c()).intValue();
        IconFontTextView c = jVar.m8327c();
        c.setText(intValue);
        c.m32255a(intValue2);
        jVar.m8328b().setText(intValue3);
        TextView e = jVar.m8325e();
        e.setText(bVar.m3604d());
        e.setOnClickListener(new View$OnClickListenerC11775a(bVar));
    }
}
