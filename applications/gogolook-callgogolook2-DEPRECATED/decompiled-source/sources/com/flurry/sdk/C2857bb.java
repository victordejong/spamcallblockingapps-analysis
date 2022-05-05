package com.flurry.sdk;

import android.text.TextUtils;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.flurry.sdk.bb */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/bb.class */
public final class C2857bb {

    /* renamed from: a */
    public static final List<String> f4139a = Arrays.asList("requested", "filled", "unfilled", "rendered", "clicked", "prepared", "adunitMerged", "sendUrlStatusResult", "videoStart", "videoFirstQuartile", "videoMidpoint", "videoThirdQuartile", "videoCompleted", "videoProgressed", "videoView", "videoView3P", "videoClosed", "sentToUrl", "adClosed", "adWillClose", "renderFailed", "requestAdComponents", "urlVerified", "capExhausted", "pageLoadFinished", "capNotExhausted", "adExpanded", "adCollapsed");

    /* renamed from: f */
    public static final String f4140f = C2857bb.class.getSimpleName();

    /* renamed from: b */
    public String f4141b;

    /* renamed from: c */
    public boolean f4142c;

    /* renamed from: d */
    public long f4143d;

    /* renamed from: e */
    public Map<String, String> f4144e;

    /* renamed from: com.flurry.sdk.bb$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/bb$a.class */
    public static final class C2858a implements AbstractC3417kl<C2857bb> {
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public final void mo32525a(OutputStream outputStream, C2857bb bbVar) throws IOException {
            if (!(outputStream == null || bbVar == null)) {
                DataOutputStream dataOutputStream = new DataOutputStream(this, outputStream) { // from class: com.flurry.sdk.bb.a.1
                    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                    public final void close() {
                    }
                };
                dataOutputStream.writeUTF(bbVar.f4141b);
                dataOutputStream.writeBoolean(bbVar.f4142c);
                dataOutputStream.writeLong(bbVar.f4143d);
                dataOutputStream.writeShort(bbVar.f4144e.size());
                for (Map.Entry entry : bbVar.f4144e.entrySet()) {
                    dataOutputStream.writeUTF((String) entry.getKey());
                    dataOutputStream.writeUTF((String) entry.getValue());
                }
                dataOutputStream.flush();
            }
        }

        /* renamed from: b */
        public final C2857bb mo32526a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(this, inputStream) { // from class: com.flurry.sdk.bb.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            C2857bb bbVar = new C2857bb((byte) 0);
            bbVar.f4141b = dataInputStream.readUTF();
            bbVar.f4142c = dataInputStream.readBoolean();
            bbVar.f4143d = dataInputStream.readLong();
            bbVar.f4144e = new HashMap();
            short readShort = dataInputStream.readShort();
            for (short s = 0; s < readShort; s = (short) (s + 1)) {
                bbVar.f4144e.put(dataInputStream.readUTF(), dataInputStream.readUTF());
            }
            return bbVar;
        }
    }

    public C2857bb() {
    }

    public /* synthetic */ C2857bb(byte b) {
        this();
    }

    public C2857bb(String str, boolean z, long j, Map<String, String> map) {
        if (!f4139a.contains(str)) {
            String str2 = f4140f;
            C3356jq.m32613a(str2, "AdEvent initialized with unrecognized type: " + str);
        }
        this.f4141b = str;
        this.f4142c = z;
        this.f4143d = j;
        if (map == null) {
            this.f4144e = new HashMap();
        } else {
            this.f4144e = map;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2857bb)) {
            return false;
        }
        C2857bb bbVar = (C2857bb) obj;
        if (!TextUtils.equals(this.f4141b, bbVar.f4141b) || this.f4142c != bbVar.f4142c || this.f4143d != bbVar.f4143d) {
            return false;
        }
        Map<String, String> map = this.f4144e;
        Map<String, String> map2 = bbVar.f4144e;
        if (map != map2) {
            return map != null && map.equals(map2);
        }
        return true;
    }

    public final int hashCode() {
        String str = this.f4141b;
        int i = 17;
        if (str != null) {
            i = 17 ^ str.hashCode();
        }
        int i2 = i;
        if (this.f4142c) {
            i2 = i ^ 1;
        }
        int i3 = (int) (i2 ^ this.f4143d);
        Map<String, String> map = this.f4144e;
        int i4 = i3;
        if (map != null) {
            i4 = i3 ^ map.hashCode();
        }
        return i4;
    }
}
