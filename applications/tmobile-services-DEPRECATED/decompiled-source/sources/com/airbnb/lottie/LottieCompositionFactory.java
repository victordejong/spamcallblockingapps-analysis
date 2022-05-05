package com.airbnb.lottie;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import androidx.annotation.WorkerThread;
import com.airbnb.lottie.model.LottieCompositionCache;
import com.airbnb.lottie.network.NetworkFetcher;
import com.airbnb.lottie.parser.LottieCompositionMoshiParser;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Utils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import okio.Okio;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieCompositionFactory.class */
public class LottieCompositionFactory {

    /* renamed from: a */
    private static final Map<String, LottieTask<LottieComposition>> f5728a = new HashMap();

    /* renamed from: com.airbnb.lottie.LottieCompositionFactory$5 */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieCompositionFactory$5.class */
    class CallableC06275 implements Callable<LottieResult<LottieComposition>> {

        /* renamed from: f */
        final /* synthetic */ JSONObject f5743f;

        /* renamed from: g */
        final /* synthetic */ String f5744g;

        /* renamed from: a */
        public LottieResult<LottieComposition> call() {
            return LottieCompositionFactory.m16311n(this.f5743f, this.f5744g);
        }
    }

    /* renamed from: com.airbnb.lottie.LottieCompositionFactory$6 */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieCompositionFactory$6.class */
    class CallableC06286 implements Callable<LottieResult<LottieComposition>> {

        /* renamed from: f */
        final /* synthetic */ String f5745f;

        /* renamed from: g */
        final /* synthetic */ String f5746g;

        /* renamed from: a */
        public LottieResult<LottieComposition> call() {
            return LottieCompositionFactory.m16312m(this.f5745f, this.f5746g);
        }
    }

    /* renamed from: com.airbnb.lottie.LottieCompositionFactory$7 */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieCompositionFactory$7.class */
    class CallableC06297 implements Callable<LottieResult<LottieComposition>> {

        /* renamed from: f */
        final /* synthetic */ JsonReader f5747f;

        /* renamed from: g */
        final /* synthetic */ String f5748g;

        /* renamed from: a */
        public LottieResult<LottieComposition> call() {
            return LottieCompositionFactory.m16314k(this.f5747f, this.f5748g);
        }
    }

    /* renamed from: com.airbnb.lottie.LottieCompositionFactory$8 */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieCompositionFactory$8.class */
    class CallableC06308 implements Callable<LottieResult<LottieComposition>> {

        /* renamed from: f */
        final /* synthetic */ ZipInputStream f5749f;

        /* renamed from: g */
        final /* synthetic */ String f5750g;

        /* renamed from: a */
        public LottieResult<LottieComposition> call() {
            return LottieCompositionFactory.m16304u(this.f5749f, this.f5750g);
        }
    }

    private LottieCompositionFactory() {
    }

    /* renamed from: b */
    private static LottieTask<LottieComposition> m16323b(@Nullable final String str, Callable<LottieResult<LottieComposition>> callable) {
        final LottieComposition a = str == null ? null : LottieCompositionCache.m16079b().m16080a(str);
        if (a != null) {
            return new LottieTask<>(new Callable<LottieResult<LottieComposition>>() { // from class: com.airbnb.lottie.LottieCompositionFactory.9
                /* renamed from: a */
                public LottieResult<LottieComposition> call() {
                    return new LottieResult<>(LottieComposition.this);
                }
            });
        }
        if (str != null && f5728a.containsKey(str)) {
            return f5728a.get(str);
        }
        LottieTask<LottieComposition> lottieTask = new LottieTask<>(callable);
        if (str != null) {
            lottieTask.m16209f(new LottieListener<LottieComposition>() { // from class: com.airbnb.lottie.LottieCompositionFactory.10
                /* renamed from: b */
                public void mo16218a(LottieComposition lottieComposition) {
                    LottieCompositionFactory.f5728a.remove(str);
                }
            });
            lottieTask.m16210e(new LottieListener<Throwable>() { // from class: com.airbnb.lottie.LottieCompositionFactory.11
                /* renamed from: b */
                public void mo16218a(Throwable th) {
                    LottieCompositionFactory.f5728a.remove(str);
                }
            });
            f5728a.put(str, lottieTask);
        }
        return lottieTask;
    }

