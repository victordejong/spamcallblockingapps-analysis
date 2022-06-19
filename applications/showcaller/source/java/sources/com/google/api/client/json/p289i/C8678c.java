package com.google.api.client.json.p289i;

import com.google.api.client.json.AbstractC8667c;
import com.google.api.client.json.AbstractC8671f;
import com.google.api.client.json.JsonToken;
import com.google.api.client.util.C8731w;
import com.google.gson.stream.C9331a;
import java.io.EOFException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.api.client.json.i.c */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/json/i/c.class */
public class C8678c extends AbstractC8671f {

    /* renamed from: f */
    private final C9331a f38452f;

    /* renamed from: g */
    private final C8676a f38453g;

    /* renamed from: h */
    private List<String> f38454h = new ArrayList();

    /* renamed from: i */
    private JsonToken f38455i;

    /* renamed from: j */
    private String f38456j;

    /* renamed from: com.google.api.client.json.i.c$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/json/i/c$a.class */
    static /* synthetic */ class C8679a {

        /* renamed from: a */
        static final /* synthetic */ int[] f38457a;

        /* renamed from: b */
        static final /* synthetic */ int[] f38458b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0090 -> B:51:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0094 -> B:45:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0098 -> B:39:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009c -> B:55:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a0 -> B:49:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a4 -> B:43:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a8 -> B:37:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ac -> B:53:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b0 -> B:20:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b4 -> B:41:0x0084). Please submit an issue!!! */
        static {
            int[] iArr = new int[com.google.gson.stream.JsonToken.values().length];
            f38458b = iArr;
            try {
                iArr[com.google.gson.stream.JsonToken.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f38458b[com.google.gson.stream.JsonToken.END_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f38458b[com.google.gson.stream.JsonToken.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f38458b[com.google.gson.stream.JsonToken.END_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f38458b[com.google.gson.stream.JsonToken.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f38458b[com.google.gson.stream.JsonToken.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f38458b[com.google.gson.stream.JsonToken.STRING.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f38458b[com.google.gson.stream.JsonToken.NUMBER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f38458b[com.google.gson.stream.JsonToken.NAME.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            int[] iArr2 = new int[JsonToken.values().length];
            f38457a = iArr2;
            try {
                iArr2[JsonToken.START_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f38457a[JsonToken.START_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError e11) {
            }
        }
    }

    public C8678c(C8676a c8676a, C9331a c9331a) {
        this.f38453g = c8676a;
        this.f38452f = c9331a;
        c9331a.m1110Y(true);
    }

    /* renamed from: i0 */
    private void m2972i0() {
        JsonToken jsonToken = this.f38455i;
        C8731w.m2839a(jsonToken == JsonToken.VALUE_NUMBER_INT || jsonToken == JsonToken.VALUE_NUMBER_FLOAT);
    }

    @Override // com.google.api.client.json.AbstractC8671f
    /* renamed from: A */
    public long mo2980A() {
        m2972i0();
        return Long.parseLong(this.f38456j);
    }

    @Override // com.google.api.client.json.AbstractC8671f
    /* renamed from: C */
    public short mo2979C() {
        m2972i0();
        return Short.parseShort(this.f38456j);
    }

    @Override // com.google.api.client.json.AbstractC8671f
    /* renamed from: D */
    public String mo2978D() {
        return this.f38456j;
    }

    @Override // com.google.api.client.json.AbstractC8671f
    /* renamed from: E */
    public JsonToken mo2977E() {
        com.google.gson.stream.JsonToken jsonToken;
        JsonToken jsonToken2 = this.f38455i;
        if (jsonToken2 != null) {
            int i = C8679a.f38457a[jsonToken2.ordinal()];
            if (i == 1) {
                this.f38452f.m1108a();
                this.f38454h.add(null);
            } else if (i == 2) {
                this.f38452f.m1105e();
                this.f38454h.add(null);
            }
        }
        try {
            jsonToken = this.f38452f.m1115P();
        } catch (EOFException e) {
            jsonToken = com.google.gson.stream.JsonToken.END_DOCUMENT;
        }
        switch (C8679a.f38458b[jsonToken.ordinal()]) {
            case 1:
                this.f38456j = "[";
                this.f38455i = JsonToken.START_ARRAY;
                break;
            case 2:
                this.f38456j = "]";
                this.f38455i = JsonToken.END_ARRAY;
                List<String> list = this.f38454h;
                list.remove(list.size() - 1);
                this.f38452f.m1098p();
                break;
            case 3:
                this.f38456j = "{";
                this.f38455i = JsonToken.START_OBJECT;
                break;
            case 4:
                this.f38456j = "}";
                this.f38455i = JsonToken.END_OBJECT;
                List<String> list2 = this.f38454h;
                list2.remove(list2.size() - 1);
                this.f38452f.m1097q();
                break;
            case 5:
                if (!this.f38452f.m1122A()) {
                    this.f38456j = "false";
                    this.f38455i = JsonToken.VALUE_FALSE;
                    break;
                } else {
                    this.f38456j = "true";
                    this.f38455i = JsonToken.VALUE_TRUE;
                    break;
                }
            case 6:
                this.f38456j = "null";
                this.f38455i = JsonToken.VALUE_NULL;
                this.f38452f.m1119E();
                break;
            case 7:
                this.f38456j = this.f38452f.m1117L();
                this.f38455i = JsonToken.VALUE_STRING;
                break;
            case 8:
                String m1117L = this.f38452f.m1117L();
                this.f38456j = m1117L;
                this.f38455i = m1117L.indexOf(46) == -1 ? JsonToken.VALUE_NUMBER_INT : JsonToken.VALUE_NUMBER_FLOAT;
                break;
            case 9:
                this.f38456j = this.f38452f.m1121C();
                this.f38455i = JsonToken.FIELD_NAME;
                List<String> list3 = this.f38454h;
                list3.set(list3.size() - 1, this.f38456j);
                break;
            default:
                this.f38456j = null;
                this.f38455i = null;
                break;
        }
        return this.f38455i;
    }

    @Override // com.google.api.client.json.AbstractC8671f
    /* renamed from: Z */
    public AbstractC8671f mo2976Z() {
        JsonToken jsonToken = this.f38455i;
        if (jsonToken != null) {
            int i = C8679a.f38457a[jsonToken.ordinal()];
            if (i == 1) {
                this.f38452f.m1101h0();
                this.f38456j = "]";
                this.f38455i = JsonToken.END_ARRAY;
            } else if (i == 2) {
                this.f38452f.m1101h0();
                this.f38456j = "}";
                this.f38455i = JsonToken.END_OBJECT;
            }
        }
        return this;
    }

    @Override // com.google.api.client.json.AbstractC8671f
    /* renamed from: a */
    public BigInteger mo2975a() {
        m2972i0();
        return new BigInteger(this.f38456j);
    }

    @Override // com.google.api.client.json.AbstractC8671f, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f38452f.close();
    }

    @Override // com.google.api.client.json.AbstractC8671f
    /* renamed from: e */
    public byte mo2974e() {
        m2972i0();
        return Byte.parseByte(this.f38456j);
    }

    @Override // com.google.api.client.json.AbstractC8671f
    /* renamed from: g */
    public String mo2973g() {
        String str;
        if (this.f38454h.isEmpty()) {
            str = null;
        } else {
            List<String> list = this.f38454h;
            str = list.get(list.size() - 1);
        }
        return str;
    }

    @Override // com.google.api.client.json.AbstractC8671f
    /* renamed from: k */
    public JsonToken mo2971k() {
        return this.f38455i;
    }

    @Override // com.google.api.client.json.AbstractC8671f
    /* renamed from: p */
    public BigDecimal mo2970p() {
        m2972i0();
        return new BigDecimal(this.f38456j);
    }

    @Override // com.google.api.client.json.AbstractC8671f
    /* renamed from: q */
    public double mo2969q() {
        m2972i0();
        return Double.parseDouble(this.f38456j);
    }

    @Override // com.google.api.client.json.AbstractC8671f
    /* renamed from: u */
    public AbstractC8667c mo2968u() {
        return this.f38453g;
    }

    @Override // com.google.api.client.json.AbstractC8671f
    /* renamed from: y */
    public float mo2967y() {
        m2972i0();
        return Float.parseFloat(this.f38456j);
    }

    @Override // com.google.api.client.json.AbstractC8671f
    /* renamed from: z */
    public int mo2966z() {
        m2972i0();
        return Integer.parseInt(this.f38456j);
    }
}
