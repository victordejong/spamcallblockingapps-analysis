package com.bytedance.sdk.openadsdk.p176k;

import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.p176k.p183g.C5030d;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.k.i */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/i.class */
public class C5034i {

    /* renamed from: a */
    public final C5037c f18225a;

    /* renamed from: b */
    public final List<C5036b> f18226b;

    /* renamed from: c */
    public final C5035a f18227c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.k.i$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/i$a.class */
    public static final class C5035a {

        /* renamed from: a */
        final int f18228a;

        /* renamed from: b */
        final String f18229b;

        /* renamed from: c */
        final String f18230c;

        /* renamed from: d */
        final int f18231d;

        /* renamed from: e */
        final int f18232e;

        /* renamed from: f */
        final String f18233f;

        /* renamed from: g */
        final List<String> f18234g;

        private C5035a(int i, String str, String str2, int i2, int i3, String str3, List<String> list) {
            this.f18228a = i;
            this.f18229b = str;
            this.f18230c = str2;
            this.f18231d = i2;
            this.f18232e = i3;
            this.f18233f = str3;
            this.f18234g = list;
        }

        /* renamed from: a */
        static C5035a m33203a(C5037c c5037c, List<C5036b> list) throws C5038d {
            int i;
            int i2;
            String str;
            int indexOf = c5037c.f18238b.indexOf("?");
            if (indexOf == -1) {
                throw new C5038d("path format error, path: " + c5037c.f18238b);
            }
            ArrayList arrayList = new ArrayList();
            String[] split = c5037c.f18238b.substring(indexOf + 1).split("&");
            int length = split.length;
            String str2 = null;
            String str3 = null;
            int i3 = 0;
            int i4 = 0;
            while (i4 < length) {
                String[] split2 = split[i4].split("=");
                int i5 = i3;
                String str4 = str2;
                String str5 = str3;
                if (split2.length == 2) {
                    if ("rk".equals(split2[0])) {
                        str4 = Uri.decode(split2[1]);
                        i5 = i3;
                        str5 = str3;
                    } else if ("k".equals(split2[0])) {
                        str5 = Uri.decode(split2[1]);
                        i5 = i3;
                        str4 = str2;
                    } else if (split2[0].startsWith("u")) {
                        arrayList.add(Uri.decode(split2[1]));
                        i5 = i3;
                        str4 = str2;
                        str5 = str3;
                    } else {
                        i5 = i3;
                        str4 = str2;
                        str5 = str3;
                        if ("f".equals(split2[0])) {
                            i5 = i3;
                            str4 = str2;
                            str5 = str3;
                            if (C5030d.m33214b(split2[1]) == 1) {
                                i5 = 1;
                                str5 = str3;
                                str4 = str2;
                            }
                        }
                    }
                }
                i4++;
                i3 = i5;
                str2 = str4;
                str3 = str5;
            }
            if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
                throw new C5038d("rawKey or key is empty, path: " + c5037c.f18238b);
            }
            if (list != null) {
                i = 0;
                i2 = 0;
                str = null;
                for (C5036b c5036b : list) {
                    if (c5036b != null && "Range".equalsIgnoreCase(c5036b.f18235a)) {
                        int indexOf2 = c5036b.f18236b.indexOf("=");
                        if (indexOf2 == -1) {
                            throw new C5038d("Range format error, Range: " + c5036b.f18236b);
                        } else if (!"bytes".equalsIgnoreCase(c5036b.f18236b.substring(0, indexOf2).trim())) {
                            throw new C5038d("Range format error, Range: " + c5036b.f18236b);
                        } else {
                            String substring = c5036b.f18236b.substring(indexOf2 + 1);
                            if (substring.contains(",")) {
                                throw new C5038d("Range format error, Range: " + c5036b.f18236b);
                            }
                            int indexOf3 = substring.indexOf(VerificationLanguage.REGION_PREFIX);
                            if (indexOf3 == -1) {
                                throw new C5038d("Range format error, Range: " + c5036b.f18236b);
                            }
                            String trim = substring.substring(0, indexOf3).trim();
                            String trim2 = substring.substring(indexOf3 + 1).trim();
                            try {
                                if (trim.length() > 0) {
                                    i = Integer.parseInt(trim);
                                }
                                if (trim2.length() > 0) {
                                    i2 = Integer.parseInt(trim2);
                                    if (i > i2) {
                                        throw new C5038d("Range format error, Range: " + c5036b.f18236b);
                                    }
                                }
                                str = c5036b.f18236b;
                            } catch (NumberFormatException e) {
                                throw new C5038d("Range format error, Range: " + c5036b.f18236b);
                            }
                        }
                    }
                }
            } else {
                str = null;
                i2 = 0;
                i = 0;
            }
            if (!arrayList.isEmpty()) {
                return new C5035a(i3, str2, str3, i, i2, str, arrayList);
            }
            throw new C5038d("no url found: path: " + c5037c.f18238b);
        }

