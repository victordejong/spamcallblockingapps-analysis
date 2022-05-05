package com.gogolook.whoscallsdk.p051ml.request;

import androidx.core.app.Person;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.SavedStateHandle;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.p632u.C15011h;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��t\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0018\n��\n\u0002\u0010\u0005\n��\n\u0002\u0010\u0012\n��\n\u0002\u0010\u0006\n��\n\u0002\u0010\u0013\n��\n\u0002\u0010\u0007\n��\n\u0002\u0010\u0014\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0015\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u0016\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� 22\u00020\u0001:\u000212B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020��¢\u0006\u0002\u0010\u0003B\u0019\b\u0012\u0012\u0010\u0010\u0004\u001a\f\u0012\u0004\u0012\u00020\u0006\u0012\u0002\b\u00030\u0005¢\u0006\u0002\u0010\u0007J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0016\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\rJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000f\u001a\u00020\u0006J\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0014J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u000f\u001a\u00020\u0006J\u0016\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0018J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u000f\u001a\u00020\u0006J\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u001cJ\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u000f\u001a\u00020\u0006J\u0016\u0010\u001f\u001a\u00020 2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020 J\u0010\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010\u000f\u001a\u00020\u0006J\u0016\u0010#\u001a\u00020$2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020$J\u0010\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010\u000f\u001a\u00020\u0006J\u000e\u0010'\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006J\u001b\u0010(\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010)2\u0006\u0010\u000f\u001a\u00020\u0006¢\u0006\u0002\u0010*J\"\u0010+\u001a\u00020\r\"\u0004\b��\u0010,2\u0006\u0010\u000f\u001a\u00020\u00062\f\u0010-\u001a\b\u0012\u0004\u0012\u0002H,0.J\b\u0010/\u001a\u00020 H\u0016J\b\u00100\u001a\u00020\u0006H\u0016R\u001d\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u00058F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005X\u0082\u000e¢\u0006\u0002\n��¨\u00063"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/request/Data;", "", "other", "(Lcom/gogolook/whoscallsdk/ml/request/Data;)V", SavedStateHandle.VALUES, "", "", "(Ljava/util/Map;)V", "keyValueMap", "getKeyValueMap", "()Ljava/util/Map;", "valuesMap", "equals", "", "getBoolean", Person.KEY_KEY, "defaultValue", "getBooleanArray", "", "getByte", "", "getByteArray", "", "getDouble", "", "getDoubleArray", "", "getFloat", "", "getFloatArray", "", "getInt", "", "getIntArray", "", "getLong", "", "getLongArray", "", "getString", "getStringArray", "", "(Ljava/lang/String;)[Ljava/lang/String;", "hasKeyWithValueOfType", ExifInterface.GPS_DIRECTION_TRUE, "klass", "Ljava/lang/Class;", "hashCode", "toString", "Builder", "Companion", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: com.gogolook.whoscallsdk.ml.request.Data */
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/request/Data.class */
public final class Data {
    public static final Companion Companion = new Companion(null);
    public static final Data EMPTY = new Builder().build();
    public Map<String, ? extends Object> valuesMap;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��p\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0018\n��\n\u0002\u0010\u0005\n��\n\u0002\u0010\u0012\n��\n\u0002\u0010\u0006\n��\n\u0002\u0010\u0013\n��\n\u0002\u0010\u0007\n��\n\u0002\u0010\u0014\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0015\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u0016\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0006\u001a\u00020\u0007J\u0016\u0010\b\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\rJ\u0016\u0010\u000e\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0013J\u0016\u0010\u0014\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0015J\u0016\u0010\u0016\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0017J\u0018\u0010\u0018\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\u0019J\u0016\u0010\u001a\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u001bJ\u0016\u0010\u001c\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u001dJ\u0016\u0010\u001e\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u001fJ\u0016\u0010 \u001a\u00020��2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020!J\u0016\u0010\"\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005J!\u0010#\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u00052\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050$¢\u0006\u0002\u0010%R\u001c\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006&"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/request/Data$Builder;", "", "()V", SavedStateHandle.VALUES, "", "", "build", "Lcom/gogolook/whoscallsdk/ml/request/Data;", "putBoolean", Person.KEY_KEY, C13032a.f29462d, "", "putBooleanArray", "", "putByte", "", "putByteArray", "", "putDouble", "", "putDoubleArray", "", "putFloat", "", "putFloatArray", "", "putInt", "", "putIntArray", "", "putLong", "", "putLongArray", "", "putString", "putStringArray", "", "(Ljava/lang/String;[Ljava/lang/String;)Lcom/gogolook/whoscallsdk/ml/request/Data$Builder;", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: com.gogolook.whoscallsdk.ml.request.Data$Builder */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/request/Data$Builder.class */
    public static final class Builder {
        public final Map<String, Object> values = new HashMap();

        public final Data build() {
            return new Data(this.values, null);
        }

        public final Builder putBoolean(String str, boolean z) {
            C15149k.m377b(str, Person.KEY_KEY);
            this.values.put(str, Boolean.valueOf(z));
            return this;
        }

        public final Builder putBooleanArray(String str, boolean[] zArr) {
            C15149k.m377b(str, Person.KEY_KEY);
            C15149k.m377b(zArr, C13032a.f29462d);
            this.values.put(str, C15011h.m598a(zArr));
            return this;
        }

        public final Builder putByte(String str, byte b) {
            C15149k.m377b(str, Person.KEY_KEY);
            this.values.put(str, Byte.valueOf(b));
            return this;
        }

        public final Builder putByteArray(String str, byte[] bArr) {
            C15149k.m377b(str, Person.KEY_KEY);
            C15149k.m377b(bArr, C13032a.f29462d);
            this.values.put(str, C15011h.m612a(bArr));
            return this;
        }

        public final Builder putDouble(String str, double d) {
            C15149k.m377b(str, Person.KEY_KEY);
            this.values.put(str, Double.valueOf(d));
            return this;
        }

        public final Builder putDoubleArray(String str, double[] dArr) {
            C15149k.m377b(str, Person.KEY_KEY);
            C15149k.m377b(dArr, C13032a.f29462d);
            this.values.put(str, C15011h.m610a(dArr));
            return this;
        }

        public final Builder putFloat(String str, float f) {
            C15149k.m377b(str, Person.KEY_KEY);
            this.values.put(str, Float.valueOf(f));
            return this;
        }

        public final Builder putFloatArray(String str, float[] fArr) {
            C15149k.m377b(str, Person.KEY_KEY);
            this.values.put(str, fArr != null ? C15011h.m609a(fArr) : null);
            return this;
        }

        public final Builder putInt(String str, int i) {
            C15149k.m377b(str, Person.KEY_KEY);
            this.values.put(str, Integer.valueOf(i));
            return this;
        }

        public final Builder putIntArray(String str, int[] iArr) {
            C15149k.m377b(str, Person.KEY_KEY);
            C15149k.m377b(iArr, C13032a.f29462d);
            this.values.put(str, C15011h.m608a(iArr));
            return this;
        }

        public final Builder putLong(String str, long j) {
            C15149k.m377b(str, Person.KEY_KEY);
            this.values.put(str, Long.valueOf(j));
            return this;
        }

        public final Builder putLongArray(String str, long[] jArr) {
            C15149k.m377b(str, Person.KEY_KEY);
            C15149k.m377b(jArr, C13032a.f29462d);
            this.values.put(str, C15011h.m606a(jArr));
            return this;
        }

        public final Builder putString(String str, String str2) {
            C15149k.m377b(str, Person.KEY_KEY);
            C15149k.m377b(str2, C13032a.f29462d);
            this.values.put(str, str2);
            return this;
        }

        public final Builder putStringArray(String str, String[] strArr) {
            C15149k.m377b(str, Person.KEY_KEY);
            C15149k.m377b(strArr, C13032a.f29462d);
            this.values.put(str, strArr);
            return this;
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/request/Data$Companion;", "", "()V", "EMPTY", "Lcom/gogolook/whoscallsdk/ml/request/Data;", "getEMPTY", "()Lcom/gogolook/whoscallsdk/ml/request/Data;", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: com.gogolook.whoscallsdk.ml.request.Data$Companion */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/request/Data$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }

        public final Data getEMPTY() {
            return Data.EMPTY;
        }
    }

    public Data(Data data) {
        C15149k.m377b(data, "other");
        this.valuesMap = new HashMap(data.valuesMap);
    }

    public Data(Map<String, ?> map) {
        this.valuesMap = new HashMap(map);
    }

    public /* synthetic */ Data(Map map, C15145g gVar) {
        this(map);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || (!C15149k.m384a(Data.class, obj.getClass()))) {
            return false;
        }
        Data data = (Data) obj;
        Set<String> keySet = this.valuesMap.keySet();
        if (!C15149k.m384a(keySet, data.valuesMap.keySet())) {
            return false;
        }
        for (String str : keySet) {
            Object obj2 = this.valuesMap.get(str);
            Object obj3 = data.valuesMap.get(str);
            if (!((obj2 == null || obj3 == null) ? obj2 == obj3 : (!(obj2 instanceof Object[]) || !(obj3 instanceof Object[])) ? C15149k.m384a(obj2, obj3) : Arrays.deepEquals((Object[]) obj2, (Object[]) obj3))) {
                return false;
            }
        }
        return true;
    }

    public final boolean getBoolean(String str, boolean z) {
        C15149k.m377b(str, Person.KEY_KEY);
        Object obj = this.valuesMap.get(str);
        Object obj2 = obj;
        if (!(obj instanceof Boolean)) {
            obj2 = null;
        }
        Boolean bool = (Boolean) obj2;
        if (bool != null) {
            z = bool.booleanValue();
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0030, code lost:
        if (((r4 instanceof java.lang.Object[]) && (((java.lang.Object[]) r4) instanceof java.lang.Boolean[])) != false) goto L_0x0038;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean[] getBooleanArray(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "key"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r3
            java.util.Map<java.lang.String, ? extends java.lang.Object> r0 = r0.valuesMap
            r1 = r4
            java.lang.Object r0 = r0.get(r1)
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0036
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Object[]
            if (r0 == 0) goto L_0x002d
            r0 = r4
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            boolean r0 = r0 instanceof java.lang.Boolean[]
            if (r0 == 0) goto L_0x002d
            r0 = 1
            r6 = r0
            goto L_0x002f
        L_0x002d:
            r0 = 0
            r6 = r0
        L_0x002f:
            r0 = r6
            if (r0 == 0) goto L_0x0036
            goto L_0x0038
        L_0x0036:
            r0 = 0
            r4 = r0
        L_0x0038:
            r0 = r4
            r7 = r0
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Boolean[]
            if (r0 != 0) goto L_0x0045
            r0 = 0
            r7 = r0
        L_0x0045:
            r0 = r7
            java.lang.Boolean[] r0 = (java.lang.Boolean[]) r0
            r7 = r0
            r0 = r5
            r4 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0059
            r0 = r7
            boolean[] r0 = p626l.p632u.C15013i.m591a(r0)
            r4 = r0
        L_0x0059:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gogolook.whoscallsdk.p051ml.request.Data.getBooleanArray(java.lang.String):boolean[]");
    }

    public final byte getByte(String str, byte b) {
        C15149k.m377b(str, Person.KEY_KEY);
        Object obj = this.valuesMap.get(str);
        Object obj2 = obj;
        if (!(obj instanceof Byte)) {
            obj2 = null;
        }
        Byte b2 = (Byte) obj2;
        byte b3 = b;
        if (b2 != null) {
            b3 = b2.byteValue();
        }
        return b3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0030, code lost:
        if (((r4 instanceof java.lang.Object[]) && (((java.lang.Object[]) r4) instanceof java.lang.Byte[])) != false) goto L_0x0038;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] getByteArray(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "key"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r3
            java.util.Map<java.lang.String, ? extends java.lang.Object> r0 = r0.valuesMap
            r1 = r4
            java.lang.Object r0 = r0.get(r1)
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0036
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Object[]
            if (r0 == 0) goto L_0x002d
            r0 = r4
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            boolean r0 = r0 instanceof java.lang.Byte[]
            if (r0 == 0) goto L_0x002d
            r0 = 1
            r6 = r0
            goto L_0x002f
        L_0x002d:
            r0 = 0
            r6 = r0
        L_0x002f:
            r0 = r6
            if (r0 == 0) goto L_0x0036
            goto L_0x0038
        L_0x0036:
            r0 = 0
            r4 = r0
        L_0x0038:
            r0 = r4
            r7 = r0
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Byte[]
            if (r0 != 0) goto L_0x0045
            r0 = 0
            r7 = r0
        L_0x0045:
            r0 = r7
            java.lang.Byte[] r0 = (java.lang.Byte[]) r0
            r7 = r0
            r0 = r5
            r4 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0059
            r0 = r7
            byte[] r0 = p626l.p632u.C15013i.m590a(r0)
            r4 = r0
        L_0x0059:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gogolook.whoscallsdk.p051ml.request.Data.getByteArray(java.lang.String):byte[]");
    }

    public final double getDouble(String str, double d) {
        C15149k.m377b(str, Person.KEY_KEY);
        Object obj = this.valuesMap.get(str);
        Object obj2 = obj;
        if (!(obj instanceof Double)) {
            obj2 = null;
        }
        Double d2 = (Double) obj2;
        if (d2 != null) {
            d = d2.doubleValue();
        }
        return d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0030, code lost:
        if (((r4 instanceof java.lang.Object[]) && (((java.lang.Object[]) r4) instanceof java.lang.Double[])) != false) goto L_0x0038;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final double[] getDoubleArray(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "key"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r3
            java.util.Map<java.lang.String, ? extends java.lang.Object> r0 = r0.valuesMap
            r1 = r4
            java.lang.Object r0 = r0.get(r1)
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0036
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Object[]
            if (r0 == 0) goto L_0x002d
            r0 = r4
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            boolean r0 = r0 instanceof java.lang.Double[]
            if (r0 == 0) goto L_0x002d
            r0 = 1
            r6 = r0
            goto L_0x002f
        L_0x002d:
            r0 = 0
            r6 = r0
        L_0x002f:
            r0 = r6
            if (r0 == 0) goto L_0x0036
            goto L_0x0038
        L_0x0036:
            r0 = 0
            r4 = r0
        L_0x0038:
            r0 = r4
            r7 = r0
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Double[]
            if (r0 != 0) goto L_0x0045
            r0 = 0
            r7 = r0
        L_0x0045:
            r0 = r7
            java.lang.Double[] r0 = (java.lang.Double[]) r0
            r7 = r0
            r0 = r5
            r4 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0059
            r0 = r7
            double[] r0 = p626l.p632u.C15013i.m589a(r0)
            r4 = r0
        L_0x0059:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gogolook.whoscallsdk.p051ml.request.Data.getDoubleArray(java.lang.String):double[]");
    }

    public final float getFloat(String str, float f) {
        C15149k.m377b(str, Person.KEY_KEY);
        Object obj = this.valuesMap.get(str);
        Object obj2 = obj;
        if (!(obj instanceof Float)) {
            obj2 = null;
        }
        Float f2 = (Float) obj2;
        if (f2 != null) {
            f = f2.floatValue();
        }
        return f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0030, code lost:
        if (((r4 instanceof java.lang.Object[]) && (((java.lang.Object[]) r4) instanceof java.lang.Float[])) != false) goto L_0x0038;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float[] getFloatArray(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "key"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r3
            java.util.Map<java.lang.String, ? extends java.lang.Object> r0 = r0.valuesMap
            r1 = r4
            java.lang.Object r0 = r0.get(r1)
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0036
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Object[]
            if (r0 == 0) goto L_0x002d
            r0 = r4
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            boolean r0 = r0 instanceof java.lang.Float[]
            if (r0 == 0) goto L_0x002d
            r0 = 1
            r6 = r0
            goto L_0x002f
        L_0x002d:
            r0 = 0
            r6 = r0
        L_0x002f:
            r0 = r6
            if (r0 == 0) goto L_0x0036
            goto L_0x0038
        L_0x0036:
            r0 = 0
            r4 = r0
        L_0x0038:
            r0 = r4
            r7 = r0
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Float[]
            if (r0 != 0) goto L_0x0045
            r0 = 0
            r7 = r0
        L_0x0045:
            r0 = r7
            java.lang.Float[] r0 = (java.lang.Float[]) r0
            r7 = r0
            r0 = r5
            r4 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0059
            r0 = r7
            float[] r0 = p626l.p632u.C15013i.m588a(r0)
            r4 = r0
        L_0x0059:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gogolook.whoscallsdk.p051ml.request.Data.getFloatArray(java.lang.String):float[]");
    }

    public final int getInt(String str, int i) {
        C15149k.m377b(str, Person.KEY_KEY);
        Object obj = this.valuesMap.get(str);
        Object obj2 = obj;
        if (!(obj instanceof Integer)) {
            obj2 = null;
        }
        Integer num = (Integer) obj2;
        if (num != null) {
            i = num.intValue();
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0030, code lost:
        if (((r4 instanceof java.lang.Object[]) && (((java.lang.Object[]) r4) instanceof java.lang.Integer[])) != false) goto L_0x0038;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int[] getIntArray(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "key"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r3
            java.util.Map<java.lang.String, ? extends java.lang.Object> r0 = r0.valuesMap
            r1 = r4
            java.lang.Object r0 = r0.get(r1)
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0036
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Object[]
            if (r0 == 0) goto L_0x002d
            r0 = r4
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            boolean r0 = r0 instanceof java.lang.Integer[]
            if (r0 == 0) goto L_0x002d
            r0 = 1
            r6 = r0
            goto L_0x002f
        L_0x002d:
            r0 = 0
            r6 = r0
        L_0x002f:
            r0 = r6
            if (r0 == 0) goto L_0x0036
            goto L_0x0038
        L_0x0036:
            r0 = 0
            r4 = r0
        L_0x0038:
            r0 = r4
            r7 = r0
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Integer[]
            if (r0 != 0) goto L_0x0045
            r0 = 0
            r7 = r0
        L_0x0045:
            r0 = r7
            java.lang.Integer[] r0 = (java.lang.Integer[]) r0
            r7 = r0
            r0 = r5
            r4 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0059
            r0 = r7
            int[] r0 = p626l.p632u.C15013i.m587a(r0)
            r4 = r0
        L_0x0059:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gogolook.whoscallsdk.p051ml.request.Data.getIntArray(java.lang.String):int[]");
    }

    public final Map<String, Object> getKeyValueMap() {
        Map<String, Object> unmodifiableMap = Collections.unmodifiableMap(this.valuesMap);
        C15149k.m383a((Object) unmodifiableMap, "Collections.unmodifiableMap(valuesMap)");
        return unmodifiableMap;
    }

    public final long getLong(String str, long j) {
        C15149k.m377b(str, Person.KEY_KEY);
        Object obj = this.valuesMap.get(str);
        Object obj2 = obj;
        if (!(obj instanceof Long)) {
            obj2 = null;
        }
        Long l = (Long) obj2;
        if (l != null) {
            j = l.longValue();
        }
        return j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0030, code lost:
        if (((r4 instanceof java.lang.Object[]) && (((java.lang.Object[]) r4) instanceof java.lang.Long[])) != false) goto L_0x0038;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long[] getLongArray(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "key"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r3
            java.util.Map<java.lang.String, ? extends java.lang.Object> r0 = r0.valuesMap
            r1 = r4
            java.lang.Object r0 = r0.get(r1)
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0036
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Object[]
            if (r0 == 0) goto L_0x002d
            r0 = r4
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            boolean r0 = r0 instanceof java.lang.Long[]
            if (r0 == 0) goto L_0x002d
            r0 = 1
            r6 = r0
            goto L_0x002f
        L_0x002d:
            r0 = 0
            r6 = r0
        L_0x002f:
            r0 = r6
            if (r0 == 0) goto L_0x0036
            goto L_0x0038
        L_0x0036:
            r0 = 0
            r4 = r0
        L_0x0038:
            r0 = r4
            r7 = r0
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Long[]
            if (r0 != 0) goto L_0x0045
            r0 = 0
            r7 = r0
        L_0x0045:
            r0 = r7
            java.lang.Long[] r0 = (java.lang.Long[]) r0
            r7 = r0
            r0 = r5
            r4 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0059
            r0 = r7
            long[] r0 = p626l.p632u.C15013i.m586a(r0)
            r4 = r0
        L_0x0059:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gogolook.whoscallsdk.p051ml.request.Data.getLongArray(java.lang.String):long[]");
    }

    public final String getString(String str) {
        C15149k.m377b(str, Person.KEY_KEY);
        Object obj = this.valuesMap.get(str);
        Object obj2 = obj;
        if (!(obj instanceof String)) {
            obj2 = null;
        }
        String str2 = (String) obj2;
        if (str2 == null) {
            str2 = "";
        }
        return str2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002e, code lost:
        if (((r4 instanceof java.lang.Object[]) && (((java.lang.Object[]) r4) instanceof java.lang.String[])) != false) goto L_0x0036;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String[] getStringArray(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "key"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r3
            java.util.Map<java.lang.String, ? extends java.lang.Object> r0 = r0.valuesMap
            r1 = r4
            java.lang.Object r0 = r0.get(r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0034
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Object[]
            if (r0 == 0) goto L_0x002b
            r0 = r4
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            boolean r0 = r0 instanceof java.lang.String[]
            if (r0 == 0) goto L_0x002b
            r0 = 1
            r5 = r0
            goto L_0x002d
        L_0x002b:
            r0 = 0
            r5 = r0
        L_0x002d:
            r0 = r5
            if (r0 == 0) goto L_0x0034
            goto L_0x0036
        L_0x0034:
            r0 = 0
            r4 = r0
        L_0x0036:
            r0 = r4
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof java.lang.String[]
            if (r0 != 0) goto L_0x0041
            r0 = 0
            r6 = r0
        L_0x0041:
            r0 = r6
            java.lang.String[] r0 = (java.lang.String[]) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gogolook.whoscallsdk.p051ml.request.Data.getStringArray(java.lang.String):java.lang.String[]");
    }

    public final <T> boolean hasKeyWithValueOfType(String str, Class<T> cls) {
        C15149k.m377b(str, Person.KEY_KEY);
        C15149k.m377b(cls, "klass");
        Object obj = this.valuesMap.get(str);
        return obj != null && cls.isAssignableFrom(obj.getClass());
    }

    public int hashCode() {
        return this.valuesMap.hashCode() * 31;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Data {");
        if (!this.valuesMap.isEmpty()) {
            for (String str : this.valuesMap.keySet()) {
                sb.append(str);
                sb.append(" : ");
                Object obj = this.valuesMap.get(str);
                if (obj instanceof Object[]) {
                    sb.append(Arrays.toString((Object[]) obj));
                } else {
                    sb.append(obj);
                }
                sb.append(UserProfile.CARD_CATE_SEPARATOR);
            }
        }
        sb.append(CssParser.BLOCK_END);
        String sb2 = sb.toString();
        C15149k.m383a((Object) sb2, "sb.toString()");
        return sb2;
    }
}