    @Nullable
    /* renamed from: c */
    private static LottieImageAsset m16322c(LottieComposition lottieComposition, String str) {
        for (LottieImageAsset lottieImageAsset : lottieComposition.m16338i().values()) {
            if (lottieImageAsset.m16223b().equals(str)) {
                return lottieImageAsset;
            }
        }
        return null;
    }

    /* renamed from: d */
    public static LottieTask<LottieComposition> m16321d(Context context, String str) {
        return m16320e(context, str, "asset_" + str);
    }

    /* renamed from: e */
    public static LottieTask<LottieComposition> m16320e(Context context, final String str, @Nullable final String str2) {
        final Context applicationContext = context.getApplicationContext();
        return m16323b(str2, new Callable<LottieResult<LottieComposition>>() { // from class: com.airbnb.lottie.LottieCompositionFactory.2
            /* renamed from: a */
            public LottieResult<LottieComposition> call() {
                return LottieCompositionFactory.m16318g(applicationContext, str, str2);
            }
        });
    }

    @WorkerThread
    /* renamed from: f */
    public static LottieResult<LottieComposition> m16319f(Context context, String str) {
        return m16318g(context, str, "asset_" + str);
    }

    @WorkerThread
    /* renamed from: g */
    public static LottieResult<LottieComposition> m16318g(Context context, String str, @Nullable String str2) {
        try {
            return str.endsWith(".zip") ? m16304u(new ZipInputStream(context.getAssets().open(str)), str2) : m16316i(context.getAssets().open(str), str2);
        } catch (IOException e) {
            return new LottieResult<>(e);
        }
    }

    /* renamed from: h */
    public static LottieTask<LottieComposition> m16317h(final InputStream inputStream, @Nullable final String str) {
        return m16323b(str, new Callable<LottieResult<LottieComposition>>() { // from class: com.airbnb.lottie.LottieCompositionFactory.4
            /* renamed from: a */
            public LottieResult<LottieComposition> call() {
                return LottieCompositionFactory.m16316i(inputStream, str);
            }
        });
    }

    @WorkerThread
    /* renamed from: i */
    public static LottieResult<LottieComposition> m16316i(InputStream inputStream, @Nullable String str) {
        return m16315j(inputStream, str, true);
    }

    @WorkerThread
    /* renamed from: j */
    private static LottieResult<LottieComposition> m16315j(InputStream inputStream, @Nullable String str, boolean z) {
        try {
            LottieResult<LottieComposition> k = m16314k(JsonReader.m15805t(Okio.m143d(Okio.m136k(inputStream))), str);
            if (z) {
                Utils.m15695c(inputStream);
            }
            return k;
        } catch (Throwable th) {
            if (z) {
                Utils.m15695c(inputStream);
            }
            throw th;
        }
    }

    @WorkerThread
    /* renamed from: k */
    public static LottieResult<LottieComposition> m16314k(JsonReader jsonReader, @Nullable String str) {
        return m16313l(jsonReader, str, true);
    }

    /* renamed from: l */
    private static LottieResult<LottieComposition> m16313l(JsonReader jsonReader, @Nullable String str, boolean z) {
        try {
            try {
                LottieComposition a = LottieCompositionMoshiParser.m15832a(jsonReader);
                if (str != null) {
                    LottieCompositionCache.m16079b().m16078c(str, a);
                }
                LottieResult<LottieComposition> lottieResult = new LottieResult<>(a);
                if (z) {
                    Utils.m15695c(jsonReader);
                }
                return lottieResult;
            } catch (Exception e) {
                LottieResult<LottieComposition> lottieResult2 = new LottieResult<>(e);
                if (z) {
                    Utils.m15695c(jsonReader);
                }
                return lottieResult2;
            }
        } catch (Throwable th) {
            if (z) {
                Utils.m15695c(jsonReader);
            }
            throw th;
        }
    }

    @WorkerThread
    /* renamed from: m */
    public static LottieResult<LottieComposition> m16312m(String str, @Nullable String str2) {
        return m16314k(JsonReader.m15805t(Okio.m143d(Okio.m136k(new ByteArrayInputStream(str.getBytes())))), str2);
    }

    @Deprecated
    @WorkerThread
    /* renamed from: n */
    public static LottieResult<LottieComposition> m16311n(JSONObject jSONObject, @Nullable String str) {
        return m16312m(jSONObject.toString(), str);
    }

