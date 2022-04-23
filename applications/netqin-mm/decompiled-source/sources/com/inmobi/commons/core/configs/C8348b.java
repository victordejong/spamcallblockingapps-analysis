package com.inmobi.commons.core.configs;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.inmobi.commons.core.configs.C8359h;
import com.inmobi.commons.core.configs.ConfigNetworkResponse;
import com.inmobi.commons.core.configs.RunnableC8355e;
import com.inmobi.commons.core.p512d.C8364c;
import com.inmobi.commons.core.p513e.C8366b;
import com.inmobi.commons.core.utilities.Logger;
import com.inmobi.commons.core.utilities.p516b.C8401e;
import com.inmobi.commons.core.utilities.uid.C8418d;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;
/* renamed from: com.inmobi.commons.core.configs.b */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/configs/b.class */
public class C8348b {

    /* renamed from: a */
    public static final String f32473a = "b";

    /* renamed from: b */
    public static Map<AbstractC8346a, ArrayList<WeakReference<AbstractC8351c>>> f32474b;

    /* renamed from: c */
    public static C8359h f32475c;

    /* renamed from: d */
    public static C8352d f32476d;

    /* renamed from: e */
    public HandlerThread f32477e;

    /* renamed from: f */
    public HandlerC8350b f32478f;

    /* renamed from: g */
    public boolean f32479g;

    /* renamed from: com.inmobi.commons.core.configs.b$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/configs/b$a.class */
    public static final class C8349a {

        /* renamed from: a */
        public static final C8348b f32480a = new C8348b((byte) 0);
    }

    /* renamed from: com.inmobi.commons.core.configs.b$b */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/configs/b$b.class */
    public static final class HandlerC8350b extends Handler implements RunnableC8355e.AbstractC8356a {

        /* renamed from: a */
        public List<AbstractC8346a> f32481a = new ArrayList();

        /* renamed from: b */
        public Map<String, Map<String, AbstractC8346a>> f32482b = new HashMap();

        /* renamed from: c */
        public Map<String, AbstractC8346a> f32483c = new HashMap();

        /* renamed from: d */
        public ExecutorService f32484d;

        public HandlerC8350b(Looper looper) {
            super(looper);
        }

        /* renamed from: a */
        private void m5830a(List<AbstractC8346a> list) {
            for (int i = 0; i < list.size(); i++) {
                AbstractC8346a aVar = list.get(i);
                HashMap hashMap = (HashMap) this.f32482b.get(C8348b.f32475c.m5818b(aVar.mo5778a()));
                HashMap hashMap2 = hashMap;
                if (hashMap == null) {
                    hashMap2 = new HashMap();
                    this.f32482b.put(C8348b.f32475c.m5818b(aVar.mo5778a()), hashMap2);
                }
                hashMap2.put(aVar.mo5778a(), aVar);
            }
        }

        /* renamed from: a */
        private boolean m5831a(String str) {
            boolean z = true;
            z = this.f32482b.get(C8348b.f32475c.m5818b(str)) != null && this.f32482b.get(C8348b.f32475c.m5818b(str)).containsKey(str);
            Map<String, AbstractC8346a> map = this.f32483c;
            if (map == null || map.containsKey(str)) {
            }
            return z;
        }

