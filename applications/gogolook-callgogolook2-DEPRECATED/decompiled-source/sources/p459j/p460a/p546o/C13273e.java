package p459j.p460a.p546o;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.util.Base64;
import androidx.core.app.NotificationCompat;
import com.aotter.net.trek.model.Entity;
import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.util.OJni;
import java.io.File;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p081h.p451q.p454c.AbstractC10857e;
import p459j.p460a.p582w0.C13992e4;
import p626l.C14986p;
import p626l.p631e0.C14938c;
import p626l.p631e0.C14966w;
import p626l.p632u.C15022n;
import p626l.p641z.p643d.C15149k;
import p660rx.Observable;
import p660rx.Subscriber;
import p660rx.functions.Action0;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
import zendesk.core.AnonymousIdentity;
import zendesk.core.Zendesk;
import zendesk.support.CreateRequest;
import zendesk.support.CustomField;
import zendesk.support.ProviderStore;
import zendesk.support.Request;
import zendesk.support.RequestProvider;
import zendesk.support.Support;
import zendesk.support.UploadProvider;
import zendesk.support.UploadResponse;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010 \n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001:\u0002%&B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\\\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u00042\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00040\u001e2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020 0\u001e2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\u001e2\b\u0010#\u001a\u0004\u0018\u00010$H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006'"}, m815d2 = {"Lgogolook/callgogolook2/cs/ZendeskManager;", "", "()V", "DEFAULT_DISPLAY_NAME", "", "FIELD_ANDROID_API", "", "FIELD_BRAND", "FIELD_COUNTRY", "FIELD_DEVICE", "FIELD_OPERATOR", "FIELD_USER_DISPLAY_NAME", "FIELD_VERSION_CODE", "FIELD_VERSION_NAME", "KEY_APP_ID", "KEY_CLIENT_ID", "KEY_ZENDESK_URL", CallAction.DONE_TAG, "decrypt", "context", "Landroid/content/Context;", "input", "init", "", "report", "name", "email", "title", "content", Entity.ENTITY_TAG_KEY, "", "customFields", "Lzendesk/support/CustomField;", "attachments", "Lgogolook/callgogolook2/cs/ZendeskManager$Attachment;", "listener", "Lgogolook/callgogolook2/cs/ZendeskManager$OnReportCompleteListener;", "Attachment", "OnReportCompleteListener", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.o.e */
/* loaded from: classes2-dex2jar.jar:j/a/o/e.class */
public final class C13273e {

    /* renamed from: a */
    public static final C13273e f29886a = new C13273e();

    /* renamed from: j.a.o.e$a */
    /* loaded from: classes2-dex2jar.jar:j/a/o/e$a.class */
    public static final class C13274a {

        /* renamed from: a */
        public final String f29887a;

        /* renamed from: b */
        public final String f29888b;

        /* renamed from: c */
        public final File f29889c;

        public C13274a(String str, String str2, File file) {
            C15149k.m377b(str, "fileName");
            C15149k.m377b(str2, "mimeType");
            C15149k.m377b(file, "file");
            this.f29887a = str;
            this.f29888b = str2;
            this.f29889c = file;
        }

        /* renamed from: a */
        public final File m4331a() {
            return this.f29889c;
        }

        /* renamed from: b */
        public final String m4330b() {
            return this.f29887a;
        }