    /* renamed from: o */
    public static LottieTask<LottieComposition> m16310o(Context context, @RawRes int i) {
        return m16309p(context, i, m16301x(context, i));
    }

    /* renamed from: p */
    public static LottieTask<LottieComposition> m16309p(Context context, @RawRes final int i, @Nullable final String str) {
        final WeakReference weakReference = new WeakReference(context);
        final Context applicationContext = context.getApplicationContext();
        return m16323b(str, new Callable<LottieResult<LottieComposition>>() { // from class: com.airbnb.lottie.LottieCompositionFactory.3
            /* renamed from: a */
            public LottieResult<LottieComposition> call() {
                Context context2 = (Context) weakReference.get();
                if (context2 == null) {
                    context2 = applicationContext;
                }
                return LottieCompositionFactory.m16307r(context2, i, str);
            }
        });
    }

    @WorkerThread
    /* renamed from: q */
    public static LottieResult<LottieComposition> m16308q(Context context, @RawRes int i) {
        return m16307r(context, i, m16301x(context, i));
    }

    @WorkerThread
    /* renamed from: r */
    public static LottieResult<LottieComposition> m16307r(Context context, @RawRes int i, @Nullable String str) {
        try {
            return m16316i(context.getResources().openRawResource(i), str);
        } catch (Resources.NotFoundException e) {
            return new LottieResult<>(e);
        }
    }

    /* renamed from: s */
    public static LottieTask<LottieComposition> m16306s(Context context, String str) {
        return m16305t(context, str, "url_" + str);
    }

    /* renamed from: t */
    public static LottieTask<LottieComposition> m16305t(final Context context, final String str, @Nullable final String str2) {
        return m16323b(str2, new Callable<LottieResult<LottieComposition>>() { // from class: com.airbnb.lottie.LottieCompositionFactory.1
            /* renamed from: a */
            public LottieResult<LottieComposition> call() {
                return NetworkFetcher.m15887e(context, str, str2);
            }
        });
    }

    @WorkerThread
    /* renamed from: u */
    public static LottieResult<LottieComposition> m16304u(ZipInputStream zipInputStream, @Nullable String str) {
        try {
            return m16303v(zipInputStream, str);
        } finally {
            Utils.m15695c(zipInputStream);
        }
    }

    @WorkerThread
    /* renamed from: v */
    private static LottieResult<LottieComposition> m16303v(ZipInputStream zipInputStream, @Nullable String str) {
        HashMap hashMap = new HashMap();
        try {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            LottieComposition lottieComposition = null;
            while (nextEntry != null) {
                String name = nextEntry.getName();
                if (name.contains("__MACOSX")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().contains(".json")) {
                    lottieComposition = m16313l(JsonReader.m15805t(Okio.m143d(Okio.m136k(zipInputStream))), null, false).m16215b();
                } else {
                    if (!name.contains(".png") && !name.contains(".webp")) {
                        zipInputStream.closeEntry();
                    }
                    String[] split = name.split("/");
                    hashMap.put(split[split.length - 1], BitmapFactory.decodeStream(zipInputStream));
                }
                nextEntry = zipInputStream.getNextEntry();
            }
            if (lottieComposition == null) {
                return new LottieResult<>(new IllegalArgumentException("Unable to parse composition"));
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                LottieImageAsset c = m16322c(lottieComposition, (String) entry.getKey());
                if (c != null) {
                    c.m16219f(Utils.m15686l((Bitmap) entry.getValue(), c.m16220e(), c.m16222c()));
                }
            }
            for (Map.Entry<String, LottieImageAsset> entry2 : lottieComposition.m16338i().entrySet()) {
                if (entry2.getValue().m16224a() == null) {
                    return new LottieResult<>(new IllegalStateException("There is no image for " + entry2.getValue().m16223b()));
                }
            }
            if (str != null) {
                LottieCompositionCache.m16079b().m16078c(str, lottieComposition);
            }
            return new LottieResult<>(lottieComposition);
        } catch (IOException e) {
            return new LottieResult<>(e);
        }
    }

    /* renamed from: w */
    private static boolean m16302w(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    /* renamed from: x */
    private static String m16301x(Context context, @RawRes int i) {
        StringBuilder sb = new StringBuilder();
        sb.append("rawRes");
        sb.append(m16302w(context) ? "_night_" : "_day_");
        sb.append(i);
        return sb.toString();
    }
}
