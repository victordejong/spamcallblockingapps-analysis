package com.bytedance.sdk.openadsdk.p176k.p183g;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.amazonaws.services.p101s3.util.Mimetypes;
import com.bytedance.sdk.openadsdk.p176k.C5001e;
import com.bytedance.sdk.openadsdk.p176k.C5034i;
import com.bytedance.sdk.openadsdk.p176k.p178b.C4980a;
import com.bytedance.sdk.openadsdk.p176k.p178b.C4982c;
import com.bytedance.sdk.openadsdk.p176k.p181e.AbstractC5003a;
import com.bytedance.sdk.openadsdk.p176k.p181e.C5009f;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.Closeable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.RandomAccessFile;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.k.g.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/g/d.class */
public final class C5030d {

    /* renamed from: b */
    private static final Handler f18221b = new Handler(Looper.getMainLooper());

    /* renamed from: a */
    public static final Charset f18220a = Charset.forName("UTF-8");

    /* renamed from: c */
    private static final ExecutorService f18222c = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: a */
    public static int m33234a() {
        File[] listFiles;
        if (Build.VERSION.SDK_INT >= 17) {
            return Math.max(Runtime.getRuntime().availableProcessors(), 1);
        }
        try {
            File file = new File("/sys/devices/system/cpu/");
            if (file.exists() && (listFiles = file.listFiles(new FilenameFilter() { // from class: com.bytedance.sdk.openadsdk.k.g.d.1

                /* renamed from: a */
                private Pattern f18223a = Pattern.compile("^cpu[0-9]+$");

                @Override // java.io.FilenameFilter
                public final boolean accept(File file2, String str) {
                    return this.f18223a.matcher(str).matches();
                }
            })) != null) {
                return Math.max(listFiles.length, 1);
            }
            return 1;
        } catch (Throwable th) {
            return 1;
        }
    }

    /* renamed from: a */
    public static int m33231a(AbstractC5003a abstractC5003a) {
        int lastIndexOf;
        if (abstractC5003a == null) {
            return -1;
        }
        if (abstractC5003a.mo33322a() == 200) {
            return m33223a(abstractC5003a.mo33321a("Content-Length", null), -1);
        }
        if (abstractC5003a.mo33322a() != 206) {
            return -1;
        }
        String mo33321a = abstractC5003a.mo33321a("Content-Range", null);
        if (!TextUtils.isEmpty(mo33321a) && (lastIndexOf = mo33321a.lastIndexOf("/")) >= 0 && lastIndexOf < mo33321a.length() - 1) {
            return m33223a(mo33321a.substring(lastIndexOf + 1), -1);
        }
        return -1;
    }

