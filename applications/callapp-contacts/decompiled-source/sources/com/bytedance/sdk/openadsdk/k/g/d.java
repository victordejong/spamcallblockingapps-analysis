package com.bytedance.sdk.openadsdk.k.g;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.amazonaws.services.s3.util.Mimetypes;
import com.bytedance.sdk.openadsdk.k.b.c;
import com.bytedance.sdk.openadsdk.k.e;
import com.bytedance.sdk.openadsdk.k.e.a;
import com.bytedance.sdk.openadsdk.k.e.f;
import com.bytedance.sdk.openadsdk.k.i;
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
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/g/d.class */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    private static final Handler f9774b = new Handler(Looper.getMainLooper());

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f9773a = Charset.forName("UTF-8");

    /* renamed from: c  reason: collision with root package name */
    private static final ExecutorService f9775c = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    public static int a() {
        File[] listFiles;
        if (Build.VERSION.SDK_INT >= 17) {
            return Math.max(Runtime.getRuntime().availableProcessors(), 1);
        }
        try {
            File file = new File("/sys/devices/system/cpu/");
            if (!file.exists() || (listFiles = file.listFiles(new FilenameFilter() { // from class: com.bytedance.sdk.openadsdk.k.g.d.1

                /* renamed from: a  reason: collision with root package name */
                private Pattern f9776a = Pattern.compile("^cpu[0-9]+$");

                @Override // java.io.FilenameFilter
                public final boolean accept(File file2, String str) {
                    return this.f9776a.matcher(str).matches();
                }
            })) == null) {
                return 1;
            }
            return Math.max(listFiles.length, 1);
        } catch (Throwable th) {
            return 1;
        }
    }

    public static int a(a aVar) {
        int lastIndexOf;
        if (aVar == null) {
            return -1;
        }
        if (aVar.a() == 200) {
            return a(aVar.a("Content-Length", null), -1);
        }
        if (aVar.a() != 206) {
            return -1;
        }
        String a2 = aVar.a("Content-Range", null);
        if (TextUtils.isEmpty(a2) || (lastIndexOf = a2.lastIndexOf("/")) < 0 || lastIndexOf >= a2.length() - 1) {
            return -1;
        }
        return a(a2.substring(lastIndexOf + 1), -1);
    }

    public static int a(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return i;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            return i;
        }
    }

    public static com.bytedance.sdk.openadsdk.k.b.a a(a aVar, c cVar, String str, int i) {
        String str2;
        String str3;
        String str4;
        com.bytedance.sdk.openadsdk.k.b.a a2 = cVar.a(str, i);
        com.bytedance.sdk.openadsdk.k.b.a aVar2 = a2;
        if (a2 == null) {
            int a3 = a(aVar);
            String a4 = aVar.a("Content-Type", null);
            aVar2 = a2;
            if (a3 > 0) {
                aVar2 = a2;
                if (!TextUtils.isEmpty(a4)) {
                    f g = aVar.g();
                    if (g != null) {
                        str2 = g.f9730b;
                        str3 = b(g.e);
                    } else {
                        str3 = "";
                        str2 = str3;
                    }
                    String b2 = b(aVar.c());
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("requestUrl", str2);
                        jSONObject.put("requestHeaders", str3);
                        jSONObject.put("responseHeaders", b2);
                        str4 = jSONObject.toString();
                    } catch (Throwable th) {
                        str4 = "";
                    }
                    aVar2 = new com.bytedance.sdk.openadsdk.k.b.a(str, a4, a3, i, str4);
                    cVar.a(aVar2);
                }
            }
        }
        return aVar2;
    }

    public static String a(int i, int i2) {
        String b2 = b(i, i2);
        if (b2 == null) {
            return null;
        }
        return "bytes=".concat(String.valueOf(b2));
    }

    public static String a(com.bytedance.sdk.openadsdk.k.b.a aVar, int i) {
        StringBuilder sb = new StringBuilder();
        if (i <= 0) {
            sb.append("HTTP/1.1 200 OK\r\n");
        } else {
            sb.append("HTTP/1.1 206 Partial Content\r\n");
        }
        sb.append("Accept-Ranges: bytes\r\n");
        sb.append("Content-Type: ");
        sb.append(aVar.f9686b);
        sb.append("\r\n");
        if (i <= 0) {
            sb.append("Content-Length: ");
            sb.append(aVar.f9687c);
            sb.append("\r\n");
        } else {
            sb.append("Content-Range: bytes ");
            sb.append(i);
            sb.append(VerificationLanguage.REGION_PREFIX);
            sb.append(aVar.f9687c - 1);
            sb.append("/");
            sb.append(aVar.f9687c);
            sb.append("\r\n");
            sb.append("Content-Length: ");
            sb.append(aVar.f9687c - i);
            sb.append("\r\n");
        }
        sb.append("Connection: close\r\n");
        sb.append("\r\n");
        String sb2 = sb.toString();
        boolean z = e.f9723c;
        return sb2;
    }

    public static String a(a aVar, int i) {
        int a2;
        if (aVar == null || !aVar.b()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(aVar.e().toUpperCase());
        sb.append(' ');
        sb.append(aVar.a());
        sb.append(' ');
        sb.append(aVar.f());
        sb.append("\r\n");
        if (e.f9723c) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(aVar.e().toUpperCase());
            sb2.append(StringUtils.SPACE);
            sb2.append(aVar.a());
            sb2.append(StringUtils.SPACE);
            sb2.append(aVar.f());
        }
        List<i.b> a3 = a(aVar.c());
        boolean z = true;
        boolean z2 = true;
        if (a3 != null) {
            int size = a3.size();
            int i2 = 0;
            while (true) {
                z = z2;
                if (i2 >= size) {
                    break;
                }
                i.b bVar = a3.get(i2);
                z2 = z2;
                if (bVar != null) {
                    String str = bVar.f9785a;
                    String str2 = bVar.f9786b;
                    sb.append(str);
                    sb.append(": ");
                    sb.append(str2);
                    sb.append("\r\n");
                    if (!"Content-Range".equalsIgnoreCase(str)) {
                        z2 = z2;
                        if ("Accept-Ranges".equalsIgnoreCase(str)) {
                            z2 = z2;
                            if (!"bytes".equalsIgnoreCase(str2)) {
                            }
                        }
                    }
                    z2 = false;
                }
                i2++;
            }
        }
        if (z && (a2 = a(aVar)) > 0) {
            sb.append("Content-Range: bytes ");
            sb.append(Math.max(i, 0));
            sb.append(VerificationLanguage.REGION_PREFIX);
            sb.append(a2 - 1);
            sb.append("/");
            sb.append(a2);
            sb.append("\r\n");
        }
        sb.append("Connection: close\r\n");
        sb.append("\r\n");
        String sb3 = sb.toString();
        boolean z3 = e.f9723c;
        return sb3;
    }

    public static String a(a aVar, boolean z, boolean z2) {
        String a2;
        if (aVar == null) {
            if (!e.f9723c) {
                return "response null";
            }
            Log.e("TAG_PROXY_Response", "response null");
            return "response null";
        } else if (!aVar.b()) {
            if (e.f9723c) {
                Log.e("TAG_PROXY_Response", "response code: " + aVar.a());
            }
            return "response code: " + aVar.a();
        } else {
            String a3 = aVar.a("Content-Type", null);
            if (!c(a3)) {
                if (e.f9723c) {
                    Log.e("TAG_PROXY_Response", "Content-Type: ".concat(String.valueOf(a3)));
                }
                return "Content-Type: ".concat(String.valueOf(a3));
            }
            int a4 = a(aVar);
            if (a4 <= 0) {
                if (e.f9723c) {
                    Log.e("TAG_PROXY_Response", "Content-Length: ".concat(String.valueOf(a4)));
                }
                return "Content-Length: ".concat(String.valueOf(a4));
            } else if (z && ((a2 = aVar.a("Accept-Ranges", null)) == null || !a2.contains("bytes"))) {
                if (e.f9723c) {
                    Log.e("TAG_PROXY_Response", "Accept-Ranges: ".concat(String.valueOf(a2)));
                }
                return "Accept-Ranges: ".concat(String.valueOf(a2));
            } else if (!z2 || aVar.d() != null) {
                return null;
            } else {
                if (!e.f9723c) {
                    return "response body null";
                }
                Log.e("TAG_PROXY_Response", "response body null");
                return "response body null";
            }
        }
    }

    public static List<i.b> a(List<i.b> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        if (e.f9723c) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                i.b bVar = list.get(i);
                if (bVar != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(bVar.f9785a);
                    sb.append(": ");
                    sb.append(bVar.f9785a);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (i.b bVar2 : list) {
            if ("Host".equals(bVar2.f9785a) || "Keep-Alive".equals(bVar2.f9785a) || "Connection".equals(bVar2.f9785a) || "Proxy-Connection".equals(bVar2.f9785a)) {
                arrayList.add(bVar2);
            }
        }
        list.removeAll(arrayList);
        if (e.f9723c) {
            int size2 = list.size();
            for (int i2 = 0; i2 < size2; i2++) {
                i.b bVar3 = list.get(i2);
                if (bVar3 != null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(bVar3.f9785a);
                    sb2.append(": ");
                    sb2.append(bVar3.f9786b);
                }
            }
        }
        return list;
    }

    public static List<i.b> a(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return null;
        }
        try {
            Set<Map.Entry<String, String>> entrySet = map.entrySet();
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<String, String> entry : entrySet) {
                arrayList.add(new i.b(entry.getKey(), entry.getValue()));
            }
            return arrayList;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static List<String> a(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            if (a(str)) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
            }
        }
    }

    public static void a(RandomAccessFile randomAccessFile) {
        if (randomAccessFile != null) {
            try {
                randomAccessFile.getFD().sync();
                randomAccessFile.close();
            } catch (Throwable th) {
            }
        }
    }

    public static void a(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (b()) {
            f9775c.execute(runnable);
            if (e.f9723c) {
                Log.e("TAG_PROXY_UTIL", "invoke in pool thread");
                return;
            }
            return;
        }
        runnable.run();
        if (e.f9723c) {
            Log.e("TAG_PROXY_UTIL", "invoke calling thread");
        }
    }

    public static void a(ServerSocket serverSocket) {
        if (serverSocket != null) {
            try {
                serverSocket.close();
            } catch (Throwable th) {
            }
        }
    }

    public static void a(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (Throwable th) {
            }
        }
    }

    public static boolean a(String str) {
        if (str != null) {
            return str.startsWith("http://") || str.startsWith("https://");
        }
        return false;
    }

    public static int b(String str) {
        return a(str, 0);
    }

    public static String b(int i, int i2) {
        if (i >= 0 && i2 > 0) {
            return i + VerificationLanguage.REGION_PREFIX + i2;
        } else if (i > 0) {
            return i + VerificationLanguage.REGION_PREFIX;
        } else if (i >= 0 || i2 <= 0) {
            return null;
        } else {
            return VerificationLanguage.REGION_PREFIX.concat(String.valueOf(i2));
        }
    }

    public static String b(List<i.b> list) {
        if (list == null || list.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            i.b bVar = list.get(0);
            if (bVar != null) {
                sb.append(bVar.f9785a);
                sb.append(": ");
                sb.append(bVar.f9786b);
                sb.append("\r\n");
            }
        }
        return sb.toString();
    }

    public static String b(Map<String, String> map) {
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

    public static void b(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (b()) {
            runnable.run();
        } else {
            f9774b.post(runnable);
        }
    }

    public static boolean b() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }

    public static boolean c(String str) {
        if (str != null) {
            return str.startsWith("video/") || Mimetypes.MIMETYPE_OCTET_STREAM.equals(str) || "binary/octet-stream".equals(str);
        }
        return false;
    }
}
