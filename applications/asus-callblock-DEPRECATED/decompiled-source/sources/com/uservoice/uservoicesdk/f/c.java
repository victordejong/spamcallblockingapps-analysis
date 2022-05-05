package com.uservoice.uservoicesdk.f;

import android.support.v4.app.i;
import android.widget.Toast;
import com.uservoice.uservoicesdk.a.a;
import com.uservoice.uservoicesdk.d;
import com.uservoice.uservoicesdk.e;
import com.uservoice.uservoicesdk.model.b;
import com.uservoice.uservoicesdk.model.k;
import com.uservoice.uservoicesdk.ui.a;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/f/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    final b f4672a;

    /* renamed from: b  reason: collision with root package name */
    String f4673b;
    String c;
    final i d;
    public boolean e;
    private Pattern f = Pattern.compile("\\A(\\w[-+.\\w!\\#\\$%&'\\*\\+\\-/=\\?\\^_`\\{\\|\\}~]*@([-\\w]*\\.)+[a-zA-Z]{2,9})\\z");

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0036, code lost:
        if (r6.trim().length() == 0) goto L_0x0039;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x001f, code lost:
        if (r5.trim().length() == 0) goto L_0x0022;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public c(android.support.v4.app.i r4, java.lang.String r5, java.lang.String r6, com.uservoice.uservoicesdk.f.b r7) {
        /*
            r3 = this;
            r0 = r3
            r0.<init>()
            r0 = r3
            java.lang.String r1 = "\\A(\\w[-+.\\w!\\#\\$%&'\\*\\+\\-/=\\?\\^_`\\{\\|\\}~]*@([-\\w]*\\.)+[a-zA-Z]{2,9})\\z"
            java.util.regex.Pattern r1 = java.util.regex.Pattern.compile(r1)
            r0.f = r1
            r0 = r3
            r1 = r4
            r0.d = r1
            r0 = r5
            if (r0 == 0) goto L_0x0022
            r0 = r5
            r4 = r0
            r0 = r5
            java.lang.String r0 = r0.trim()
            int r0 = r0.length()
            if (r0 != 0) goto L_0x0024
        L_0x0022:
            r0 = 0
            r4 = r0
        L_0x0024:
            r0 = r3
            r1 = r4
            r0.f4673b = r1
            r0 = r6
            if (r0 == 0) goto L_0x0039
            r0 = r6
            r4 = r0
            r0 = r6
            java.lang.String r0 = r0.trim()
            int r0 = r0.length()
            if (r0 != 0) goto L_0x003b
        L_0x0039:
            r0 = 0
            r4 = r0
        L_0x003b:
            r0 = r3
            r1 = r4
            r0.c = r1
            r0 = r3
            r1 = r7
            r0.f4672a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uservoice.uservoicesdk.f.c.<init>(android.support.v4.app.i, java.lang.String, java.lang.String, com.uservoice.uservoicesdk.f.b):void");
    }

    public static void a(i iVar, String str, String str2, b bVar) {
        new c(iVar, str, str2, bVar).a();
    }

    static /* synthetic */ void a(c cVar) {
        com.uservoice.uservoicesdk.model.i.a(new a<com.uservoice.uservoicesdk.model.i>(cVar.d) { // from class: com.uservoice.uservoicesdk.f.c.2
            @Override // com.uservoice.uservoicesdk.j.a
            public final /* synthetic */ void a(Object obj) {
                e.a().d = (com.uservoice.uservoicesdk.model.i) obj;
                k.a(c.this.f4673b, c.this.c, new a<b<k>>(c.this.d) { // from class: com.uservoice.uservoicesdk.f.c.2.1
                    @Override // com.uservoice.uservoicesdk.j.a
                    public final /* bridge */ /* synthetic */ void a(Object obj2) {
                        b bVar = (b) obj2;
                        e.a().a((k) bVar.f4739a);
                        e.a().a(bVar.f4740b);
                        com.uservoice.uservoicesdk.a.a.a(a.EnumC0133a.IDENTIFY);
                        c.this.f4672a.a();
                    }
                });
            }
        });
    }

    public final void a() {
        if (this.f4673b != null && this.f4673b.equals(e.a().d()) && this.c != null && this.c.equals(e.a().c()) && e.a().e != null) {
            this.f4672a.a();
        } else if (this.f4673b == null || this.f.matcher(this.f4673b).matches()) {
            this.f4673b = this.f4673b == null ? e.a().d() : this.f4673b;
            this.c = this.c == null ? e.a().c() : this.c;
            if (this.f4673b != null) {
                k.a(this.f4673b, new com.uservoice.uservoicesdk.j.a<k>() { // from class: com.uservoice.uservoicesdk.f.c.1
                    @Override // com.uservoice.uservoicesdk.j.a
                    public final void a(com.uservoice.uservoicesdk.j.e eVar) {
                        c.a(c.this);
                    }

                    @Override // com.uservoice.uservoicesdk.j.a
                    public final /* synthetic */ void a(k kVar) {
                        if (kVar.f4765a.equals(c.this.c)) {
                            c.this.b();
                        } else {
                            c.a(c.this);
                        }
                    }
                });
            } else {
                b();
            }
        } else {
            Toast.makeText(this.d, d.f.D, 0).show();
        }
    }

    final void b() {
        if (this.e) {
            new com.uservoice.uservoicesdk.e.c(this.f4672a).a(this.d.getSupportFragmentManager(), "PasswordDialogFragment");
        } else {
            new com.uservoice.uservoicesdk.e.d(this.f4673b, this.c, this.f4672a).a(this.d.getSupportFragmentManager(), "SigninDialogFragment");
        }
    }
}
