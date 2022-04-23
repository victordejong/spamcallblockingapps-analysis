package com.google.firebase.inappmessaging.display;

import android.app.Application;
import androidx.annotation.Keep;
import java.util.Arrays;
import java.util.List;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
import p131c.p161d.p282e.p288k.AbstractC5165e;
import p131c.p161d.p282e.p288k.AbstractC5171h;
import p131c.p161d.p282e.p288k.C5162d;
import p131c.p161d.p282e.p288k.C5180n;
import p131c.p161d.p282e.p315q.C5841r;
import p131c.p161d.p282e.p315q.p318p0.C5526b;
import p131c.p161d.p282e.p315q.p318p0.C5536c;
import p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p324a.AbstractC5603f;
import p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p324a.C5589b;
import p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p324a.C5599d;
import p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b.C5604a;
import p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b.C5606c;
import p131c.p161d.p282e.p351v.C6061h;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplayRegistrar.class */
public class FirebaseInAppMessagingDisplayRegistrar implements AbstractC5171h {
    /* JADX INFO: Access modifiers changed from: private */
    public C5526b buildFirebaseInAppMessagingUI(AbstractC5165e eVar) {
        C5128c j = C5128c.m24458j();
        C5841r rVar = (C5841r) eVar.mo24330a(C5841r.class);
        Application application = (Application) j.m24468b();
        C5599d.C5601b e = C5599d.m23443e();
        e.m23441a(new C5604a(application));
        AbstractC5603f a = e.m23442a();
        C5589b.C5591b b = C5589b.m23452b();
        b.m23450a(a);
        b.m23449a(new C5606c(rVar));
        C5526b a2 = b.m23451a().mo23454a();
        application.registerActivityLifecycleCallbacks(a2);
        return a2;
    }

    @Override // p131c.p161d.p282e.p288k.AbstractC5171h
    @Keep
    public List<C5162d<?>> getComponents() {
        C5162d.C5164b a = C5162d.m24395a(C5526b.class);
        a.m24378a(C5180n.m24343c(C5128c.class));
        a.m24378a(C5180n.m24343c(AbstractC5143a.class));
        a.m24378a(C5180n.m24343c(C5841r.class));
        a.m24379a(C5536c.m23597a(this));
        a.m24376b();
        return Arrays.asList(a.m24382a(), C6061h.m22163a("fire-fiamd", "19.1.2"));
    }
}