        public final String toString() {
            return "Extra{flag=" + this.f18228a + ", rawKey='" + this.f18229b + "', key='" + this.f18230c + "', from=" + this.f18231d + ", to=" + this.f18232e + ", urls=" + this.f18234g + '}';
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.k.i$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/i$b.class */
    public static final class C5036b {

        /* renamed from: a */
        public final String f18235a;

        /* renamed from: b */
        public final String f18236b;

        public C5036b(String str, String str2) {
            this.f18235a = str;
            this.f18236b = str2;
        }

        /* renamed from: a */
        static C5036b m33202a(String str) throws C5038d {
            int indexOf = str.indexOf(":");
            if (indexOf != -1) {
                String trim = str.substring(0, indexOf).trim();
                String trim2 = str.substring(indexOf + 1).trim();
                if (trim.length() != 0 && trim2.length() != 0) {
                    return new C5036b(trim, trim2);
                }
                throw new C5038d("request header format error, header: ".concat(String.valueOf(str)));
            }
            throw new C5038d("request header format error, header: ".concat(String.valueOf(str)));
        }

        public final String toString() {
            return "Header{name='" + this.f18235a + "', value='" + this.f18236b + "'}";
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.k.i$c */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/i$c.class */
    public static final class C5037c {

        /* renamed from: a */
        final String f18237a;

        /* renamed from: b */
        final String f18238b;

        /* renamed from: c */
        final String f18239c;

        private C5037c(String str, String str2, String str3) {
            this.f18237a = str;
            this.f18238b = str2;
            this.f18239c = str3;
        }

        /* renamed from: a */
        static C5037c m33201a(String str) throws C5038d {
            int indexOf = str.indexOf(32);
            if (indexOf != -1) {
                int lastIndexOf = str.lastIndexOf(32);
                if (lastIndexOf <= indexOf) {
                    throw new C5038d("request line format error, line: ".concat(String.valueOf(str)));
                }
                String trim = str.substring(0, indexOf).trim();
                String trim2 = str.substring(indexOf + 1, lastIndexOf).trim();
                String trim3 = str.substring(lastIndexOf + 1).trim();
                if (trim.length() != 0 && trim2.length() != 0 && trim3.length() != 0) {
                    return new C5037c(trim, trim2, trim3);
                }
                throw new C5038d("request line format error, line: ".concat(String.valueOf(str)));
            }
            throw new C5038d("request line format error, line: ".concat(String.valueOf(str)));
        }

        public final String toString() {
            return "RequestLine{method='" + this.f18237a + "', path='" + this.f18238b + "', version='" + this.f18239c + "'}";
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.k.i$d */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/i$d.class */
    public static final class C5038d extends Exception {
        C5038d(String str) {
            super(str);
        }
    }

    public C5034i(C5037c c5037c, List<C5036b> list, C5035a c5035a) {
        this.f18225a = c5037c;
        this.f18226b = list;
        this.f18227c = c5035a;
    }

    /* renamed from: a */
    public static C5034i m33206a(InputStream inputStream) throws IOException, C5038d {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, C5030d.f18220a));
        ArrayList arrayList = new ArrayList();
        C5037c c5037c = null;
        while (true) {
            String readLine = bufferedReader.readLine();
            if (TextUtils.isEmpty(readLine)) {
                break;
            }
            String trim = readLine.trim();
            if (c5037c == null) {
                c5037c = C5037c.m33201a(trim);
            } else {
                arrayList.add(C5036b.m33202a(trim));
            }
        }
        if (c5037c != null) {
            return new C5034i(c5037c, arrayList, C5035a.m33203a(c5037c, arrayList));
        }
        throw new C5038d("request line is null");
    }

    /* renamed from: a */
    public static String m33205a(String str, String str2, List<String> list) {
        String m33204a;
        StringBuilder sb = new StringBuilder(512);
        String str3 = null;
        do {
            if (str3 != null) {
                if (list.size() == 1) {
                    return null;
                }
                list.remove(list.size() - 1);
            }
            m33204a = m33204a(sb, str, str2, list);
            str3 = m33204a;
        } while (m33204a.length() > 3072);
        return m33204a;
    }

    /* renamed from: a */
    private static String m33204a(StringBuilder sb, String str, String str2, List<String> list) {
        sb.delete(0, sb.length());
        sb.append("rk=");
        sb.append(Uri.encode(str));
        sb.append("&k=");
        sb.append(Uri.encode(str2));
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append("&u");
            sb.append(i);
            sb.append("=");
            sb.append(Uri.encode(list.get(i)));
        }
        return sb.toString();
    }

    public String toString() {
        return "Request{requestLine=" + this.f18225a + ", headers=" + this.f18226b + ", extra=" + this.f18227c + '}';
    }
}
