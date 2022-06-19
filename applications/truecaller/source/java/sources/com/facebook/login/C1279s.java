package com.facebook.login;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.c0.c;
import s1.d0.i;
import s1.d0.j;
import s1.f0.v;
import s1.z.c.l;
@Metadata(d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\"\n\u0002\b\u0004\u0018�� \u000f2\u00020\u0001:\u0001\u000fB!\b\u0017\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006B+\b\u0016\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0002\u0010\bR\u0011\u0010\u0007\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\nR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\f¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/facebook/login/LoginConfiguration;", "", "permissions", "", "", "nonce", "(Ljava/util/Collection;Ljava/lang/String;)V", "codeVerifier", "(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V", "getCodeVerifier", "()Ljava/lang/String;", "getNonce", "", "getPermissions", "()Ljava/util/Set;", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.login.s */
/* loaded from: classes2-dex2jar.jar:com/facebook/login/s.class */
public final class C1279s {

    /* renamed from: a */
    public final Set<String> f3485a;

    /* renamed from: b */
    public final String f3486b;

    /* renamed from: c */
    public final String f3487c;

    /* JADX WARN: Type inference failed for: r0v10, types: [int, java.util.List] */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r0v26, types: [java.util.Set, java.lang.Object, java.util.Set<java.lang.String>, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v42, types: [boolean, java.lang.Iterable, java.util.ArrayList, s1.c0.c$a] */
    public C1279s(Collection collection, String str, int i) {
        boolean z;
        boolean z2;
        String m8627e2 = (i & 2) != 0 ? C22128a.m8627e2("randomUUID().toString()") : null;
        l.e(m8627e2, "nonce");
        j.h(new i(43, 128), c.b);
        new ArrayList((int) s1.u.i.m0(s1.u.i.m0(s1.u.i.m0(s1.u.i.m0(s1.u.i.l0(s1.u.i.j0(new s1.d0.c('a', 'z'), new s1.d0.c('A', 'Z')), new s1.d0.c('0', '9')), '-'), '.'), '_'), '~'));
        int i2 = 0;
        while (true) {
            ?? r0 = i2;
            if (r0 >= r0) {
                s1.u.i.O((Iterable) r0, "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62);
                String str2 = m8627e2;
                l.e(str2, "nonce");
                l.e(str2, "codeVerifier");
                if (m8627e2.length() == 0) {
                    z2 = false;
                    z = null;
                } else {
                    z2 = !(v.G(m8627e2, ' ', 0, false, 6) >= 0);
                    z = z2;
                }
                boolean z3 = z2;
                String str3 = z;
                if (str3 != null) {
                    z3 = str3;
                    if (C1292y.m41538b(str3)) {
                        z3 = 1;
                    }
                }
                if (z3 == null) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                HashSet hashSet = collection != null ? new HashSet(collection) : new HashSet();
                hashSet.add("openid");
                ?? unmodifiableSet = Collections.unmodifiableSet(hashSet);
                l.d((Object) unmodifiableSet, "unmodifiableSet(permissions)");
                this.f3485a = unmodifiableSet;
                this.f3486b = m8627e2;
                this.f3487c = unmodifiableSet;
                return;
            }
            ArrayList arrayList = c.b;
            l.e(arrayList, "$this$random");
            l.e(arrayList, "random");
            ?? isEmpty = arrayList.isEmpty();
            if (isEmpty != 0) {
                throw new NoSuchElementException("Collection is empty.");
            }
            isEmpty.add(Character.valueOf(((Character) s1.u.i.u((Iterable) isEmpty, isEmpty.c(isEmpty.size()))).charValue()));
            i2++;
        }
    }
}
