package com.tmobile.tmoid.agent;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.AsyncTask;
import com.tmobile.tmoid.helperlib.util.Log;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/ConfigurationProvider.class */
public class ConfigurationProvider {

    /* renamed from: b */
    private static ConfigurationProvider f14633b;

    /* renamed from: c */
    private static Set<Listener> f14634c = new HashSet();

    /* renamed from: a */
    private final Configuration f14635a;

    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/ConfigurationProvider$ConfigurationLoaderTask.class */
    private static class ConfigurationLoaderTask extends AsyncTask<Void, Void, Configuration> {

        /* renamed from: c */
        private static String f14636c = "TMO-Agent.ConfigurationLoaderTask";
        @SuppressLint({"StaticFieldLeak"})

        /* renamed from: a */
        private final Context f14637a;

        /* renamed from: b */
        private final Listener f14638b;

        ConfigurationLoaderTask(Context context, Listener listener) {
            this.f14637a = context;
            this.f14638b = listener;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public Configuration doInBackground(Void... voidArr) {
            Configuration configuration = new Configuration();
            if (configuration.load(this.f14637a.getSharedPreferences(Configuration.PREFERENCES_FILE, 0))) {
                Log.m4654d(f14636c, "Configuration loaded from preferences");
                return configuration;
            }
            try {
                configuration.load_from_xml(this.f14637a, false);
                Log.m4654d(f14636c, "Configuration loaded from xml");
            } catch (IOException e) {
                Log.m4651e(f14636c, "while configuration loading from xml", e);
            } catch (XmlPullParserException e2) {
                Log.m4651e(f14636c, "while configuration loading from xml", e2);
            }
            return configuration;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: b */
        public void onPostExecute(Configuration configuration) {
            this.f14638b.mo4702a(configuration);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/ConfigurationProvider$Listener.class */
    public interface Listener {
        /* renamed from: a */
        void mo4702a(Configuration configuration);
    }

    private ConfigurationProvider(Configuration configuration) {
        this.f14635a = configuration;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m5173a(Configuration configuration) {
        Iterator<Listener> it = f14634c.iterator();
        while (it.hasNext()) {
            it.next().mo4702a(configuration);
            it.remove();
        }
        f14633b = new ConfigurationProvider(configuration);
    }

    /* renamed from: b */
    public static void m5172b(Context context, Listener listener) {
        ConfigurationProvider configurationProvider = f14633b;
        if (configurationProvider == null) {
            if (listener != null) {
                f14634c.add(listener);
            }
            new ConfigurationLoaderTask(context.getApplicationContext(), C2017a.f14689a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else if (listener != null) {
            listener.mo4702a(configurationProvider.f14635a);
        }
    }
}
