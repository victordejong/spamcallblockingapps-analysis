package p193e.p194a.p1365y.p1381b;

import android.content.Context;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import com.truecaller.flashsdk.assist.FlashBitmapConverter;
import java.io.File;
import javax.inject.Inject;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
import u3.j0;
/* renamed from: e.a.y.b.n */
/* loaded from: classes9-dex2jar.jar:e/a/y/b/n.class */
public final class C21615n implements AbstractC21614m {

    /* renamed from: a */
    public final Context f60270a;

    /* renamed from: b */
    public final FlashBitmapConverter f60271b;

    /* renamed from: c */
    public final AbstractC21607h f60272c;

    @e(c = "com.truecaller.flashsdk.assist.FlashMediaHelperImpl", f = "FlashMediaHelper.kt", l = {43}, m = "deleteFileForUri")
    /* renamed from: e.a.y.b.n$a */
    /* loaded from: classes9-dex2jar.jar:e/a/y/b/n$a.class */
    public static final class C21616a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f60273d;

        /* renamed from: e */
        public int f60274e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21616a(d dVar) {
            super(dVar);
            C21615n.this = r4;
        }

        /* renamed from: s */
        public final Object m9354s(Object obj) {
            this.f60273d = obj;
            this.f60274e |= Integer.MIN_VALUE;
            return C21615n.this.mo9358b(null, this);
        }
    }

    @e(c = "com.truecaller.flashsdk.assist.FlashMediaHelperImpl", f = "FlashMediaHelper.kt", l = {37}, m = "getFlashImageFromUri")
    /* renamed from: e.a.y.b.n$b */
    /* loaded from: classes9-dex2jar.jar:e/a/y/b/n$b.class */
    public static final class C21617b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f60276d;

        /* renamed from: e */
        public int f60277e;

        /* renamed from: g */
        public Object f60279g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21617b(d dVar) {
            super(dVar);
            C21615n.this = r4;
        }

        /* renamed from: s */
        public final Object m9353s(Object obj) {
            this.f60276d = obj;
            this.f60277e |= Integer.MIN_VALUE;
            return C21615n.this.mo9356d(null, this);
        }
    }

    @Inject
    public C21615n(Context context, FlashBitmapConverter flashBitmapConverter, AbstractC21607h abstractC21607h) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(flashBitmapConverter, "converter");
        l.e(abstractC21607h, "fileUtils");
        this.f60270a = context;
        this.f60271b = flashBitmapConverter;
        this.f60272c = abstractC21607h;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21614m
    /* renamed from: a */
    public j0 mo9359a(Uri uri) {
        l.e(uri, "uri");
        return new C21601e(this.f60270a, uri);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008d  */
    @Override // p193e.p194a.p1365y.p1381b.AbstractC21614m
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo9358b(android.net.Uri r6, s1.w.d<? super java.lang.Boolean> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p1365y.p1381b.C21615n.C21616a
            if (r0 == 0) goto L28
            r0 = r7
            e.a.y.b.n$a r0 = (p193e.p194a.p1365y.p1381b.C21615n.C21616a) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f60274e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f60274e = r1
            r0 = r8
            r7 = r0
            goto L32
        L28:
            e.a.y.b.n$a r0 = new e.a.y.b.n$a
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L32:
            r0 = r7
            java.lang.Object r0 = r0.f60273d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f60274e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L60
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            r6 = r0
            goto L7e
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            if (r0 == 0) goto L96
            r0 = r7
            r1 = 1
            r0.f60274e = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m9355e(r1)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r10
            if (r0 != r1) goto L7e
            r0 = r10
            return r0
        L7e:
            r0 = r6
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L96
            r0 = r6
            boolean r0 = r0.booleanValue()
            r11 = r0
            goto L99
        L96:
            r0 = 0
            r11 = r0
        L99:
            r0 = r11
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1381b.C21615n.mo9358b(android.net.Uri, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21614m
    /* renamed from: c */
    public Uri mo9357c(String str) {
        l.e(str, "extension");
        return this.f60272c.mo9367c(this.f60272c.mo9369a(str));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    @Override // p193e.p194a.p1365y.p1381b.AbstractC21614m
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo9356d(android.net.Uri r6, s1.w.d<? super android.net.Uri> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p1365y.p1381b.C21615n.C21617b
            if (r0 == 0) goto L28
            r0 = r7
            e.a.y.b.n$b r0 = (p193e.p194a.p1365y.p1381b.C21615n.C21617b) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f60277e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f60277e = r1
            r0 = r8
            r7 = r0
            goto L32
        L28:
            e.a.y.b.n$b r0 = new e.a.y.b.n$b
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L32:
            r0 = r7
            java.lang.Object r0 = r0.f60276d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f60277e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L66
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L5c
            r0 = r7
            java.lang.Object r0 = r0.f60279g
            android.net.Uri r0 = (android.net.Uri) r0
            r6 = r0
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L92
        L5c:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L66:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            if (r0 == 0) goto L94
            r0 = r5
            com.truecaller.flashsdk.assist.FlashBitmapConverter r0 = r0.f60271b
            r1 = r6
            android.net.Uri r0 = r0.mo9365a(r1)
            r8 = r0
            r0 = r7
            r1 = r8
            r0.f60279g = r1
            r0 = r7
            r1 = 1
            r0.f60277e = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m9355e(r1)
            r1 = r10
            if (r0 != r1) goto L90
            r0 = r10
            return r0
        L90:
            r0 = r8
            r6 = r0
        L92:
            r0 = r6
            return r0
        L94:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1381b.C21615n.mo9356d(android.net.Uri, s1.w.d):java.lang.Object");
    }

    /* renamed from: e */
    public final Object m9355e(Uri uri) {
        String scheme = uri.getScheme();
        boolean z = false;
        if (l.a(scheme, FlashBitmapConverter.Scheme.CONTENT.getValue())) {
            if (this.f60270a.getContentResolver().delete(uri, null, null) == 1) {
                z = true;
            }
        } else if (l.a(scheme, FlashBitmapConverter.Scheme.FILE.getValue())) {
            z = new File(uri.getPath()).delete();
        } else {
            String str = "URI scheme is not supported for deletion: " + uri;
        }
        return Boolean.valueOf(z);
    }
}