        @Override // com.inmobi.commons.core.configs.RunnableC8355e.AbstractC8356a
        /* renamed from: a */
        public final void mo5822a() {
            sendEmptyMessage(4);
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0143 -> B:24:0x0083). Please submit an issue!!! */
        @Override // com.inmobi.commons.core.configs.RunnableC8355e.AbstractC8356a
        /* renamed from: a */
        public final void mo5821a(ConfigNetworkResponse.ConfigResponse configResponse) {
            C8353c cVar = new C8353c();
            if (configResponse.m5848a()) {
                String unused = C8348b.f32473a;
                StringBuilder sb = new StringBuilder("Config fetching failed:");
                sb.append(configResponse.f32468b.mo5778a());
                sb.append(", Error code:");
                sb.append(configResponse.f32469c.f32486a);
            } else if (configResponse.f32467a == ConfigNetworkResponse.ConfigResponse.ConfigResponseStatus.NOT_MODIFIED) {
                String unused2 = C8348b.f32473a;
                new StringBuilder("Config not modified status from server:").append(configResponse.f32468b.mo5778a());
                cVar.m5827a(configResponse.f32468b.mo5778a(), System.currentTimeMillis());
            } else {
                AbstractC8346a aVar = configResponse.f32468b;
                try {
                    C8364c cVar2 = cVar.f32485a;
                    cVar2.m5801a(aVar.mo5778a() + "_config", aVar.mo5776b().toString());
                    cVar.m5827a(aVar.mo5778a(), System.currentTimeMillis());
                } catch (JSONException e) {
                }
                try {
                    HashMap hashMap = new HashMap();
                    hashMap.put("configName", configResponse.f32468b.mo5778a());
                    hashMap.put("latency", "2147483647");
                    C8366b.m5794a();
                    C8366b.m5789a("root", "ConfigFetched", hashMap);
                } catch (Exception e2) {
                    String unused3 = C8348b.f32473a;
                    StringBuilder sb2 = new StringBuilder("Error in submitting telemetry event : (");
                    sb2.append(e2.getMessage());
                    sb2.append(")");
                }
                try {
                    String unused4 = C8348b.f32473a;
                    new StringBuilder("Config cached successfully:").append(configResponse.f32468b.mo5778a());
                    String unused5 = C8348b.f32473a;
                    new StringBuilder("Config cached successfully:").append(configResponse.f32468b.mo5776b().toString());
                    C8348b.m5839b(configResponse.f32468b);
                } catch (JSONException e3) {
                }
            }
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            ExecutorService executorService;
            int i = message.what;
            if (i == 1) {
                AbstractC8346a aVar = (AbstractC8346a) message.obj;
                String unused = C8348b.f32473a;
                StringBuilder sb = new StringBuilder("Fetch requested for config:");
                sb.append(aVar.mo5778a());
                sb.append(". IsAlreadyScheduled:");
                sb.append(m5831a(aVar.mo5778a()));
                if (!m5831a(aVar.mo5778a())) {
                    this.f32481a.add(aVar);
                    if (!hasMessages(2)) {
                        sendEmptyMessage(2);
                        return;
                    }
                    return;
                }
                String unused2 = C8348b.f32473a;
                new StringBuilder("Config fetching already in progress:").append(aVar.mo5778a());
            } else if (i == 2) {
                sendEmptyMessageDelayed(3, C8348b.f32475c.f32503c * 1000);
            } else if (i != 3) {
                C8357f fVar = null;
                if (i != 4) {
                    if (i == 5 && (executorService = this.f32484d) != null && !executorService.isShutdown()) {
                        this.f32483c = null;
                        this.f32482b.clear();
                        removeMessages(3);
                        this.f32484d.shutdownNow();
                    }
                } else if (!this.f32482b.isEmpty()) {
                    Map.Entry<String, Map<String, AbstractC8346a>> next = this.f32482b.entrySet().iterator().next();
                    this.f32483c = next.getValue();
                    this.f32482b.remove(next.getKey());
                    String key = next.getKey();
                    Map<String, AbstractC8346a> map = this.f32483c;
                    int i2 = C8348b.f32475c.f32502b;
                    int i3 = C8348b.f32475c.f32501a;
                    C8418d dVar = new C8418d(C8348b.f32475c.f32471p.f32472a);
                    int d = C8401e.m5676d();
                    if (d == 0 && map.containsKey("root")) {
                        map = C8348b.m5841a(map);
                        d = 1;
                    }
                    C8357f fVar2 = new C8357f(map, dVar, key, i3, i2, d);
                    if (map.containsKey("root")) {
                        fVar = new C8357f(C8348b.m5841a(map), dVar, C8348b.f32475c.m5816e(), i3, i2, true, d);
                    }
                    this.f32484d.execute(new RunnableC8355e(this, fVar2, fVar));
                } else {
                    String unused3 = C8348b.f32473a;
                    sendEmptyMessage(5);
                }
            } else {
                m5830a(this.f32481a);
                this.f32481a.clear();
                ExecutorService executorService2 = this.f32484d;
                if (executorService2 == null || executorService2.isShutdown()) {
                    this.f32484d = Executors.newFixedThreadPool(1);
                    sendEmptyMessage(4);
                }
            }
        }
    }

    /* renamed from: com.inmobi.commons.core.configs.b$c */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/configs/b$c.class */
    public interface AbstractC8351c {
        /* renamed from: a */
        void mo5529a(AbstractC8346a aVar);
    }

    /* renamed from: com.inmobi.commons.core.configs.b$d */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/configs/b$d.class */
    public static final class C8352d implements AbstractC8351c {
        @Override // com.inmobi.commons.core.configs.C8348b.AbstractC8351c
        /* renamed from: a */
        public final void mo5529a(AbstractC8346a aVar) {
            C8359h unused = C8348b.f32475c = (C8359h) aVar;
        }
    }

    public C8348b() {
        this.f32479g = false;
        f32474b = new HashMap();
        HandlerThread handlerThread = new HandlerThread("ConfigBootstrapHandler");
        this.f32477e = handlerThread;
        handlerThread.start();
        this.f32478f = new HandlerC8350b(this.f32477e.getLooper());
        f32475c = new C8359h();
    }

    public /* synthetic */ C8348b(byte b) {
        this();
    }

    /* renamed from: a */
    public static C8348b m5847a() {
        return C8349a.f32480a;
    }

    /* renamed from: a */
    public static /* synthetic */ Map m5841a(Map map) {
        HashMap hashMap = new HashMap(1);
        hashMap.put("root", map.get("root"));
        return hashMap;
    }

