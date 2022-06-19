package org.mistergroup.shouldianswer.services;

import android.telecom.CallScreeningService;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1699m;
import kotlinx.coroutines.AbstractC1786ad;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.utils.C3104j;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/MyCallScreeningService.class */
public final class MyCallScreeningService extends CallScreeningService {

    /* renamed from: a */
    public static final C2474a f7223a = new C2474a(null);

    /* renamed from: b */
    private static long f7224b;

    /* renamed from: org.mistergroup.shouldianswer.services.MyCallScreeningService$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/MyCallScreeningService$a.class */
    public static final class C2474a {
        private C2474a() {
        }

        public /* synthetic */ C2474a(C1691e c1691e) {
            this();
        }
    }

    @AbstractC1634f(m3162b = "MyCallScreeningService.kt", m3161c = {159, 160, 161}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.services.MyCallScreeningService$onScreenCall$1")
    /* renamed from: org.mistergroup.shouldianswer.services.MyCallScreeningService$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/MyCallScreeningService$b.class */
    static final class C2475b extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f7225a;

        /* renamed from: b */
        Object f7226b;

        /* renamed from: c */
        int f7227c;

        /* renamed from: d */
        final /* synthetic */ NumberInfo f7228d;

        /* renamed from: e */
        final /* synthetic */ long f7229e;

        /* renamed from: f */
        final /* synthetic */ C1699m.C1702c f7230f;

        /* renamed from: g */
        final /* synthetic */ C1699m.C1700a f7231g;

        /* renamed from: h */
        private AbstractC1786ad f7232h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2475b(NumberInfo numberInfo, long j, C1699m.C1702c c1702c, C1699m.C1700a c1700a, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            this.f7228d = numberInfo;
            this.f7229e = j;
            this.f7230f = c1702c;
            this.f7231g = c1700a;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2475b) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2475b c2475b = new C2475b(this.f7228d, this.f7229e, this.f7230f, this.f7231g, abstractC1641c);
            c2475b.f7232h = (AbstractC1786ad) obj;
            return c2475b;
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x0107  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0109  */
        /* JADX WARN: Type inference failed for: r1v4, types: [T, org.mistergroup.shouldianswer.model.h] */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo42b(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 285
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.services.MyCallScreeningService.C2475b.mo42b(java.lang.Object):java.lang.Object");
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        C3104j.m157a(C3104j.f9124a, "SERVICE: MyCallScreeningService.onCreate", (String) null, 2, (Object) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:126:0x03b4 A[Catch: Exception -> 0x063f, TRY_ENTER, TryCatch #1 {Exception -> 0x063f, blocks: (B:37:0x018e, B:39:0x019a, B:41:0x01ab, B:43:0x01b5, B:45:0x01c4, B:47:0x01d3, B:49:0x01e7, B:52:0x0223, B:59:0x0242, B:61:0x024a, B:65:0x0257, B:67:0x0261, B:69:0x026d, B:71:0x027d, B:72:0x0281, B:75:0x0289, B:77:0x0291, B:78:0x0298, B:79:0x029c, B:80:0x029f, B:82:0x02c5, B:122:0x039b, B:126:0x03b4, B:129:0x03c4, B:131:0x03ce, B:133:0x0420, B:140:0x043a, B:142:0x04f3, B:144:0x04fb, B:146:0x0508, B:148:0x0515, B:149:0x0518, B:150:0x0526, B:151:0x0529, B:153:0x053d, B:155:0x0545, B:157:0x054e, B:159:0x055a, B:161:0x057b, B:163:0x0581, B:165:0x0589, B:166:0x0592, B:168:0x059a, B:170:0x05a7, B:174:0x0619, B:177:0x0628, B:172:0x060d), top: B:192:0x018e, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x041d  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x042c  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0432  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x043a A[Catch: Exception -> 0x063f, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x063f, blocks: (B:37:0x018e, B:39:0x019a, B:41:0x01ab, B:43:0x01b5, B:45:0x01c4, B:47:0x01d3, B:49:0x01e7, B:52:0x0223, B:59:0x0242, B:61:0x024a, B:65:0x0257, B:67:0x0261, B:69:0x026d, B:71:0x027d, B:72:0x0281, B:75:0x0289, B:77:0x0291, B:78:0x0298, B:79:0x029c, B:80:0x029f, B:82:0x02c5, B:122:0x039b, B:126:0x03b4, B:129:0x03c4, B:131:0x03ce, B:133:0x0420, B:140:0x043a, B:142:0x04f3, B:144:0x04fb, B:146:0x0508, B:148:0x0515, B:149:0x0518, B:150:0x0526, B:151:0x0529, B:153:0x053d, B:155:0x0545, B:157:0x054e, B:159:0x055a, B:161:0x057b, B:163:0x0581, B:165:0x0589, B:166:0x0592, B:168:0x059a, B:170:0x05a7, B:174:0x0619, B:177:0x0628, B:172:0x060d), top: B:192:0x018e, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0628 A[Catch: Exception -> 0x063f, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x063f, blocks: (B:37:0x018e, B:39:0x019a, B:41:0x01ab, B:43:0x01b5, B:45:0x01c4, B:47:0x01d3, B:49:0x01e7, B:52:0x0223, B:59:0x0242, B:61:0x024a, B:65:0x0257, B:67:0x0261, B:69:0x026d, B:71:0x027d, B:72:0x0281, B:75:0x0289, B:77:0x0291, B:78:0x0298, B:79:0x029c, B:80:0x029f, B:82:0x02c5, B:122:0x039b, B:126:0x03b4, B:129:0x03c4, B:131:0x03ce, B:133:0x0420, B:140:0x043a, B:142:0x04f3, B:144:0x04fb, B:146:0x0508, B:148:0x0515, B:149:0x0518, B:150:0x0526, B:151:0x0529, B:153:0x053d, B:155:0x0545, B:157:0x054e, B:159:0x055a, B:161:0x057b, B:163:0x0581, B:165:0x0589, B:166:0x0592, B:168:0x059a, B:170:0x05a7, B:174:0x0619, B:177:0x0628, B:172:0x060d), top: B:192:0x018e, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x065c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01c4 A[Catch: Exception -> 0x063f, TryCatch #1 {Exception -> 0x063f, blocks: (B:37:0x018e, B:39:0x019a, B:41:0x01ab, B:43:0x01b5, B:45:0x01c4, B:47:0x01d3, B:49:0x01e7, B:52:0x0223, B:59:0x0242, B:61:0x024a, B:65:0x0257, B:67:0x0261, B:69:0x026d, B:71:0x027d, B:72:0x0281, B:75:0x0289, B:77:0x0291, B:78:0x0298, B:79:0x029c, B:80:0x029f, B:82:0x02c5, B:122:0x039b, B:126:0x03b4, B:129:0x03c4, B:131:0x03ce, B:133:0x0420, B:140:0x043a, B:142:0x04f3, B:144:0x04fb, B:146:0x0508, B:148:0x0515, B:149:0x0518, B:150:0x0526, B:151:0x0529, B:153:0x053d, B:155:0x0545, B:157:0x054e, B:159:0x055a, B:161:0x057b, B:163:0x0581, B:165:0x0589, B:166:0x0592, B:168:0x059a, B:170:0x05a7, B:174:0x0619, B:177:0x0628, B:172:0x060d), top: B:192:0x018e, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0242 A[Catch: Exception -> 0x063f, TRY_ENTER, TryCatch #1 {Exception -> 0x063f, blocks: (B:37:0x018e, B:39:0x019a, B:41:0x01ab, B:43:0x01b5, B:45:0x01c4, B:47:0x01d3, B:49:0x01e7, B:52:0x0223, B:59:0x0242, B:61:0x024a, B:65:0x0257, B:67:0x0261, B:69:0x026d, B:71:0x027d, B:72:0x0281, B:75:0x0289, B:77:0x0291, B:78:0x0298, B:79:0x029c, B:80:0x029f, B:82:0x02c5, B:122:0x039b, B:126:0x03b4, B:129:0x03c4, B:131:0x03ce, B:133:0x0420, B:140:0x043a, B:142:0x04f3, B:144:0x04fb, B:146:0x0508, B:148:0x0515, B:149:0x0518, B:150:0x0526, B:151:0x0529, B:153:0x053d, B:155:0x0545, B:157:0x054e, B:159:0x055a, B:161:0x057b, B:163:0x0581, B:165:0x0589, B:166:0x0592, B:168:0x059a, B:170:0x05a7, B:174:0x0619, B:177:0x0628, B:172:0x060d), top: B:192:0x018e, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x026d A[Catch: Exception -> 0x063f, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x063f, blocks: (B:37:0x018e, B:39:0x019a, B:41:0x01ab, B:43:0x01b5, B:45:0x01c4, B:47:0x01d3, B:49:0x01e7, B:52:0x0223, B:59:0x0242, B:61:0x024a, B:65:0x0257, B:67:0x0261, B:69:0x026d, B:71:0x027d, B:72:0x0281, B:75:0x0289, B:77:0x0291, B:78:0x0298, B:79:0x029c, B:80:0x029f, B:82:0x02c5, B:122:0x039b, B:126:0x03b4, B:129:0x03c4, B:131:0x03ce, B:133:0x0420, B:140:0x043a, B:142:0x04f3, B:144:0x04fb, B:146:0x0508, B:148:0x0515, B:149:0x0518, B:150:0x0526, B:151:0x0529, B:153:0x053d, B:155:0x0545, B:157:0x054e, B:159:0x055a, B:161:0x057b, B:163:0x0581, B:165:0x0589, B:166:0x0592, B:168:0x059a, B:170:0x05a7, B:174:0x0619, B:177:0x0628, B:172:0x060d), top: B:192:0x018e, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0289 A[Catch: Exception -> 0x063f, TryCatch #1 {Exception -> 0x063f, blocks: (B:37:0x018e, B:39:0x019a, B:41:0x01ab, B:43:0x01b5, B:45:0x01c4, B:47:0x01d3, B:49:0x01e7, B:52:0x0223, B:59:0x0242, B:61:0x024a, B:65:0x0257, B:67:0x0261, B:69:0x026d, B:71:0x027d, B:72:0x0281, B:75:0x0289, B:77:0x0291, B:78:0x0298, B:79:0x029c, B:80:0x029f, B:82:0x02c5, B:122:0x039b, B:126:0x03b4, B:129:0x03c4, B:131:0x03ce, B:133:0x0420, B:140:0x043a, B:142:0x04f3, B:144:0x04fb, B:146:0x0508, B:148:0x0515, B:149:0x0518, B:150:0x0526, B:151:0x0529, B:153:0x053d, B:155:0x0545, B:157:0x054e, B:159:0x055a, B:161:0x057b, B:163:0x0581, B:165:0x0589, B:166:0x0592, B:168:0x059a, B:170:0x05a7, B:174:0x0619, B:177:0x0628, B:172:0x060d), top: B:192:0x018e, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02c5 A[Catch: Exception -> 0x063f, TryCatch #1 {Exception -> 0x063f, blocks: (B:37:0x018e, B:39:0x019a, B:41:0x01ab, B:43:0x01b5, B:45:0x01c4, B:47:0x01d3, B:49:0x01e7, B:52:0x0223, B:59:0x0242, B:61:0x024a, B:65:0x0257, B:67:0x0261, B:69:0x026d, B:71:0x027d, B:72:0x0281, B:75:0x0289, B:77:0x0291, B:78:0x0298, B:79:0x029c, B:80:0x029f, B:82:0x02c5, B:122:0x039b, B:126:0x03b4, B:129:0x03c4, B:131:0x03ce, B:133:0x0420, B:140:0x043a, B:142:0x04f3, B:144:0x04fb, B:146:0x0508, B:148:0x0515, B:149:0x0518, B:150:0x0526, B:151:0x0529, B:153:0x053d, B:155:0x0545, B:157:0x054e, B:159:0x055a, B:161:0x057b, B:163:0x0581, B:165:0x0589, B:166:0x0592, B:168:0x059a, B:170:0x05a7, B:174:0x0619, B:177:0x0628, B:172:0x060d), top: B:192:0x018e, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02d5  */
    /* JADX WARN: Type inference failed for: r1v40, types: [T, org.mistergroup.shouldianswer.model.h] */
    @Override // android.telecom.CallScreeningService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onScreenCall(android.telecom.Call.Details r9) {
        /*
            Method dump skipped, instructions count: 1767
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.services.MyCallScreeningService.onScreenCall(android.telecom.Call$Details):void");
    }
}
