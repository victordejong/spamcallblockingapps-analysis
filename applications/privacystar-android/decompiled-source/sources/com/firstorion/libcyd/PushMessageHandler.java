package com.firstorion.libcyd;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import com.apptentive.android.sdk.Apptentive;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.util.DateUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/PushMessageHandler.class */
public final class PushMessageHandler {
    private static final String CYD_HANDLE_PUSH_MESSAGE_ACTION = "cyd:pushmessage";
    private static final String CYD_HANDLE_PUSH_MESSAGE_EXTRA_CALLING_NUMBER = "cyd:pushmessage:callingNumber";
    private static final String CYD_HANDLE_PUSH_MESSAGE_EXTRA_CID = "cyd:pushmessage:cid";
    private static final String CYD_HANDLE_PUSH_MESSAGE_EXTRA_CVID = "cyd:pushmessage:cvid";
    private static final String CYD_HANDLE_PUSH_MESSAGE_EXTRA_DONE_URL = "cyd:pushmessage:doneURL";
    private static final String CYD_HANDLE_PUSH_MESSAGE_EXTRA_EXP_SECONDS = "cyd:pushmessage:exp";
    private static final String CYD_HANDLE_PUSH_MESSAGE_EXTRA_GET_URL = "cyd:pushmessage:getUrl";
    private static final String CYD_HANDLE_PUSH_MESSAGE_EXTRA_ID = "cyd:pushmessage:id";
    private static final String CYD_HANDLE_PUSH_MESSAGE_EXTRA_JWT = "cyd:pushmessage:jwt";
    private static final String CYD_HANDLE_PUSH_MESSAGE_EXTRA_KEEP = "cyd:pushmessage:keep";
    private static final String CYD_HANDLE_PUSH_MESSAGE_EXTRA_NBF_SECONDS = "cyd:pushmessage:nbf";
    private static final String CYD_HANDLE_PUSH_MESSAGE_EXTRA_SPID = "cyd:pushmessage:spid";
    private static final String CYD_HANDLE_PUSH_MESSAGE_EXTRA_TYPE = "cyd:pushmessage:type";
    private static final String CYD_HANDLE_PUSH_MESSAGE_EXTRA_VARIABLES = "cyd:pushmessage:variables";
    private static final String HEADER_OS = "cyd-os";
    private static final String HEADER_OS_VERSION = "cyd-os-version";
    private static final String HEADER_SCREEN_DPI = "cyd-dpi";
    private static final String HEADER_SDK_VERSION = "cyd-sdk-version";

