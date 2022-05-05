package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptions.class */
public class GoogleSignInOptions extends AbstractSafeParcelable implements a.AbstractC0110a.c {
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR;

    /* renamed from: a  reason: collision with root package name */
    public static final Scope f3908a = new Scope("profile");

    /* renamed from: b  reason: collision with root package name */
    public static final Scope f3909b = new Scope("email");
    public static final Scope c = new Scope("openid");
    public static final GoogleSignInOptions d;
    private static Comparator<Scope> m;
    final int e;
    Account f;
    boolean g;
    final boolean h;
    final boolean i;
    String j;
    String k;
    private final ArrayList<Scope> l;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptions$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        Set<Scope> f3910a = new HashSet();

        /* renamed from: b  reason: collision with root package name */
        boolean f3911b;
        boolean c;
        boolean d;
        String e;
        Account f;
        String g;

        public final a a() {
            this.f3910a.add(GoogleSignInOptions.c);
            return this;
        }
    }

    static {
        a a2 = new a().a();
        a2.f3910a.add(f3908a);
        if (a2.d && (a2.f == null || !a2.f3910a.isEmpty())) {
            a2.a();
        }
        d = new GoogleSignInOptions(a2.f3910a, a2.f, a2.d, a2.f3911b, a2.c, a2.e, a2.g, (byte) 0);
        CREATOR = new b();
        m = new Comparator<Scope>() { // from class: com.google.android.gms.auth.api.signin.GoogleSignInOptions.1
            @Override // java.util.Comparator
            public final /* synthetic */ int compare(Scope scope, Scope scope2) {
                return scope.f3944b.compareTo(scope2.f3944b);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2) {
        this.e = i;
        this.l = arrayList;
        this.f = account;
        this.g = z;
        this.h = z2;
        this.i = z3;
        this.j = str;
        this.k = str2;
    }

    private GoogleSignInOptions(Set<Scope> set, Account account, boolean z, boolean z2, boolean z3, String str, String str2) {
        this(2, new ArrayList(set), account, z, z2, z3, str, str2);
    }

    private /* synthetic */ GoogleSignInOptions(Set set, Account account, boolean z, boolean z2, boolean z3, String str, String str2, byte b2) {
        this(set, account, z, z2, z3, str, str2);
    }

    public final ArrayList<Scope> a() {
        return new ArrayList<>(this.l);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003f, code lost:
        if (r0.f == null) goto L_0x0042;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0055, code lost:
        if (android.text.TextUtils.isEmpty(r0.j) != false) goto L_0x0058;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a8, code lost:
        if (r3.j.equals(r0.j) != false) goto L_0x0058;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L_0x000a
            r0 = r5
            r6 = r0
        L_0x0008:
            r0 = r6
            return r0
        L_0x000a:
            r0 = r4
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r0 = (com.google.android.gms.auth.api.signin.GoogleSignInOptions) r0     // Catch: ClassCastException -> 0x00ae
            r4 = r0
            r0 = r5
            r6 = r0
            r0 = r3
            java.util.ArrayList<com.google.android.gms.common.api.Scope> r0 = r0.l     // Catch: ClassCastException -> 0x00ae
            int r0 = r0.size()     // Catch: ClassCastException -> 0x00ae
            r1 = r4
            java.util.ArrayList r1 = r1.a()     // Catch: ClassCastException -> 0x00ae
            int r1 = r1.size()     // Catch: ClassCastException -> 0x00ae
            if (r0 != r1) goto L_0x0008
            r0 = r5
            r6 = r0
            r0 = r3
            java.util.ArrayList<com.google.android.gms.common.api.Scope> r0 = r0.l     // Catch: ClassCastException -> 0x00ae
            r1 = r4
            java.util.ArrayList r1 = r1.a()     // Catch: ClassCastException -> 0x00ae
            boolean r0 = r0.containsAll(r1)     // Catch: ClassCastException -> 0x00ae
            if (r0 == 0) goto L_0x0008
            r0 = r3
            android.accounts.Account r0 = r0.f     // Catch: ClassCastException -> 0x00ae
            if (r0 != 0) goto L_0x0084
            r0 = r5
            r6 = r0
            r0 = r4
            android.accounts.Account r0 = r0.f     // Catch: ClassCastException -> 0x00ae
            if (r0 != 0) goto L_0x0008
        L_0x0042:
            r0 = r3
            java.lang.String r0 = r0.j     // Catch: ClassCastException -> 0x00ae
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: ClassCastException -> 0x00ae
            if (r0 == 0) goto L_0x0097
            r0 = r5
            r6 = r0
            r0 = r4
            java.lang.String r0 = r0.j     // Catch: ClassCastException -> 0x00ae
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: ClassCastException -> 0x00ae
            if (r0 == 0) goto L_0x0008
        L_0x0058:
            r0 = r5
            r6 = r0
            r0 = r3
            boolean r0 = r0.i     // Catch: ClassCastException -> 0x00ae
            r1 = r4
            boolean r1 = r1.i     // Catch: ClassCastException -> 0x00ae
            if (r0 != r1) goto L_0x0008
            r0 = r5
            r6 = r0
            r0 = r3
            boolean r0 = r0.g     // Catch: ClassCastException -> 0x00ae
            r1 = r4
            boolean r1 = r1.g     // Catch: ClassCastException -> 0x00ae
            if (r0 != r1) goto L_0x0008
            r0 = r5
            r6 = r0
            r0 = r3
            boolean r0 = r0.h     // Catch: ClassCastException -> 0x00ae
            r1 = r4
            boolean r1 = r1.h     // Catch: ClassCastException -> 0x00ae
            if (r0 != r1) goto L_0x0008
            r0 = 1
            r6 = r0
            goto L_0x0008
        L_0x0084:
            r0 = r5
            r6 = r0
            r0 = r3
            android.accounts.Account r0 = r0.f     // Catch: ClassCastException -> 0x00ae
            r1 = r4
            android.accounts.Account r1 = r1.f     // Catch: ClassCastException -> 0x00ae
            boolean r0 = r0.equals(r1)     // Catch: ClassCastException -> 0x00ae
            if (r0 == 0) goto L_0x0008
            goto L_0x0042
        L_0x0097:
            r0 = r3
            java.lang.String r0 = r0.j     // Catch: ClassCastException -> 0x00ae
            r1 = r4
            java.lang.String r1 = r1.j     // Catch: ClassCastException -> 0x00ae
            boolean r0 = r0.equals(r1)     // Catch: ClassCastException -> 0x00ae
            r7 = r0
            r0 = r5
            r6 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0008
            goto L_0x0058
        L_0x00ae:
            r4 = move-exception
            r0 = r5
            r6 = r0
            goto L_0x0008
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.GoogleSignInOptions.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        Iterator<Scope> it = this.l.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().f3944b);
        }
        Collections.sort(arrayList);
        return new com.google.android.gms.auth.api.signin.a.a().a(arrayList).a(this.f).a(this.j).a(this.i).a(this.g).a(this.h).f3913b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        b.a(this, parcel, i);
    }
}
