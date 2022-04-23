package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.auth.api.signin.internal.HashAccumulator;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p170b.p224d.p234b.p235a.p236a.C3240a;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptions.class */
public class GoogleSignInOptions extends AbstractSafeParcelable implements Api.ApiOptions.Optional, ReflectedParcelable {

    /* renamed from: o */
    public static final GoogleSignInOptions f22935o;

    /* renamed from: p */
    public static final GoogleSignInOptions f22936p;
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f22937a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final ArrayList<Scope> f22938b;
    @SafeParcelable.Field

    /* renamed from: c */
    public Account f22939c;
    @SafeParcelable.Field

    /* renamed from: d */
    public boolean f22940d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final boolean f22941e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final boolean f22942f;
    @SafeParcelable.Field

    /* renamed from: g */
    public String f22943g;
    @SafeParcelable.Field

    /* renamed from: h */
    public String f22944h;
    @SafeParcelable.Field

    /* renamed from: i */
    public ArrayList<GoogleSignInOptionsExtensionParcelable> f22945i;
    @SafeParcelable.Field

    /* renamed from: j */
    public String f22946j;
    @VisibleForTesting

    /* renamed from: k */
    public static final Scope f22931k = new Scope("profile");
    @VisibleForTesting

    /* renamed from: l */
    public static final Scope f22932l = new Scope("openid");
    @VisibleForTesting

    /* renamed from: m */
    public static final Scope f22933m = new Scope("https://www.googleapis.com/auth/games_lite");
    @VisibleForTesting

    /* renamed from: n */
    public static final Scope f22934n = new Scope("https://www.googleapis.com/auth/games");
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR = new zad();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder.class */
    public static final class Builder {

        /* renamed from: b */
        public boolean f22948b;

        /* renamed from: c */
        public boolean f22949c;

        /* renamed from: d */
        public boolean f22950d;

        /* renamed from: e */
        public String f22951e;

        /* renamed from: f */
        public Account f22952f;

        /* renamed from: g */
        public String f22953g;

        /* renamed from: i */
        public String f22955i;

        /* renamed from: a */
        public Set<Scope> f22947a = new HashSet();

        /* renamed from: h */
        public Map<Integer, GoogleSignInOptionsExtensionParcelable> f22954h = new HashMap();

        /* renamed from: a */
        public final Builder m17865a(Scope scope, Scope... scopeArr) {
            this.f22947a.add(scope);
            this.f22947a.addAll(Arrays.asList(scopeArr));
            return this;
        }

        /* renamed from: a */
        public final GoogleSignInOptions m17866a() {
            if (this.f22947a.contains(GoogleSignInOptions.f22934n) && this.f22947a.contains(GoogleSignInOptions.f22933m)) {
                this.f22947a.remove(GoogleSignInOptions.f22933m);
            }
            if (this.f22950d && (this.f22952f == null || !this.f22947a.isEmpty())) {
                m17864b();
            }
            return new GoogleSignInOptions(3, new ArrayList(this.f22947a), this.f22952f, this.f22950d, this.f22948b, this.f22949c, this.f22951e, this.f22953g, this.f22954h, this.f22955i, null);
        }

        /* renamed from: b */
        public final Builder m17864b() {
            this.f22947a.add(GoogleSignInOptions.f22932l);
            return this;
        }

        /* renamed from: c */
        public final Builder m17863c() {
            this.f22947a.add(GoogleSignInOptions.f22931k);
            return this;
        }
    }

    static {
        new Scope("email");
        Builder b = new Builder().m17864b();
        b.m17863c();
        f22935o = b.m17866a();
        Builder builder = new Builder();
        builder.m17865a(f22933m, new Scope[0]);
        f22936p = builder.m17866a();
        new C3240a();
    }

