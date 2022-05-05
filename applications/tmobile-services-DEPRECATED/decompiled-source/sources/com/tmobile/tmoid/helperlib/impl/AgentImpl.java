package com.tmobile.tmoid.helperlib.impl;

import android.content.Context;
import com.tmobile.tmoid.helperlib.Agent;
import com.tmobile.tmoid.helperlib.AgentServiceConnectionMode;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/impl/AgentImpl.class */
public class AgentImpl extends Agent {

    /* renamed from: a */
    public static String f14760a = "A-jOgGd14-iz0";

    /* renamed from: b */
    public static String f14761b = "329ufjwf9ops";

    /* renamed from: com.tmobile.tmoid.helperlib.impl.AgentImpl$1 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/impl/AgentImpl$1.class */
    class RunnableC20421 implements Runnable {

        /* renamed from: f */
        final /* synthetic */ HttpClient f14762f;

        /* renamed from: g */
        final /* synthetic */ HttpGet f14763g;

        /* JADX WARN: Removed duplicated region for block: B:10:0x005a  */
        /* JADX WARN: Removed duplicated region for block: B:11:0x0064  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r3 = this;
                r0 = r3
                org.apache.http.client.HttpClient r0 = r0.f14762f     // Catch: JSONException -> 0x0047, IOException -> 0x004f
                r1 = r3
                org.apache.http.client.methods.HttpGet r1 = r1.f14763g     // Catch: JSONException -> 0x0047, IOException -> 0x004f
                org.apache.http.HttpResponse r0 = r0.execute(r1)     // Catch: JSONException -> 0x0047, IOException -> 0x004f
                org.apache.http.HttpEntity r0 = r0.getEntity()     // Catch: JSONException -> 0x0047, IOException -> 0x004f
                java.lang.String r0 = org.apache.http.util.EntityUtils.toString(r0)     // Catch: JSONException -> 0x0047, IOException -> 0x004f
                r4 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: JSONException -> 0x0047, IOException -> 0x004f
                r5 = r0
                r0 = r5
                r0.<init>()     // Catch: JSONException -> 0x0047, IOException -> 0x004f
                r0 = r5
                java.lang.String r1 = "server reply to /logout: "
                java.lang.StringBuilder r0 = r0.append(r1)     // Catch: JSONException -> 0x0047, IOException -> 0x004f
                r0 = r5
                r1 = r4
                java.lang.StringBuilder r0 = r0.append(r1)     // Catch: JSONException -> 0x0047, IOException -> 0x004f
                java.lang.String r0 = "TMO-Agent"
                r1 = r5
                java.lang.String r1 = r1.toString()     // Catch: JSONException -> 0x0047, IOException -> 0x004f
                com.tmobile.tmoid.helperlib.util.Log.m4648v(r0, r1)     // Catch: JSONException -> 0x0047, IOException -> 0x004f
                org.json.JSONObject r0 = new org.json.JSONObject     // Catch: JSONException -> 0x0047, IOException -> 0x004f
                r5 = r0
                r0 = r5
                r1 = r4
                r0.<init>(r1)     // Catch: JSONException -> 0x0047, IOException -> 0x004f
                r0 = r5
                java.lang.String r1 = "isSignedOut"
                boolean r0 = r0.getBoolean(r1)     // Catch: JSONException -> 0x0047, IOException -> 0x004f
                r6 = r0
                goto L_0x0056
            L_0x0047:
                r4 = move-exception
                r0 = r4
                r0.printStackTrace()
                goto L_0x0054
            L_0x004f:
                r4 = move-exception
                r0 = r4
                r0.printStackTrace()
            L_0x0054:
                r0 = 0
                r6 = r0
            L_0x0056:
                r0 = r6
                if (r0 != 0) goto L_0x0064
                java.lang.String r0 = "TMO-Agent"
                java.lang.String r1 = "Failed to invalidate session on server"
                com.tmobile.tmoid.helperlib.util.Log.m4654d(r0, r1)
                goto L_0x006b
            L_0x0064:
                java.lang.String r0 = "TMO-Agent"
                java.lang.String r1 = "Session has been successfully invalidated on server"
                com.tmobile.tmoid.helperlib.util.Log.m4654d(r0, r1)
            L_0x006b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tmobile.tmoid.helperlib.impl.AgentImpl.RunnableC20421.run():void");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/impl/AgentImpl$Defaults.class */
    static class Defaults {
        static {
            String str = AgentImpl.f14760a;
            String str2 = AgentImpl.f14761b;
        }

        Defaults() {
        }
    }

    public AgentImpl(IHelperLibrary iHelperLibrary, Context context, AgentServiceConnectionMode agentServiceConnectionMode) {
        AgentServiceConnectionMode agentServiceConnectionMode2 = AgentServiceConnectionMode.REMOTE;
    }
}
