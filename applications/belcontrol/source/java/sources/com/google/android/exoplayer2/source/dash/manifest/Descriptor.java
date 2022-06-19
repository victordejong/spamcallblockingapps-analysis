package com.google.android.exoplayer2.source.dash.manifest;

import com.google.android.exoplayer2.util.Util;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/dash/manifest/Descriptor.class */
public final class Descriptor {

    /* renamed from: id */
    public final String f3605id;
    public final String schemeIdUri;
    public final String value;

    public Descriptor(String str, String str2, String str3) {
        this.schemeIdUri = str;
        this.value = str2;
        this.f3605id = str3;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || Descriptor.class != obj.getClass()) {
            return false;
        }
        Descriptor descriptor = (Descriptor) obj;
        if (!Util.areEqual(this.schemeIdUri, descriptor.schemeIdUri) || !Util.areEqual(this.value, descriptor.value) || !Util.areEqual(this.f3605id, descriptor.f3605id)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.schemeIdUri;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.value;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f3605id;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }
}