    /* renamed from: a */
    public static int m33223a(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return i;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            return i;
        }
    }

    /* renamed from: a */
    public static C4980a m33229a(AbstractC5003a abstractC5003a, C4982c c4982c, String str, int i) {
        String str2;
        String str3;
        String str4;
        C4980a m33364a = c4982c.m33364a(str, i);
        C4980a c4980a = m33364a;
        if (m33364a == null) {
            int m33231a = m33231a(abstractC5003a);
            String mo33321a = abstractC5003a.mo33321a("Content-Type", null);
            c4980a = m33364a;
            if (m33231a > 0) {
                c4980a = m33364a;
                if (!TextUtils.isEmpty(mo33321a)) {
                    C5009f m33329g = abstractC5003a.m33329g();
                    if (m33329g != null) {
                        str2 = m33329g.f18154b;
                        str3 = m33212b(m33329g.f18157e);
                    } else {
                        str3 = "";
                        str2 = str3;
                    }
                    String m33213b = m33213b(abstractC5003a.mo33319c());
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("requestUrl", str2);
                        jSONObject.put("requestHeaders", str3);
                        jSONObject.put("responseHeaders", m33213b);
                        str4 = jSONObject.toString();
                    } catch (Throwable th) {
                        str4 = "";
                    }
                    c4980a = new C4980a(str, mo33321a, m33231a, i, str4);
                    c4982c.m33367a(c4980a);
                }
            }
        }
        return c4980a;
    }

    /* renamed from: a */
    public static String m33233a(int i, int i2) {
        String m33216b = m33216b(i, i2);
        if (m33216b == null) {
            return null;
        }
        return "bytes=".concat(String.valueOf(m33216b));
    }

    /* renamed from: a */
    public static String m33232a(C4980a c4980a, int i) {
        StringBuilder sb = new StringBuilder();
        if (i <= 0) {
            sb.append("HTTP/1.1 200 OK\r\n");
        } else {
            sb.append("HTTP/1.1 206 Partial Content\r\n");
        }
        sb.append("Accept-Ranges: bytes\r\n");
        sb.append("Content-Type: ");
        sb.append(c4980a.f18093b);
        sb.append("\r\n");
        if (i <= 0) {
            sb.append("Content-Length: ");
            sb.append(c4980a.f18094c);
            sb.append("\r\n");
        } else {
            sb.append("Content-Range: bytes ");
            sb.append(i);
            sb.append(VerificationLanguage.REGION_PREFIX);
            sb.append(c4980a.f18094c - 1);
            sb.append("/");
            sb.append(c4980a.f18094c);
            sb.append("\r\n");
            sb.append("Content-Length: ");
            sb.append(c4980a.f18094c - i);
            sb.append("\r\n");
        }
        sb.append("Connection: close\r\n");
        sb.append("\r\n");
        String sb2 = sb.toString();
        boolean z = C5001e.f18140c;
        return sb2;
    }

    /* renamed from: a */
    public static String m33230a(AbstractC5003a abstractC5003a, int i) {
        int m33231a;
        if (abstractC5003a == null || !abstractC5003a.mo33320b()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(abstractC5003a.mo33317e().toUpperCase());
        sb.append(' ');
        sb.append(abstractC5003a.mo33322a());
        sb.append(' ');
        sb.append(abstractC5003a.mo33316f());
        sb.append("\r\n");
        if (C5001e.f18140c) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(abstractC5003a.mo33317e().toUpperCase());
            sb2.append(StringUtils.SPACE);
            sb2.append(abstractC5003a.mo33322a());
            sb2.append(StringUtils.SPACE);
            sb2.append(abstractC5003a.mo33316f());
        }
        List<C5034i.C5036b> m33220a = m33220a(abstractC5003a.mo33319c());
        boolean z = true;
        boolean z2 = true;
        if (m33220a != null) {
            int size = m33220a.size();
            int i2 = 0;
            while (true) {
                z = z2;
                if (i2 >= size) {
                    break;
                }
                C5034i.C5036b c5036b = m33220a.get(i2);
                boolean z3 = z2;
                if (c5036b != null) {
                    String str = c5036b.f18235a;
                    String str2 = c5036b.f18236b;
                    sb.append(str);
                    sb.append(": ");
                    sb.append(str2);
                    sb.append("\r\n");
                    if (!"Content-Range".equalsIgnoreCase(str)) {
                        z3 = z2;
                        if ("Accept-Ranges".equalsIgnoreCase(str)) {
                            z3 = z2;
                            if (!"bytes".equalsIgnoreCase(str2)) {
                            }
                        }
                    }
                    z3 = false;
                }
                i2++;
                z2 = z3;
            }
        }
        if (z && (m33231a = m33231a(abstractC5003a)) > 0) {
            sb.append("Content-Range: bytes ");
            sb.append(Math.max(i, 0));
            sb.append(VerificationLanguage.REGION_PREFIX);
            sb.append(m33231a - 1);
            sb.append("/");
            sb.append(m33231a);
            sb.append("\r\n");
        }
        sb.append("Connection: close\r\n");
        sb.append("\r\n");
        String sb3 = sb.toString();
        boolean z4 = C5001e.f18140c;
        return sb3;
    }

    /* renamed from: a */
    public static String m33228a(AbstractC5003a abstractC5003a, boolean z, boolean z2) {
        String mo33321a;
        if (abstractC5003a == null) {
            if (!C5001e.f18140c) {
                return "response null";
            }
            Log.e("TAG_PROXY_Response", "response null");
            return "response null";
        } else if (!abstractC5003a.mo33320b()) {
            if (C5001e.f18140c) {
                Log.e("TAG_PROXY_Response", "response code: " + abstractC5003a.mo33322a());
            }
            return "response code: " + abstractC5003a.mo33322a();
        } else {
            String mo33321a2 = abstractC5003a.mo33321a("Content-Type", null);
            if (!m33211c(mo33321a2)) {
                if (C5001e.f18140c) {
                    Log.e("TAG_PROXY_Response", "Content-Type: ".concat(String.valueOf(mo33321a2)));
                }
                return "Content-Type: ".concat(String.valueOf(mo33321a2));
            }
            int m33231a = m33231a(abstractC5003a);
            if (m33231a <= 0) {
                if (C5001e.f18140c) {
                    Log.e("TAG_PROXY_Response", "Content-Length: ".concat(String.valueOf(m33231a)));
                }
                return "Content-Length: ".concat(String.valueOf(m33231a));
            } else if (z && ((mo33321a = abstractC5003a.mo33321a("Accept-Ranges", null)) == null || !mo33321a.contains("bytes"))) {
                if (C5001e.f18140c) {
                    Log.e("TAG_PROXY_Response", "Accept-Ranges: ".concat(String.valueOf(mo33321a)));
                }
                return "Accept-Ranges: ".concat(String.valueOf(mo33321a));
            } else if (!z2 || abstractC5003a.mo33318d() != null) {
                return null;
            } else {
                if (!C5001e.f18140c) {
                    return "response body null";
                }
                Log.e("TAG_PROXY_Response", "response body null");
                return "response body null";
            }
        }
    }

    /* renamed from: a */
    public static List<C5034i.C5036b> m33220a(List<C5034i.C5036b> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        if (C5001e.f18140c) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                C5034i.C5036b c5036b = list.get(i);
                if (c5036b != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(c5036b.f18235a);
                    sb.append(": ");
                    sb.append(c5036b.f18235a);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (C5034i.C5036b c5036b2 : list) {
            if ("Host".equals(c5036b2.f18235a) || "Keep-Alive".equals(c5036b2.f18235a) || "Connection".equals(c5036b2.f18235a) || "Proxy-Connection".equals(c5036b2.f18235a)) {
                arrayList.add(c5036b2);
            }
        }
        list.removeAll(arrayList);
        if (C5001e.f18140c) {
            int size2 = list.size();
            for (int i2 = 0; i2 < size2; i2++) {
                C5034i.C5036b c5036b3 = list.get(i2);
                if (c5036b3 != null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(c5036b3.f18235a);
                    sb2.append(": ");
                    sb2.append(c5036b3.f18236b);
                }
            }
        }
        return list;
    }

    /* renamed from: a */
    public static List<C5034i.C5036b> m33219a(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return null;
        }
        try {
            Set<Map.Entry<String, String>> entrySet = map.entrySet();
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<String, String> entry : entrySet) {
                arrayList.add(new C5034i.C5036b(entry.getKey(), entry.getValue()));
            }
            return arrayList;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public static List<String> m33218a(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            if (m33224a(str)) {
                arrayList.add(str);
            }
        }
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        return null;
    }

    /* renamed from: a */
    public static void m33227a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    public static void m33226a(RandomAccessFile randomAccessFile) {
        if (randomAccessFile != null) {
            try {
                randomAccessFile.getFD().sync();
                randomAccessFile.close();
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    public static void m33225a(Runnable runnable) {
        if (runnable != null) {
            if (m33217b()) {
                f18222c.execute(runnable);
                if (!C5001e.f18140c) {
                    return;
                }
                Log.e("TAG_PROXY_UTIL", "invoke in pool thread");
                return;
            }
            runnable.run();
            if (!C5001e.f18140c) {
                return;
            }
            Log.e("TAG_PROXY_UTIL", "invoke calling thread");
        }
    }

    /* renamed from: a */
    public static void m33222a(ServerSocket serverSocket) {
        if (serverSocket != null) {
            try {
                serverSocket.close();
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    public static void m33221a(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    public static boolean m33224a(String str) {
        if (str != null) {
            return str.startsWith("http://") || str.startsWith("https://");
        }
        return false;
    }

    /* renamed from: b */
    public static int m33214b(String str) {
        return m33223a(str, 0);
    }

    /* renamed from: b */
    public static String m33216b(int i, int i2) {
        if (i >= 0 && i2 > 0) {
            return i + VerificationLanguage.REGION_PREFIX + i2;
        } else if (i > 0) {
            return i + VerificationLanguage.REGION_PREFIX;
        } else if (i < 0 && i2 > 0) {
            return VerificationLanguage.REGION_PREFIX.concat(String.valueOf(i2));
        } else {
            return null;
        }
    }

    /* renamed from: b */
    public static String m33213b(List<C5034i.C5036b> list) {
        if (list == null || list.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            C5034i.C5036b c5036b = list.get(0);
            if (c5036b != null) {
                sb.append(c5036b.f18235a);
                sb.append(": ");
                sb.append(c5036b.f18236b);
                sb.append("\r\n");
            }
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static String m33212b(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb.append((Object) entry.getKey());
            sb.append(": ");
            sb.append((Object) entry.getValue());
            sb.append("\r\n");
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static void m33215b(Runnable runnable) {
        if (runnable != null) {
            if (m33217b()) {
                runnable.run();
            } else {
                f18221b.post(runnable);
            }
        }
    }

    /* renamed from: b */
    public static boolean m33217b() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }

    /* renamed from: c */
    public static boolean m33211c(String str) {
        if (str != null) {
            return str.startsWith("video/") || Mimetypes.MIMETYPE_OCTET_STREAM.equals(str) || "binary/octet-stream".equals(str);
        }
        return false;
    }
}
