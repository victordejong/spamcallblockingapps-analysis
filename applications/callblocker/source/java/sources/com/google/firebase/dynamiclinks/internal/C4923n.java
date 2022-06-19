package com.google.firebase.dynamiclinks.internal;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import java.util.List;
/* renamed from: com.google.firebase.dynamiclinks.internal.n */
/* loaded from: classes-dex2jar.jar:com/google/firebase/dynamiclinks/internal/n.class */
public final class C4923n extends AbstractC2663a {
    public static final Parcelable.Creator<C4923n> CREATOR = new C4925p();

    /* renamed from: a */
    private final Uri f21044a;

    /* renamed from: b */
    private final Uri f21045b;

    /* renamed from: c */
    private final List<C4926q> f21046c;

    public C4923n(Uri uri, Uri uri2, List<C4926q> list) {
        this.f21044a = uri;
        this.f21045b = uri2;
        this.f21046c = list;
    }

    /* renamed from: a */
    public final Uri m2025a() {
        return this.f21044a;
    }

    /* renamed from: b */
    public final Uri m2024b() {
        return this.f21045b;
    }

    /* renamed from: c */
    public final List<C4926q> m2023c() {
        return this.f21046c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13937a(parcel, 1, (Parcelable) m2025a(), i, false);
        C2664b.m13937a(parcel, 2, (Parcelable) m2024b(), i, false);
        C2664b.m13921c(parcel, 3, m2023c(), false);
        C2664b.m13943a(parcel, m13944a);
    }
}
