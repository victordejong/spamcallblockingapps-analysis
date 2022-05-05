package p459j.p460a.p512h0;

import android.os.Bundle;
import android.service.notification.StatusBarNotification;
import androidx.core.app.NotificationCompat;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14131q4;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15021m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0006\u0018�� \u00102\u00020\u0001:\u0001\u0010B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR!\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, m815d2 = {"Lgogolook/callgogolook2/notification/LineNotification;", "Lgogolook/callgogolook2/notification/ProtectNotification;", "sbn", "Landroid/service/notification/StatusBarNotification;", "(Landroid/service/notification/StatusBarNotification;)V", "hiddenContent", "", "getHiddenContent", "()Z", "urlList", "", "", "getUrlList", "()Ljava/util/List;", "urlList$delegate", "Lkotlin/Lazy;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.h0.a */
/* loaded from: classes3-dex2jar.jar:j/a/h0/a.class */
public final class C12393a extends C12396b {

    /* renamed from: i */
    public static final /* synthetic */ AbstractC14906i[] f27962i;

    /* renamed from: g */
    public final AbstractC14974f f27963g = C14975g.m662a(new C12395b());

    /* renamed from: h */
    public final boolean f27964h;

    /* renamed from: j.a.h0.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/h0/a$a.class */
    public static final class C12394a {
        public C12394a() {
        }

        public /* synthetic */ C12394a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.h0.a$b */
    /* loaded from: classes3-dex2jar.jar:j/a/h0/a$b.class */
    public static final class C12395b extends AbstractC15150l implements AbstractC15107a<List<String>> {
        public C12395b() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final List<String> invoke() {
            return C15149k.m384a((Object) C12393a.this.m6250a(), (Object) NotificationCompat.CATEGORY_MESSAGE) ? C14131q4.m2404e(C12393a.this.m6247d().toString()) : C15021m.m565a();
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C12393a.class), "urlList", "getUrlList()Ljava/util/List;");
        C15131a0.m412a(sVar);
        f27962i = new AbstractC14906i[]{sVar};
        new C12394a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12393a(StatusBarNotification statusBarNotification) {
        super(statusBarNotification);
        C15149k.m377b(statusBarNotification, "sbn");
        boolean z = false;
        if (C15149k.m384a((Object) m6250a(), (Object) NotificationCompat.CATEGORY_MESSAGE)) {
            Bundle bundle = statusBarNotification.getNotification().extras.getBundle("android.wearable.EXTENSIONS");
            z = false;
            if (bundle != null) {
                z = false;
                if (bundle.size() == 0) {
                    z = false;
                    if (C15149k.m384a((Object) m6246e(), (Object) "LINE")) {
                        z = true;
                    }
                }
            }
        }
        this.f27964h = z;
    }

    @Override // p459j.p460a.p512h0.C12396b
    /* renamed from: b */
    public boolean mo6249b() {
        return this.f27964h;
    }

    @Override // p459j.p460a.p512h0.C12396b
    /* renamed from: f */
    public List<String> mo6245f() {
        AbstractC14974f fVar = this.f27963g;
        AbstractC14906i iVar = f27962i[0];
        return (List) fVar.getValue();
    }
}
