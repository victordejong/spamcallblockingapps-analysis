package com.google.android.exoplayer2.metadata.id3;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import p193e.p1577m.p1578a.p1596c.p1613i1.C24461a;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/Id3Frame.class */
public abstract class Id3Frame implements Metadata.Entry {

    /* renamed from: a */
    public final String f4939a;

    public Id3Frame(String str) {
        this.f4939a = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: j */
    public /* synthetic */ byte[] mo39238j() {
        return C24461a.m5075a(this);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: q */
    public /* synthetic */ Format mo39237q() {
        return C24461a.m5074b(this);
    }

    public String toString() {
        return this.f4939a;
    }
}
