package p459j.p460a.p463b0.p465r;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.ndp.NumberDetailActivity;
import gogolook.callgogolook2.realm.obj.contact.ContactRealmObject;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p533l.C12928g;
import p459j.p460a.p533l.C12942i;
import p459j.p460a.p541n0.C13048c;
import p459j.p460a.p582w0.C13938c4;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p626l.p631e0.C14966w;
import p626l.p641z.p643d.C15149k;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\nH\u0016J\b\u0010\u0018\u001a\u00020\u0016H\u0016J\b\u0010\u0019\u001a\u00020\u0016H\u0016J\b\u0010\u001a\u001a\u00020\u0016H\u0016J\b\u0010\u001b\u001a\u00020\u0016H\u0016J\b\u0010\u001c\u001a\u00020\u0016H\u0016J\u001a\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\b\u0010\"\u001a\u00020\u0016H\u0016J\u0018\u0010#\u001a\b\u0012\u0004\u0012\u00020\n0$2\b\u0010 \u001a\u0004\u0018\u00010!H\u0002J\u0010\u0010%\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\nH\u0016R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0004R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006&"}, m815d2 = {"Lgogolook/callgogolook2/main/contact/ContactPresenter;", "Lgogolook/callgogolook2/main/contact/ContactContract$Presenter;", "view", "Lgogolook/callgogolook2/main/contact/ContactContract$View;", "(Lgogolook/callgogolook2/main/contact/ContactContract$View;)V", "contactView", "getContactView", "()Lgogolook/callgogolook2/main/contact/ContactContract$View;", "setContactView", "lastLongClickContactLog", "Lgogolook/callgogolook2/realm/obj/contact/ContactRealmObject;", "getLastLongClickContactLog", "()Lgogolook/callgogolook2/realm/obj/contact/ContactRealmObject;", "setLastLongClickContactLog", "(Lgogolook/callgogolook2/realm/obj/contact/ContactRealmObject;)V", "lastLongClickContactLogBlockResult", "Lgogolook/callgogolook2/block/BlockResult;", "getLastLongClickContactLogBlockResult", "()Lgogolook/callgogolook2/block/BlockResult;", "setLastLongClickContactLogBlockResult", "(Lgogolook/callgogolook2/block/BlockResult;)V", "handleContactLogsLongClick", "", "contactRealmObject", "handleContextMenuActionBlock", "handleContextMenuActionCall", "handleContextMenuActionInvite", "handleContextMenuActionMessage", "handleContextMenuActionReport", "loadContact", "isNeedClearCache", "", "searchKey", "", "onStop", "queryContact", "", "tryToStartNdpByClickCallLog", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.r.d */
/* loaded from: classes2-dex2jar.jar:j/a/b0/r/d.class */
public final class C11222d implements AbstractC11212a {

    /* renamed from: a */
    public AbstractC11213b f25177a;

    /* renamed from: b */
    public ContactRealmObject f25178b;

    /* renamed from: c */
    public C12942i f25179c;

    /* renamed from: j.a.b0.r.d$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/r/d$a.class */
    public static final class C11223a<T> implements Action1<C12942i> {
        public C11223a() {
        }

        /* renamed from: a */
        public final void call(C12942i iVar) {
            C11222d.this.m10000a(iVar);
            C11222d.this.m10003a().mo10006b();
        }
    }

    /* renamed from: j.a.b0.r.d$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/r/d$b.class */
    public static final class C11224b<T> implements Action1<Throwable> {
        public C11224b() {
        }

        /* renamed from: a */
        public final void call(Throwable th) {
            C11222d.this.m9996b(null);
            C11222d.this.m10000a((C12942i) null);
        }
    }

    /* renamed from: j.a.b0.r.d$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/r/d$c.class */
    public static final class C11225c<T> implements Single.OnSubscribe<T> {

        /* renamed from: b */
        public final /* synthetic */ String f25183b;

        public C11225c(String str) {
            this.f25183b = str;
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super List<? extends ContactRealmObject>> singleSubscriber) {
            singleSubscriber.onSuccess(C11222d.this.m9999a(this.f25183b));
        }
    }

    /* renamed from: j.a.b0.r.d$d */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/r/d$d.class */
    public static final class C11226d<T> implements Action1<List<? extends ContactRealmObject>> {
        public C11226d() {
        }

        /* renamed from: a */
        public final void call(List<? extends ContactRealmObject> list) {
            AbstractC11213b a = C11222d.this.m10003a();
            C15149k.m383a((Object) list, "it");
            a.mo10007a(list);
        }
    }

    /* renamed from: j.a.b0.r.d$e */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/r/d$e.class */
    public static final class C11227e<T> implements Action1<Throwable> {

        /* renamed from: a */
        public static final C11227e f25185a = new C11227e();

        /* renamed from: a */
        public final void call(Throwable th) {
            C13973d4.m2952a(th);
        }
    }

    public C11222d(AbstractC11213b bVar) {
        C15149k.m377b(bVar, "view");
        this.f25177a = bVar;
    }

    /* renamed from: a */
    public final AbstractC11213b m10003a() {
        return this.f25177a;
    }

    /* renamed from: a */
    public final List<ContactRealmObject> m9999a(String str) {
        List<ContactRealmObject> a = C13048c.m4712a(str);
        if (a == null) {
            a = new ArrayList<>();
        }
        return a;
    }

    /* renamed from: a */
    public void m10002a(ContactRealmObject contactRealmObject) {
        C15149k.m377b(contactRealmObject, "contactRealmObject");
        this.f25178b = contactRealmObject;
        ContactRealmObject contactRealmObject2 = this.f25178b;
        if (contactRealmObject2 != null) {
            String number = contactRealmObject2.getNumber();
            C12928g.m5000a().m4979c(this.f25177a.mo10010a(), number != null ? C14966w.m718a(number, " ", "", false, 4, (Object) null) : null, "", 3).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C11223a(), new C11224b());
        }
    }

    /* renamed from: a */
    public final void m10000a(C12942i iVar) {
        this.f25179c = iVar;
    }

    /* renamed from: a */
    public void m9998a(boolean z, String str) {
        if (this.f25177a.mo10005c()) {
            Single.create(new C11225c(str)).subscribeOn(C14174u.m2299e()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C11226d(), C11227e.f25185a);
        }
    }

    /* renamed from: b */
    public final ContactRealmObject m9997b() {
        return this.f25178b;
    }

    /* renamed from: b */
    public final void m9996b(ContactRealmObject contactRealmObject) {
        this.f25178b = contactRealmObject;
    }

    /* renamed from: c */
    public final C12942i m9995c() {
        return this.f25179c;
    }

    /* renamed from: c */
    public void m9994c(ContactRealmObject contactRealmObject) {
        C15149k.m377b(contactRealmObject, "contactRealmObject");
        Context a = this.f25177a.mo10010a();
        if (a != null) {
            String number = contactRealmObject.getNumber();
            String e164 = contactRealmObject.getE164();
            String name = contactRealmObject.getName();
            String photoUri = contactRealmObject.getPhotoUri();
            Bundle bundle = new Bundle();
            bundle.putString("name", name);
            bundle.putString("photouri", photoUri);
            a.startActivity(NumberDetailActivity.f12014n.m26841a(a, number, e164, bundle, "FROM_Contact"));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0070, code lost:
        if (r17 != null) goto L_0x0079;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0083, code lost:
        if (r18 != null) goto L_0x008c;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m9993d() {
        /*
            r15 = this;
            r0 = r15
            j.a.b0.r.b r0 = r0.f25177a
            android.content.Context r0 = r0.mo10010a()
            r16 = r0
            r0 = r16
            if (r0 == 0) goto L_0x00ae
            r0 = r15
            gogolook.callgogolook2.realm.obj.contact.ContactRealmObject r0 = r0.f25178b
            r17 = r0
            r0 = r17
            if (r0 == 0) goto L_0x00ae
            r0 = r17
            java.lang.String r0 = r0.getNumber()
            r17 = r0
            r0 = r17
            if (r0 == 0) goto L_0x00ae
            r0 = r15
            j.a.l.i r0 = r0.f25179c
            r18 = r0
            r0 = r18
            if (r0 == 0) goto L_0x0032
            r0 = r18
            boolean r0 = r0.m4960d()
            r19 = r0
            goto L_0x0035
        L_0x0032:
            r0 = 0
            r19 = r0
        L_0x0035:
            r0 = r17
            java.lang.String r1 = " "
            java.lang.String r2 = ""
            r3 = 0
            r4 = 4
            r5 = 0
            java.lang.String r0 = p626l.p631e0.C14966w.m718a(r0, r1, r2, r3, r4, r5)
            r20 = r0
            r0 = r19
            if (r0 == 0) goto L_0x0057
            r0 = r16
            r1 = r20
            r2 = 3
            java.lang.String r3 = ""
            r4 = 0
            gogolook.callgogolook2.gson.DataUserReport$Source r5 = gogolook.callgogolook2.gson.DataUserReport.Source.OTHER
            p459j.p460a.p533l.C12928g.m4997a(r0, r1, r2, r3, r4, r5)
            goto L_0x00ae
        L_0x0057:
            r0 = r17
            java.lang.String r0 = p459j.p460a.p582w0.C14108o4.m2474l(r0)
            r21 = r0
            j.a.a0.i r0 = p459j.p460a.p461a0.C11052i.m10328e()
            r1 = r21
            gogolook.callgogolook2.gson.NumberInfo r0 = r0.m10327e(r1)
            r18 = r0
            r0 = r18
            if (r0 == 0) goto L_0x0076
            r0 = r18
            java.lang.String r0 = r0.m28393C()
            r17 = r0
            r0 = r17
            if (r0 == 0) goto L_0x0076
            goto L_0x0079
        L_0x0076:
            java.lang.String r0 = ""
            r17 = r0
        L_0x0079:
            r0 = r18
            if (r0 == 0) goto L_0x0089
            r0 = r18
            java.lang.String r0 = r0.m28383M()
            r18 = r0
            r0 = r18
            if (r0 == 0) goto L_0x0089
            goto L_0x008c
        L_0x0089:
            java.lang.String r0 = ""
            r18 = r0
        L_0x008c:
            r0 = r16
            r1 = 0
            r2 = 1
            r3 = 1
            r4 = r20
            r5 = 0
            r6 = 0
            gogolook.callgogolook2.gson.DataUserReport r7 = new gogolook.callgogolook2.gson.DataUserReport
            r8 = r7
            r9 = r20
            r10 = r21
            r11 = r17
            r12 = r18
            gogolook.callgogolook2.gson.DataUserReport$Source r13 = gogolook.callgogolook2.gson.DataUserReport.Source.OTHER
            r8.<init>(r9, r10, r11, r12, r13)
            p459j.p460a.p533l.C12928g.m4989a(r0, r1, r2, r3, r4, r5, r6, r7)
            r0 = 3
            r1 = 1
            r2 = r21
            p459j.p460a.p582w0.p590x4.C14289m.m1909a(r0, r1, r2)
        L_0x00ae:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p463b0.p465r.C11222d.m9993d():void");
    }

    /* renamed from: e */
    public void m9992e() {
        ContactRealmObject contactRealmObject;
        String number;
        Context a = this.f25177a.mo10010a();
        if (a != null && (contactRealmObject = this.f25178b) != null && (number = contactRealmObject.getNumber()) != null) {
            C14217x3.m2145e(a, number, 2);
        }
    }

    /* renamed from: f */
    public void m9991f() {
        ContactRealmObject contactRealmObject;
        String number;
        Context a = this.f25177a.mo10010a();
        if (a != null && (contactRealmObject = this.f25178b) != null && (number = contactRealmObject.getNumber()) != null) {
            String l = C14108o4.m2474l(number);
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/plain");
            intent.putExtra("address", l);
            intent.putExtra("android.intent.extra.TEXT", C14206w4.m2225a((int) R$string.aboutus_promote_message));
            a.startActivity(Intent.createChooser(intent, C14206w4.m2225a((int) R$string.share_tag_title)));
        }
    }

    /* renamed from: g */
    public void m9990g() {
        ContactRealmObject contactRealmObject;
        String number;
        Context a = this.f25177a.mo10010a();
        if (a != null && (contactRealmObject = this.f25178b) != null && (number = contactRealmObject.getNumber()) != null) {
            C12810o.m5266a(a, 4, number, null, false, 0, 32, null);
        }
    }

    /* renamed from: h */
    public void m9989h() {
        ContactRealmObject contactRealmObject;
        String e164;
        Context a = this.f25177a.mo10010a();
        if (a != null && (contactRealmObject = this.f25178b) != null && (e164 = contactRealmObject.getE164()) != null) {
            C13938c4.m3010a(a, e164);
        }
    }

    /* renamed from: i */
    public void m9988i() {
    }
}
