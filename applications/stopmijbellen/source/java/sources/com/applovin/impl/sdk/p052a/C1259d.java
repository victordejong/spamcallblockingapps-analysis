package com.applovin.impl.sdk.p052a;

import android.view.View;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
/* renamed from: com.applovin.impl.sdk.a.d */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/a/d.class */
public class C1259d {

    /* renamed from: a */
    private final View f4523a;

    /* renamed from: b */
    private final FriendlyObstructionPurpose f4524b;

    /* renamed from: c */
    private final String f4525c;

    public C1259d(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        this.f4523a = view;
        this.f4524b = friendlyObstructionPurpose;
        this.f4525c = str;
    }

    /* renamed from: a */
    public View m6060a() {
        return this.f4523a;
    }

    /* renamed from: b */
    public FriendlyObstructionPurpose m6059b() {
        return this.f4524b;
    }

    /* renamed from: c */
    public String m6058c() {
        return this.f4525c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1259d c1259d = (C1259d) obj;
        View view = this.f4523a;
        if (view != null) {
            if (!view.equals(c1259d.f4523a)) {
                return false;
            }
        } else if (c1259d.f4523a != null) {
            return false;
        }
        if (this.f4524b != c1259d.f4524b) {
            return false;
        }
        String str = this.f4525c;
        String str2 = c1259d.f4525c;
        if (str != null) {
            z = str.equals(str2);
        } else if (str2 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        View view = this.f4523a;
        int i = 0;
        int hashCode = view != null ? view.hashCode() : 0;
        FriendlyObstructionPurpose friendlyObstructionPurpose = this.f4524b;
        int hashCode2 = friendlyObstructionPurpose != null ? friendlyObstructionPurpose.hashCode() : 0;
        String str = this.f4525c;
        if (str != null) {
            i = str.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }
}
