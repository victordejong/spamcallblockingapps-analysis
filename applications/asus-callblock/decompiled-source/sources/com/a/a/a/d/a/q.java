package com.a.a.a.d.a;

import com.a.a.a.d.a;
import com.asus.updatesdk.BuildConfig;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/a/a/a/d/a/q.class */
public final class q implements r<o> {

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f385b = "0123456789ABCDEF".toCharArray();

    /* renamed from: a  reason: collision with root package name */
    public StringBuilder f386a = new StringBuilder();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, String str2) {
        String sb;
        if (str == null) {
            sb = null;
        } else {
            StringBuilder sb2 = new StringBuilder(str.length());
            int i = -1;
            for (int i2 = 0; i2 < str.length(); i2++) {
                char charAt = str.charAt(i2);
                if ((charAt < '0' || charAt > '9') && ((charAt < 'A' || charAt > 'Z') && ((charAt < 'a' || charAt > 'z') && "-._~".indexOf(charAt) == -1 && str2.indexOf(charAt) == -1))) {
                    i = i;
                    if (i == -1) {
                        i = i2;
                    }
                } else {
                    i = i;
                    if (i != -1) {
                        a(sb2, str.substring(i, i2));
                        i = -1;
                    }
                    sb2.append(charAt);
                }
            }
            if (i != -1) {
                a(sb2, str.substring(i, str.length()));
            }
            sb = sb2.toString();
        }
        return sb;
    }

    private static String a(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            cArr[i * 2] = f385b[i2 >>> 4];
            cArr[(i * 2) + 1] = f385b[i2 & 15];
        }
        return new String(cArr);
    }

    private static void a(StringBuilder sb, String str) {
        byte[] bytes;
        try {
            for (byte b2 : str.getBytes("UTF-8")) {
                sb.append('%');
                sb.append(String.format("%02X", Byte.valueOf(b2)));
            }
        } catch (UnsupportedEncodingException e) {
        }
    }

    @Override // com.a.a.a.d.a.r
    public final /* synthetic */ o a(b bVar) {
        if (bVar.f369b != null) {
            bVar.f369b.a(this);
            this.f386a.append("%20");
        }
        this.f386a.append(bVar.f368a.name().toLowerCase(Locale.getDefault()));
        if (bVar.c != null) {
            this.f386a.append("%20");
            bVar.c.a(this);
        }
        return bVar;
    }

    @Override // com.a.a.a.d.a.r
    public final /* synthetic */ o a(d dVar) {
        String str;
        Object obj = dVar.f371a;
        String obj2 = obj != null ? obj.toString() : "null";
        if (obj instanceof String) {
            obj2 = "'" + a(((String) obj) != null ? str.replace("'", "''") : null, BuildConfig.FLAVOR) + "'";
        } else if (obj instanceof a) {
            obj2 = "datetimeoffset'" + com.a.a.a.d.b.a.a2((Date) ((a) obj)) + "'";
        } else if (obj instanceof Date) {
            obj2 = "datetime'" + com.a.a.a.d.b.a.a2((Date) obj) + "'";
        } else if (obj instanceof byte[]) {
            obj2 = "X'" + a((byte[]) obj) + "'";
        }
        this.f386a.append(obj2);
        return dVar;
    }

    @Override // com.a.a.a.d.a.r
    public final /* synthetic */ o a(g gVar) {
        this.f386a.append(a(gVar.f375a, "!$&'()*+,;=:@"));
        return gVar;
    }

    @Override // com.a.a.a.d.a.r
    public final /* synthetic */ o a(j jVar) {
        this.f386a.append(jVar.f379a.name().toLowerCase(Locale.getDefault()));
        this.f386a.append("(");
        boolean z = true;
        for (o oVar : jVar.f380b) {
            if (!z) {
                this.f386a.append(",");
            } else {
                z = false;
            }
            oVar.a(this);
        }
        this.f386a.append(")");
        return jVar;
    }

    @Override // com.a.a.a.d.a.r
    public final /* synthetic */ o a(w wVar) {
        if (wVar.f391a == v.Parenthesis) {
            this.f386a.append("(");
            if (wVar.f392b != null) {
                wVar.f392b.a(this);
            }
            this.f386a.append(")");
        } else {
            this.f386a.append(wVar.f391a.name().toLowerCase(Locale.getDefault()));
            if (wVar.f392b != null) {
                this.f386a.append("%20");
                wVar.f392b.a(this);
            }
        }
        return wVar;
    }
}