    /* renamed from: a */
    public static boolean m5846a(long j, long j2) {
        return System.currentTimeMillis() - j > j2 * 1000;
    }

    /* renamed from: a */
    public static boolean m5842a(String str, String str2) {
        String[] split = str.split("\\.");
        String[] split2 = str2.split("\\.");
        try {
            for (String str3 : split) {
                if (Integer.valueOf(str3).intValue() < 0) {
                    return false;
                }
            }
            for (String str4 : split2) {
                if (Integer.valueOf(str4).intValue() < 0) {
                    return false;
                }
            }
            int length = split.length < split2.length ? split.length : split2.length;
            for (int i = 0; i < length; i++) {
                if (!split[i].equals(split2[i])) {
                    return Integer.valueOf(split[i]).intValue() < Integer.valueOf(split2[i]).intValue();
                }
            }
            return split.length < split2.length;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    /* renamed from: b */
    public static void m5839b(AbstractC8346a aVar) {
        ArrayList<WeakReference<AbstractC8351c>> arrayList = f32474b.get(aVar);
        if (arrayList != null) {
            for (int i = 0; i < arrayList.size(); i++) {
                if (!(arrayList.get(i) == null || arrayList.get(i).get() == null)) {
                    arrayList.get(i).get().mo5529a(aVar);
                }
            }
        }
    }

    /* renamed from: c */
    private void m5837c(AbstractC8346a aVar) {
        synchronized (this) {
            C8353c cVar = new C8353c();
            if (!cVar.m5828a("root")) {
                new StringBuilder("RootConfig not available. Fetching root and returning defaults for config type:").append(aVar.mo5778a());
                m5835d(new C8359h());
                return;
            }
            cVar.m5829a(f32475c);
            if (m5846a(cVar.m5826b("root"), f32475c.m5819a("root"))) {
                m5835d(new C8359h());
            }
            if (!cVar.m5828a(aVar.mo5778a())) {
                new StringBuilder("Requested config not present. Returning default and fetching. Config type:").append(aVar.mo5778a());
                m5835d(aVar.mo5773d());
                return;
            }
            cVar.m5829a(aVar);
            if (m5846a(cVar.m5826b(aVar.mo5778a()), f32475c.m5819a(aVar.mo5778a()))) {
                new StringBuilder("Requested config expired. Returning currently cached and fetching. Config type:").append(aVar.mo5778a());
                m5835d(aVar.mo5773d());
                return;
            }
            new StringBuilder("Serving config from cache. Config:").append(aVar.mo5778a());
        }
    }

    /* renamed from: d */
    public static void m5836d() {
        C8359h.C8361b bVar = f32475c.f32505e;
        String str = bVar.f32514a;
        String str2 = bVar.f32515b;
        if (str.trim().length() != 0 && m5842a("7.3.0", str.trim())) {
            Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.DEBUG;
            String str3 = f32473a;
            Logger.m5724a(internalLogLevel, str3, "A newer version (version " + str + ") of the InMobi SDK is available! You are currently on an older version (Version 7.3.0). Please download the latest InMobi SDK from " + str2);
        }
    }

    /* renamed from: d */
    private void m5835d(AbstractC8346a aVar) {
        Message obtainMessage = this.f32478f.obtainMessage();
        obtainMessage.what = 1;
        obtainMessage.obj = aVar;
        this.f32478f.sendMessage(obtainMessage);
    }

    /* renamed from: a */
    public final void m5844a(AbstractC8346a aVar, AbstractC8351c cVar) {
        synchronized (this) {
            if (!this.f32479g) {
                new StringBuilder("Config component not yet started, config can't be fetched. Requested type:").append(aVar.mo5778a());
                return;
            }
            ArrayList<WeakReference<AbstractC8351c>> arrayList = f32474b.get(aVar);
            ArrayList<WeakReference<AbstractC8351c>> arrayList2 = arrayList;
            if (arrayList == null) {
                arrayList2 = new ArrayList<>();
            }
            arrayList2.add(cVar == null ? null : new WeakReference<>(cVar));
            f32474b.put(aVar, arrayList2);
            m5837c(aVar);
        }
    }

    /* renamed from: b */
    public final void m5840b() {
        synchronized (this) {
            if (!this.f32479g) {
                this.f32479g = true;
                C8366b.m5794a().m5788a("root", f32475c.f32506f);
                if (f32476d == null) {
                    C8352d dVar = new C8352d();
                    f32476d = dVar;
                    m5844a(f32475c, dVar);
                }
                for (Map.Entry<AbstractC8346a, ArrayList<WeakReference<AbstractC8351c>>> entry : f32474b.entrySet()) {
                    AbstractC8346a key = entry.getKey();
                    m5837c(key);
                    m5839b(key);
                }
            }
        }
    }

    /* renamed from: c */
    public final void m5838c() {
        synchronized (this) {
            if (this.f32479g) {
                this.f32479g = false;
                this.f32478f.sendEmptyMessage(5);
            }
        }
    }
}