    private PushMessageHandler() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void addFilters(IntentFilter intentFilter) {
        intentFilter.addAction(CYD_HANDLE_PUSH_MESSAGE_ACTION);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x007b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00e8 -> B:23:0x00cd). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void doHandleCleanPushMessage(final android.content.Context r9, android.content.Intent r10) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.firstorion.libcyd.PushMessageHandler.doHandleCleanPushMessage(android.content.Context, android.content.Intent):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void doHandleContentPushMessage(final android.content.Context r14, android.content.Intent r15, final int r16) {
        /*
            Method dump skipped, instructions count: 416
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.firstorion.libcyd.PushMessageHandler.doHandleContentPushMessage(android.content.Context, android.content.Intent, int):void");
    }

    private static void doHandlePushMessage(Context context, Intent intent) {
        CYDApplication instance = CYDApplication.getInstance();
        String stringExtra = intent.getStringExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_TYPE);
        if ("clean".equals(stringExtra)) {
            doHandleCleanPushMessage(context, intent);
            return;
        }
        try {
            CydContentManager.cleanExpiredContent(context, instance.getTelemetryHost());
        } catch (Exception e) {
            Log.e("libcyd.app", "Encountered exception while cleaning data", e);
        }
        if (FirebaseAnalytics.Param.CONTENT.equals(stringExtra)) {
            doHandleContentPushMessage(context, intent, 1);
        } else if ("content2".equals(stringExtra)) {
            doHandleContentPushMessage(context, intent, 2);
        } else {
            Log.e("libcyd.app", "Unknown push message type: " + stringExtra);
            TelemetryHost telemetryHost = instance.getTelemetryHost();
            String uuid = UUID.randomUUID().toString();
            telemetryHost.putTelemetryEvent(new TelemetryEvent(uuid, null, 55, 1, "Type: " + stringExtra));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean handle(Context context, Intent intent) {
        if (!CYD_HANDLE_PUSH_MESSAGE_ACTION.equals(intent.getAction())) {
            return false;
        }
        doHandlePushMessage(context.getApplicationContext(), intent);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CydContent parseResponse(CydContentMetadata cydContentMetadata, byte[] bArr, JSONObject jSONObject, Context context) throws BadContentException {
        try {
            JSONObject jSONObject2 = new JSONObject(new String(bArr, Globals.UTF8));
            int i = jSONObject2.getInt(Apptentive.Version.TYPE);
            if (i < 2 || i > 2) {
                throw new BadContentException("Content is of a version not supported: " + i);
            }
            JSONObject jSONObject3 = jSONObject2.getJSONObject(FirebaseAnalytics.Param.CONTENT);
            JSONArray jSONArray = jSONObject2.getJSONArray("aNumbers");
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                arrayList.add(PhoneNumberParser.parse(jSONArray.getString(i2), context));
            }
            return new CydContent(cydContentMetadata, jSONObject3, jSONObject, arrayList);
        } catch (JSONException e) {
            throw new BadContentException("Json from the server was bad.", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void sendHandlePushMessageBroadcast(Context context, Map<String, String> map) {
        Long valueOf;
        Long valueOf2;
        JSONException e;
        if (context == null) {
            throw new NullPointerException("context");
        } else if (map == null) {
            throw new NullPointerException("pushMessageData");
        } else {
            Context applicationContext = context.getApplicationContext();
            CYDApplication instance = CYDApplication.getInstance();
            Intent intent = new Intent();
            intent.setAction(CYD_HANDLE_PUSH_MESSAGE_ACTION);
            String remove = map.remove("jwt");
            String remove2 = map.remove("getUrl");
            String remove3 = map.remove("doneUrl");
            String remove4 = map.remove("callingNumber");
            String remove5 = map.remove("cyd.id");
            String remove6 = map.remove("cyd.cid");
            String remove7 = map.remove("cyd.type");
            String remove8 = map.remove("cyd.cvid");
            String remove9 = map.remove("cyd.spid");
            String remove10 = map.remove("cyd.keep");
            map.remove("cyd.owner");
            map.remove("cyd.ttl");
            map.remove("cyd.version");
            String remove11 = map.remove("cyd.nbf");
            if (remove11 != null) {
                try {
                    valueOf = Long.valueOf(Long.parseLong(remove11));
                } catch (Throwable th) {
                    valueOf = Long.valueOf(System.currentTimeMillis() / 1000);
                }
            } else {
                valueOf = Long.valueOf(System.currentTimeMillis() / 1000);
            }
            String remove12 = map.remove("cyd.exp");
            if (remove12 != null) {
                try {
                    valueOf2 = Long.valueOf(Long.parseLong(remove12));
                } catch (Throwable th2) {
                    valueOf2 = Long.valueOf(valueOf.longValue() + DateUtil.DAY_IN_SECONDS);
                }
            } else {
                valueOf2 = Long.valueOf(valueOf.longValue() + DateUtil.DAY_IN_SECONDS);
            }
            JSONObject jSONObject = new JSONObject();
            Context context2 = applicationContext;
            instance = instance;
            try {
                Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
                context2 = applicationContext;
                while (true) {
                    context2 = context2;
                    instance = instance;
                    if (!it.hasNext()) {
                        break;
                    }
                    Map.Entry<String, String> next = it.next();
                    String key = next.getKey();
                    try {
                        if (!key.startsWith("$") && !key.startsWith("#")) {
                            StringBuilder sb = new StringBuilder();
                            try {
                                sb.append("Ignoring property with key: ");
                                sb.append(key);
                                Log.w("libcyd.app", sb.toString());
                            } catch (JSONException e2) {
                                e = e2;
                                Log.e("libcyd.app", "Encountered error sorting out the custom and system variables.", e);
                                intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_JWT, remove);
                                intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_GET_URL, remove2);
                                intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_DONE_URL, remove3);
                                intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_CALLING_NUMBER, remove4);
                                intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_VARIABLES, jSONObject.toString());
                                intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_ID, remove5);
                                intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_CID, remove6);
                                intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_TYPE, remove7);
                                intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_CVID, remove8);
                                intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_SPID, remove9);
                                intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_NBF_SECONDS, valueOf);
                                intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_EXP_SECONDS, valueOf2);
                                intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_KEEP, "true".equals(remove10));
                                instance.sendLocalBroadcast(context2, intent);
                            }
                        }
                        jSONObject.put(key, next.getValue());
                    } catch (JSONException e3) {
                        e = e3;
                    }
                }
            } catch (JSONException e4) {
                e = e4;
            }
            intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_JWT, remove);
            intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_GET_URL, remove2);
            intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_DONE_URL, remove3);
            intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_CALLING_NUMBER, remove4);
            intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_VARIABLES, jSONObject.toString());
            intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_ID, remove5);
            intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_CID, remove6);
            intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_TYPE, remove7);
            intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_CVID, remove8);
            intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_SPID, remove9);
            intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_NBF_SECONDS, valueOf);
            intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_EXP_SECONDS, valueOf2);
            intent.putExtra(CYD_HANDLE_PUSH_MESSAGE_EXTRA_KEEP, "true".equals(remove10));
            instance.sendLocalBroadcast(context2, intent);
        }
    }
}
