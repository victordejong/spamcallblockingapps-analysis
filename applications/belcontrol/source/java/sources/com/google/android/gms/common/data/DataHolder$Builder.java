package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder$Builder.class */
public class DataHolder$Builder {
    private final String[] zaa;
    private final ArrayList<HashMap<String, Object>> zab;
    private final String zac;
    private final HashMap<Object, Integer> zad;
    private boolean zae;
    private String zaf;

    private DataHolder$Builder(String[] strArr, String str) {
        this.zaa = (String[]) Preconditions.checkNotNull(strArr);
        this.zab = new ArrayList<>();
        this.zac = str;
        this.zad = new HashMap<>();
        this.zae = false;
        this.zaf = null;
    }

    public /* synthetic */ DataHolder$Builder(String[] strArr, String str, zab zabVar) {
        this(strArr, null);
    }

    @KeepForSdk
    public DataHolder build(int i) {
        return new DataHolder(this, i, (Bundle) null, (zab) null);
    }

    @KeepForSdk
    public DataHolder build(int i, Bundle bundle) {
        return new DataHolder(this, i, bundle, -1, (zab) null);
    }

    @KeepForSdk
    public DataHolder$Builder withRow(ContentValues contentValues) {
        Asserts.checkNotNull(contentValues);
        HashMap<String, Object> hashMap = new HashMap<>(contentValues.size());
        for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
            hashMap.put(entry.getKey(), entry.getValue());
        }
        return zaa(hashMap);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.gms.common.data.DataHolder$Builder zaa(java.util.HashMap<java.lang.String, java.lang.Object> r5) {
        /*
            r4 = this;
            r0 = r5
            com.google.android.gms.common.internal.Asserts.checkNotNull(r0)
            r0 = r4
            java.lang.String r0 = r0.zac
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L12
        Ld:
            r0 = -1
            r7 = r0
            goto L4d
        L12:
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.get(r1)
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L1f
            goto Ld
        L1f:
            r0 = r4
            java.util.HashMap<java.lang.Object, java.lang.Integer> r0 = r0.zad
            r1 = r6
            java.lang.Object r0 = r0.get(r1)
            java.lang.Integer r0 = (java.lang.Integer) r0
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L47
            r0 = r4
            java.util.HashMap<java.lang.Object, java.lang.Integer> r0 = r0.zad
            r1 = r6
            r2 = r4
            java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r2 = r2.zab
            int r2 = r2.size()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            java.lang.Object r0 = r0.put(r1, r2)
            goto Ld
        L47:
            r0 = r8
            int r0 = r0.intValue()
            r7 = r0
        L4d:
            r0 = r7
            r1 = -1
            if (r0 != r1) goto L5e
            r0 = r4
            java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r0 = r0.zab
            r1 = r5
            boolean r0 = r0.add(r1)
            goto L70
        L5e:
            r0 = r4
            java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r0 = r0.zab
            r1 = r7
            java.lang.Object r0 = r0.remove(r1)
            r0 = r4
            java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r0 = r0.zab
            r1 = r7
            r2 = r5
            r0.add(r1, r2)
        L70:
            r0 = r4
            r1 = 0
            r0.zae = r1
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.data.DataHolder$Builder.zaa(java.util.HashMap):com.google.android.gms.common.data.DataHolder$Builder");
    }
}
