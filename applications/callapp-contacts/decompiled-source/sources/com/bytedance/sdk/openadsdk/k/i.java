package com.bytedance.sdk.openadsdk.k;

import android.net.Uri;
import android.text.TextUtils;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/i.class */
public class i {

    /* renamed from: a  reason: collision with root package name */
    public final c f9778a;

    /* renamed from: b  reason: collision with root package name */
    public final List<b> f9779b;

    /* renamed from: c  reason: collision with root package name */
    public final a f9780c;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/i$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        final int f9781a;

        /* renamed from: b  reason: collision with root package name */
        final String f9782b;

        /* renamed from: c  reason: collision with root package name */
        final String f9783c;

        /* renamed from: d  reason: collision with root package name */
        final int f9784d;
        final int e;
        final String f;
        final List<String> g;

        private a(int i, String str, String str2, int i2, int i3, String str3, List<String> list) {
            this.f9781a = i;
            this.f9782b = str;
            this.f9783c = str2;
            this.f9784d = i2;
            this.e = i3;
            this.f = str3;
            this.g = list;
        }

        static a a(c cVar, List<b> list) throws d {
            int i;
            int i2;
            int indexOf = cVar.f9788b.indexOf("?");
            if (indexOf != -1) {
                ArrayList arrayList = new ArrayList();
                String str = null;
                String str2 = null;
                String str3 = null;
                int i3 = 0;
                for (String str4 : cVar.f9788b.substring(indexOf + 1).split("&")) {
                    String[] split = str4.split("=");
                    i3 = i3;
                    str2 = str2;
                    str3 = str3;
                    if (split.length == 2) {
                        if ("rk".equals(split[0])) {
                            str2 = Uri.decode(split[1]);
                            i3 = i3;
                            str3 = str3;
                        } else if ("k".equals(split[0])) {
                            str3 = Uri.decode(split[1]);
                            i3 = i3;
                            str2 = str2;
                        } else if (split[0].startsWith("u")) {
                            arrayList.add(Uri.decode(split[1]));
                            i3 = i3;
                            str2 = str2;
                            str3 = str3;
                        } else {
                            i3 = i3;
                            str2 = str2;
                            str3 = str3;
                            if ("f".equals(split[0])) {
                                i3 = i3;
                                str2 = str2;
                                str3 = str3;
                                if (com.bytedance.sdk.openadsdk.k.g.d.b(split[1]) == 1) {
                                    i3 = 1;
                                    str3 = str3;
                                    str2 = str2;
                                }
                            }
                        }
                    }
                }
                if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
                    throw new d("rawKey or key is empty, path: " + cVar.f9788b);
                }
                if (list != null) {
                    i = 0;
                    i2 = 0;
                    for (b bVar : list) {
                        if (bVar != null && "Range".equalsIgnoreCase(bVar.f9785a)) {
                            int indexOf2 = bVar.f9786b.indexOf("=");
                            if (indexOf2 == -1) {
                                throw new d("Range format error, Range: " + bVar.f9786b);
                            } else if ("bytes".equalsIgnoreCase(bVar.f9786b.substring(0, indexOf2).trim())) {
                                String substring = bVar.f9786b.substring(indexOf2 + 1);
                                if (!substring.contains(",")) {
                                    int indexOf3 = substring.indexOf(VerificationLanguage.REGION_PREFIX);
                                    if (indexOf3 != -1) {
                                        String trim = substring.substring(0, indexOf3).trim();
                                        String trim2 = substring.substring(indexOf3 + 1).trim();
                                        try {
                                            if (trim.length() > 0) {
                                                i = Integer.parseInt(trim);
                                            }
                                            if (trim2.length() > 0) {
                                                i2 = Integer.parseInt(trim2);
                                                if (i > i2) {
                                                    throw new d("Range format error, Range: " + bVar.f9786b);
                                                }
                                            }
                                            str = bVar.f9786b;
                                        } catch (NumberFormatException e) {
                                            throw new d("Range format error, Range: " + bVar.f9786b);
                                        }
                                    } else {
                                        throw new d("Range format error, Range: " + bVar.f9786b);
                                    }
                                } else {
                                    throw new d("Range format error, Range: " + bVar.f9786b);
                                }
                            } else {
                                throw new d("Range format error, Range: " + bVar.f9786b);
                            }
                        }
                    }
                } else {
                    str = null;
                    i2 = 0;
                    i = 0;
                }
                if (!arrayList.isEmpty()) {
                    return new a(i3, str2, str3, i, i2, str, arrayList);
                }
                throw new d("no url found: path: " + cVar.f9788b);
            }
            throw new d("path format error, path: " + cVar.f9788b);
        }

        public final String toString() {
            return "Extra{flag=" + this.f9781a + ", rawKey='" + this.f9782b + "', key='" + this.f9783c + "', from=" + this.f9784d + ", to=" + this.e + ", urls=" + this.g + '}';
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/i$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f9785a;

        /* renamed from: b  reason: collision with root package name */
        public final String f9786b;

        public b(String str, String str2) {
            this.f9785a = str;
            this.f9786b = str2;
        }

        static b a(String str) throws d {
            int indexOf = str.indexOf(":");
            if (indexOf != -1) {
                String trim = str.substring(0, indexOf).trim();
                String trim2 = str.substring(indexOf + 1).trim();
                if (trim.length() != 0 && trim2.length() != 0) {
                    return new b(trim, trim2);
                }
                throw new d("request header format error, header: ".concat(String.valueOf(str)));
            }
            throw new d("request header format error, header: ".concat(String.valueOf(str)));
        }

        public final String toString() {
            return "Header{name='" + this.f9785a + "', value='" + this.f9786b + "'}";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/i$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        final String f9787a;

        /* renamed from: b  reason: collision with root package name */
        final String f9788b;

        /* renamed from: c  reason: collision with root package name */
        final String f9789c;

        private c(String str, String str2, String str3) {
            this.f9787a = str;
            this.f9788b = str2;
            this.f9789c = str3;
        }

        static c a(String str) throws d {
            int indexOf = str.indexOf(32);
            if (indexOf != -1) {
                int lastIndexOf = str.lastIndexOf(32);
                if (lastIndexOf > indexOf) {
                    String trim = str.substring(0, indexOf).trim();
                    String trim2 = str.substring(indexOf + 1, lastIndexOf).trim();
                    String trim3 = str.substring(lastIndexOf + 1).trim();
                    if (trim.length() != 0 && trim2.length() != 0 && trim3.length() != 0) {
                        return new c(trim, trim2, trim3);
                    }
                    throw new d("request line format error, line: ".concat(String.valueOf(str)));
                }
                throw new d("request line format error, line: ".concat(String.valueOf(str)));
            }
            throw new d("request line format error, line: ".concat(String.valueOf(str)));
        }

        public final String toString() {
            return "RequestLine{method='" + this.f9787a + "', path='" + this.f9788b + "', version='" + this.f9789c + "'}";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/i$d.class */
    public static final class d extends Exception {
        d(String str) {
            super(str);
        }
    }

    public i(c cVar, List<b> list, a aVar) {
        this.f9778a = cVar;
        this.f9779b = list;
        this.f9780c = aVar;
    }

    public static i a(InputStream inputStream) throws IOException, d {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, com.bytedance.sdk.openadsdk.k.g.d.f9773a));
        ArrayList arrayList = new ArrayList();
        c cVar = null;
        while (true) {
            String readLine = bufferedReader.readLine();
            if (TextUtils.isEmpty(readLine)) {
                break;
            }
            String trim = readLine.trim();
            if (cVar == null) {
                cVar = c.a(trim);
            } else {
                arrayList.add(b.a(trim));
            }
        }
        if (cVar != null) {
            return new i(cVar, arrayList, a.a(cVar, arrayList));
        }
        throw new d("request line is null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, String str2, List<String> list) {
        String a2;
        StringBuilder sb = new StringBuilder(512);
        String str3 = null;
        do {
            if (str3 != null) {
                if (list.size() == 1) {
                    return null;
                }
                list.remove(list.size() - 1);
            }
            a2 = a(sb, str, str2, list);
            str3 = a2;
        } while (a2.length() > 3072);
        return a2;
    }

    private static String a(StringBuilder sb, String str, String str2, List<String> list) {
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
        return "Request{requestLine=" + this.f9778a + ", headers=" + this.f9779b + ", extra=" + this.f9780c + '}';
    }
}