    @SafeParcelable.Constructor
    public GoogleSignInOptions(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) ArrayList<Scope> arrayList, @SafeParcelable.Param(id = 3) Account account, @SafeParcelable.Param(id = 4) boolean z, @SafeParcelable.Param(id = 5) boolean z2, @SafeParcelable.Param(id = 6) boolean z3, @SafeParcelable.Param(id = 7) String str, @SafeParcelable.Param(id = 8) String str2, @SafeParcelable.Param(id = 9) ArrayList<GoogleSignInOptionsExtensionParcelable> arrayList2, @SafeParcelable.Param(id = 10) String str3) {
        this(i, arrayList, account, z, z2, z3, str, str2, m17873a(arrayList2), str3);
    }

    public GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map<Integer, GoogleSignInOptionsExtensionParcelable> map, String str3) {
        this.f22937a = i;
        this.f22938b = arrayList;
        this.f22939c = account;
        this.f22940d = z;
        this.f22941e = z2;
        this.f22942f = z3;
        this.f22943g = str;
        this.f22944h = str2;
        this.f22945i = new ArrayList<>(map.values());
        this.f22946j = str3;
    }

    public /* synthetic */ GoogleSignInOptions(int i, ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map map, String str3, C3240a aVar) {
        this(3, arrayList, account, z, z2, z3, str, str2, map, str3);
    }

    /* renamed from: a */
    public static Map<Integer, GoogleSignInOptionsExtensionParcelable> m17873a(List<GoogleSignInOptionsExtensionParcelable> list) {
        HashMap hashMap = new HashMap();
        if (list == null) {
            return hashMap;
        }
        for (GoogleSignInOptionsExtensionParcelable googleSignInOptionsExtensionParcelable : list) {
            hashMap.put(Integer.valueOf(googleSignInOptionsExtensionParcelable.m17862f()), googleSignInOptionsExtensionParcelable);
        }
        return hashMap;
    }

    @KeepForSdk
    /* renamed from: B */
    public boolean m17875B() {
        return this.f22940d;
    }

    @KeepForSdk
    /* renamed from: D */
    public boolean m17874D() {
        return this.f22941e;
    }

    @KeepForSdk
    /* renamed from: b */
    public Account m17872b() {
        return this.f22939c;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
            if (this.f22945i.size() <= 0 && googleSignInOptions.f22945i.size() <= 0 && this.f22938b.size() == googleSignInOptions.m17869u().size() && this.f22938b.containsAll(googleSignInOptions.m17869u())) {
                if (this.f22939c == null) {
                    if (googleSignInOptions.m17872b() != null) {
                        return false;
                    }
                } else if (!this.f22939c.equals(googleSignInOptions.m17872b())) {
                    return false;
                }
                if (TextUtils.isEmpty(this.f22943g)) {
                    if (!TextUtils.isEmpty(googleSignInOptions.m17868v())) {
                        return false;
                    }
                } else if (!this.f22943g.equals(googleSignInOptions.m17868v())) {
                    return false;
                }
                if (this.f22942f == googleSignInOptions.m17867y() && this.f22940d == googleSignInOptions.m17875B() && this.f22941e == googleSignInOptions.m17874D()) {
                    return TextUtils.equals(this.f22946j, googleSignInOptions.m17870i());
                }
                return false;
            }
            return false;
        } catch (ClassCastException e) {
            return false;
        }
    }

    @KeepForSdk
    /* renamed from: f */
    public ArrayList<GoogleSignInOptionsExtensionParcelable> m17871f() {
        return this.f22945i;
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList<Scope> arrayList2 = this.f22938b;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Scope scope = arrayList2.get(i);
            i++;
            arrayList.add(scope.m17746f());
        }
        Collections.sort(arrayList);
        HashAccumulator hashAccumulator = new HashAccumulator();
        hashAccumulator.m17860a(arrayList);
        hashAccumulator.m17860a(this.f22939c);
        hashAccumulator.m17860a(this.f22943g);
        hashAccumulator.m17859a(this.f22942f);
        hashAccumulator.m17859a(this.f22940d);
        hashAccumulator.m17859a(this.f22941e);
        hashAccumulator.m17860a(this.f22946j);
        return hashAccumulator.m17861a();
    }

    @KeepForSdk
    /* renamed from: i */
    public String m17870i() {
        return this.f22946j;
    }

    @KeepForSdk
    /* renamed from: u */
    public ArrayList<Scope> m17869u() {
        return new ArrayList<>(this.f22938b);
    }

    @KeepForSdk
    /* renamed from: v */
    public String m17868v() {
        return this.f22943g;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f22937a);
        SafeParcelWriter.m17207c(parcel, 2, m17869u(), false);
        SafeParcelWriter.m17226a(parcel, 3, (Parcelable) m17872b(), i, false);
        SafeParcelWriter.m17218a(parcel, 4, m17875B());
        SafeParcelWriter.m17218a(parcel, 5, m17874D());
        SafeParcelWriter.m17218a(parcel, 6, m17867y());
        SafeParcelWriter.m17221a(parcel, 7, m17868v(), false);
        SafeParcelWriter.m17221a(parcel, 8, this.f22944h, false);
        SafeParcelWriter.m17207c(parcel, 9, m17871f(), false);
        SafeParcelWriter.m17221a(parcel, 10, m17870i(), false);
        SafeParcelWriter.m17234a(parcel, a);
    }

    @KeepForSdk
    /* renamed from: y */
    public boolean m17867y() {
        return this.f22942f;
    }
}