        /* renamed from: c */
        public final String m4329c() {
            return this.f29888b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C13274a)) {
                return false;
            }
            C13274a aVar = (C13274a) obj;
            return C15149k.m384a((Object) this.f29887a, (Object) aVar.f29887a) && C15149k.m384a((Object) this.f29888b, (Object) aVar.f29888b) && C15149k.m384a(this.f29889c, aVar.f29889c);
        }

        public int hashCode() {
            String str = this.f29887a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f29888b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            File file = this.f29889c;
            if (file != null) {
                i = file.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }

        public String toString() {
            return "Attachment(fileName=" + this.f29887a + ", mimeType=" + this.f29888b + ", file=" + this.f29889c + ")";
        }
    }

    /* renamed from: j.a.o.e$b */
    /* loaded from: classes2-dex2jar.jar:j/a/o/e$b.class */
    public interface AbstractC13275b {
        /* renamed from: a */
        void mo4328a(String str);

        void onSuccess();
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u00012.\u0010\u0002\u001a*\u0012\u000e\b��\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004 \u0005*\u0014\u0012\u000e\b��\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0006¨\u0006\u0007"}, m815d2 = {"<anonymous>", "", "it", "Lrx/Subscriber;", "", "kotlin.jvm.PlatformType", NotificationCompat.CATEGORY_CALL, "gogolook/callgogolook2/cs/ZendeskManager$report$1$1"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.o.e$c */
    /* loaded from: classes2-dex2jar.jar:j/a/o/e$c.class */
    public static final class C13276c<T> implements Observable.OnSubscribe<T> {

        /* renamed from: a */
        public final /* synthetic */ C13274a f29890a;

        /* renamed from: b */
        public final /* synthetic */ UploadProvider f29891b;

        /* renamed from: j.a.o.e$c$a */
        /* loaded from: classes2-dex2jar.jar:j/a/o/e$c$a.class */
        public static final class C13277a extends AbstractC10857e<UploadResponse> {

            /* renamed from: a */
            public final /* synthetic */ Subscriber f29892a;

            public C13277a(Subscriber subscriber) {
                this.f29892a = subscriber;
            }

            /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
                if (r4 != null) goto L_0x0018;
             */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onSuccess(zendesk.support.UploadResponse r4) {
                /*
                    r3 = this;
                    r0 = r3
                    rx.Subscriber r0 = r0.f29892a
                    r5 = r0
                    r0 = r4
                    if (r0 == 0) goto L_0x0015
                    r0 = r4
                    java.lang.String r0 = r0.getToken()
                    r4 = r0
                    r0 = r4
                    if (r0 == 0) goto L_0x0015
                    goto L_0x0018
                L_0x0015:
                    java.lang.String r0 = ""
                    r4 = r0
                L_0x0018:
                    r0 = r5
                    r1 = r4
                    r0.onNext(r1)
                    r0 = r3
                    rx.Subscriber r0 = r0.f29892a
                    r0.onCompleted()
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p546o.C13273e.C13276c.C13277a.onSuccess(zendesk.support.UploadResponse):void");
            }

            /* JADX WARN: Code restructure failed: missing block: B:5:0x0057, code lost:
                if (r5 != null) goto L_0x0060;
             */
            @Override // p081h.p451q.p454c.AbstractC10857e
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onError(p081h.p451q.p454c.AbstractC10851a r5) {
                /*
                    r4 = this;
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r1 = r0
                    r1.<init>()
                    r6 = r0
                    r0 = r6
                    java.lang.String r1 = "[ZendeskManager] attachment error "
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r5
                    if (r0 == 0) goto L_0x005d
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r1 = r0
                    r1.<init>()
                    r7 = r0
                    r0 = r7
                    java.lang.String r1 = "body="
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r7
                    r1 = r5
                    java.lang.String r1 = r1.mo10406c()
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r7
                    java.lang.String r1 = ", status="
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r7
                    r1 = r5
                    int r1 = r1.mo10407b()
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r7
                    java.lang.String r1 = ", reason="
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r7
                    r1 = r5
                    java.lang.String r1 = r1.mo10410a()
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r7
                    java.lang.String r0 = r0.toString()
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x005d
                    goto L_0x0060
                L_0x005d:
                    java.lang.String r0 = "by unknown reason"
                    r5 = r0
                L_0x0060:
                    r0 = r6
                    r1 = r5
                    java.lang.StringBuilder r0 = r0.append(r1)
                    java.lang.Exception r0 = new java.lang.Exception
                    r1 = r0
                    r2 = r6
                    java.lang.String r2 = r2.toString()
                    r1.<init>(r2)
                    r5 = r0
                    r0 = r5
                    p459j.p460a.p582w0.C13973d4.m2952a(r0)
                    r0 = r4
                    rx.Subscriber r0 = r0.f29892a
                    r1 = r5
                    r0.onError(r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p546o.C13273e.C13276c.C13277a.onError(h.q.c.a):void");
            }
        }

        public C13276c(C13274a aVar, UploadProvider uploadProvider) {
            this.f29890a = aVar;
            this.f29891b = uploadProvider;
        }

        /* renamed from: a */
        public final void call(Subscriber<? super String> subscriber) {
            UploadProvider uploadProvider = this.f29891b;
            if (uploadProvider != null) {
                uploadProvider.uploadAttachment(this.f29890a.m4330b(), this.f29890a.m4331a(), this.f29890a.m4329c(), new C13277a(subscriber));
            }
        }
    }

    /* renamed from: j.a.o.e$d */
    /* loaded from: classes2-dex2jar.jar:j/a/o/e$d.class */
    public static final class C13278d<T> implements Action1<String> {

        /* renamed from: a */
        public final /* synthetic */ List f29893a;

        public C13278d(List list) {
            this.f29893a = list;
        }

        /* renamed from: a */
        public final void call(String str) {
            if (!(str == null || C14966w.m724a((CharSequence) str))) {
                this.f29893a.add(str);
            }
        }
    }

    /* renamed from: j.a.o.e$e */
    /* loaded from: classes2-dex2jar.jar:j/a/o/e$e.class */
    public static final class C13279e<T> implements Action1<Throwable> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC13275b f29894a;

        public C13279e(AbstractC13275b bVar) {
            this.f29894a = bVar;
        }

        /* renamed from: a */
        public final void call(Throwable th) {
            AbstractC13275b bVar = this.f29894a;
            if (bVar != null) {
                String message = th.getMessage();
                if (message == null) {
                    message = "Unknown exception";
                }
                bVar.mo4328a(message);
            }
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m815d2 = {"<anonymous>", "", NotificationCompat.CATEGORY_CALL}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.o.e$f */
    /* loaded from: classes2-dex2jar.jar:j/a/o/e$f.class */
    public static final class C13280f implements Action0 {

        /* renamed from: a */
        public final /* synthetic */ List f29895a;

        /* renamed from: b */
        public final /* synthetic */ List f29896b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC13275b f29897c;

        /* renamed from: d */
        public final /* synthetic */ String f29898d;

        /* renamed from: e */
        public final /* synthetic */ String f29899e;

        /* renamed from: f */
        public final /* synthetic */ List f29900f;

        /* renamed from: g */
        public final /* synthetic */ List f29901g;

        /* renamed from: j.a.o.e$f$a */
        /* loaded from: classes2-dex2jar.jar:j/a/o/e$f$a.class */
        public static final class C13281a extends AbstractC10857e<Request> {
            public C13281a() {
            }

            /* JADX WARN: Code restructure failed: missing block: B:5:0x0057, code lost:
                if (r5 != null) goto L_0x0060;
             */
            @Override // p081h.p451q.p454c.AbstractC10857e
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onError(p081h.p451q.p454c.AbstractC10851a r5) {
                /*
                    r4 = this;
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r1 = r0
                    r1.<init>()
                    r6 = r0
                    r0 = r6
                    java.lang.String r1 = "[ZendeskManager] report error "
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r5
                    if (r0 == 0) goto L_0x005d
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r1 = r0
                    r1.<init>()
                    r7 = r0
                    r0 = r7
                    java.lang.String r1 = "body="
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r7
                    r1 = r5
                    java.lang.String r1 = r1.mo10406c()
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r7
                    java.lang.String r1 = ", status="
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r7
                    r1 = r5
                    int r1 = r1.mo10407b()
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r7
                    java.lang.String r1 = ", reason="
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r7
                    r1 = r5
                    java.lang.String r1 = r1.mo10410a()
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r7
                    java.lang.String r0 = r0.toString()
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x005d
                    goto L_0x0060
                L_0x005d:
                    java.lang.String r0 = "by unknown reason"
                    r5 = r0
                L_0x0060:
                    r0 = r6
                    r1 = r5
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r6
                    java.lang.String r0 = r0.toString()
                    r5 = r0
                    java.lang.Exception r0 = new java.lang.Exception
                    r1 = r0
                    r2 = r5
                    r1.<init>(r2)
                    p459j.p460a.p582w0.C13973d4.m2952a(r0)
                    r0 = r4
                    j.a.o.e$f r0 = p459j.p460a.p546o.C13273e.C13280f.this
                    j.a.o.e$b r0 = r0.f29897c
                    r6 = r0
                    r0 = r6
                    if (r0 == 0) goto L_0x0089
                    r0 = r6
                    r1 = r5
                    r0.mo4328a(r1)
                L_0x0089:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p546o.C13273e.C13280f.C13281a.onError(h.q.c.a):void");
            }

            public void onSuccess(Request request) {
                AbstractC13275b bVar = C13280f.this.f29897c;
                if (bVar != null) {
                    bVar.onSuccess();
                }
            }
        }

        public C13280f(List list, List list2, AbstractC13275b bVar, String str, String str2, List list3, List list4) {
            this.f29895a = list;
            this.f29896b = list2;
            this.f29897c = bVar;
            this.f29898d = str;
            this.f29899e = str2;
            this.f29900f = list3;
            this.f29901g = list4;
        }

        @Override // p660rx.functions.Action0
        public final void call() {
            if (this.f29895a.size() < this.f29896b.size()) {
                AbstractC13275b bVar = this.f29897c;
                if (bVar != null) {
                    bVar.mo4328a("Not totally upload successfully");
                    return;
                }
                return;
            }
            ProviderStore provider = Support.INSTANCE.provider();
            RequestProvider requestProvider = provider != null ? provider.requestProvider() : null;
            CreateRequest createRequest = new CreateRequest();
            createRequest.setSubject(this.f29898d);
            createRequest.setDescription(this.f29899e);
            createRequest.setTags(this.f29900f);
            createRequest.setCustomFields(this.f29901g);
            createRequest.setAttachments(this.f29895a);
            if (requestProvider != null) {
                requestProvider.createRequest(createRequest, new C13281a());
            }
        }
    }

    /* renamed from: a */
    public static final void m4334a(Context context) {
        C15149k.m377b(context, "context");
        ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        if (applicationInfo != null) {
            Zendesk zendesk2 = Zendesk.INSTANCE;
            Context applicationContext = context.getApplicationContext();
            String string = applicationInfo.metaData.getString("zendesk.url");
            if (string == null) {
                string = "";
            }
            C13273e eVar = f29886a;
            String string2 = applicationInfo.metaData.getString("zendesk.app_id");
            C15149k.m383a((Object) string2, "it.metaData.getString(KEY_APP_ID)");
            String a = eVar.m4333a(context, string2);
            if (a == null) {
                a = "";
            }
            C13273e eVar2 = f29886a;
            String string3 = applicationInfo.metaData.getString("zendesk.client_id");
            C15149k.m383a((Object) string3, "it.metaData.getString(KEY_CLIENT_ID)");
            String a2 = eVar2.m4333a(context, string3);
            if (a2 == null) {
                a2 = "";
            }
            zendesk2.init(applicationContext, string, a, a2);
            Support.INSTANCE.init(Zendesk.INSTANCE);
        }
    }

    /* renamed from: a */
    public static final void m4332a(String str, String str2, String str3, String str4, List<String> list, List<? extends CustomField> list2, List<C13274a> list3, AbstractC13275b bVar) {
        C15149k.m377b(str, "name");
        C15149k.m377b(str2, "email");
        C15149k.m377b(str3, "title");
        C15149k.m377b(str4, "content");
        C15149k.m377b(list, Entity.ENTITY_TAG_KEY);
        C15149k.m377b(list2, "customFields");
        C15149k.m377b(list3, "attachments");
        AnonymousIdentity.Builder builder = new AnonymousIdentity.Builder();
        boolean a = C14966w.m724a((CharSequence) str);
        UploadProvider uploadProvider = null;
        String str5 = a ^ true ? str : null;
        if (str5 == null) {
            str5 = "Whoscall Android User";
        }
        builder.withNameIdentifier(str5);
        builder.withEmailIdentifier(str2);
        Zendesk.INSTANCE.setIdentity(builder.build());
        ArrayList arrayList = new ArrayList();
        ProviderStore provider = Support.INSTANCE.provider();
        if (provider != null) {
            uploadProvider = provider.uploadProvider();
        }
        ArrayList arrayList2 = new ArrayList(C15022n.m555a(list3, 10));
        for (C13274a aVar : list3) {
            arrayList2.add(Observable.create(new C13276c(aVar, uploadProvider)).subscribeOn(Schedulers.m0io()));
        }
        Observable.concat(arrayList2).subscribe(new C13278d(arrayList), new C13279e(bVar), new C13280f(arrayList, list3, bVar, str3, str4, list, list2));
    }

    /* renamed from: a */
    public final String m4333a(Context context, String str) {
        String str2;
        byte[] decode = Base64.decode(str, 2);
        if (decode != null) {
            String encryptKey = OJni.getEncryptKey(context);
            C15149k.m383a((Object) encryptKey, "OJni.getEncryptKey(context)");
            Charset charset = C14938c.f32979a;
            if (encryptKey != null) {
                byte[] bytes = encryptKey.getBytes(charset);
                C15149k.m383a((Object) bytes, "(this as java.lang.String).getBytes(charset)");
                byte[] a = C13992e4.m2923a(decode, bytes);
                if (a != null) {
                    str2 = new String(a, C14938c.f32979a);
                    return str2;
                }
            } else {
                throw new C14986p("null cannot be cast to non-null type java.lang.String");
            }
        }
        str2 = null;
        return str2;
    }
}
