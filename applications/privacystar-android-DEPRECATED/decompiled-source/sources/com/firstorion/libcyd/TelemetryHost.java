package com.firstorion.libcyd;

import android.content.Context;
import android.util.Log;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Deque;
import java.util.LinkedList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/TelemetryHost.class */
public final class TelemetryHost {
    private static final int MAX_BATCH_SIZE = 100;
    private static final int MAX_EVENTS_IN_QUEUE = 1000;
    private final CYDApplication cydApplication;
    private final Deque<TelemetryEvent> events;
    private final Object lock;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TelemetryHost(CYDApplication cYDApplication) {
        if (cYDApplication == null) {
            throw new NullPointerException("cydApplication");
        }
        this.lock = new Object();
        this.events = new LinkedList();
        this.cydApplication = cYDApplication;
    }

    private void uploadTelemetryEvents(final Context context) {
        Globals.THREAD_POOL.execute(new Runnable() { // from class: com.firstorion.libcyd.TelemetryHost.1
            private void putStuffBack(List<TelemetryEvent> list) {
                synchronized (TelemetryHost.this.lock) {
                    for (int size = list.size() - 1; size >= 0; size--) {
                        TelemetryHost.this.events.addFirst(list.get(size));
                    }
                }
            }

            @Override // java.lang.Runnable
            public void run() {
                Throwable th;
                Throwable th2;
                OutputStream outputStream;
                if (TelemetryHost.this.cydApplication.isPhoneNumberVerified(context)) {
                    List<TelemetryEvent> arrayList = new ArrayList<>();
                    synchronized (TelemetryHost.this.lock) {
                        int min = Math.min(100, TelemetryHost.this.events.size());
                        for (int i = 0; i < min; i++) {
                            arrayList.add(TelemetryHost.this.events.removeFirst());
                        }
                    }
                    if (arrayList.size() > 0) {
                        HttpURLConnection httpURLConnection = null;
                        try {
                            String apiKey = TelemetryHost.this.cydApplication.getApiKey(context);
                            if (apiKey != null) {
                                byte[] bytes = new TelemetryEventRequest(arrayList).encode().toString().getBytes(Globals.UTF8);
                                httpURLConnection = Constants.getConnection("https://api.calleryd.com/tel/v1/add");
                                try {
                                    httpURLConnection.setRequestProperty("Content-Type", "application/json");
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("Bearer ");
                                    sb.append(apiKey);
                                    httpURLConnection.setRequestProperty("Authorization", sb.toString());
                                    httpURLConnection.setDoInput(false);
                                    httpURLConnection.setDoOutput(true);
                                    httpURLConnection.setRequestMethod(HttpRequest.METHOD_PUT);
                                    try {
                                        outputStream = httpURLConnection.getOutputStream();
                                    } catch (Throwable th3) {
                                        th2 = th3;
                                        outputStream = null;
                                    }
                                    try {
                                        outputStream.write(bytes);
                                        if (outputStream != null) {
                                            outputStream.close();
                                        }
                                        int responseCode = httpURLConnection.getResponseCode();
                                        Globals.tryPrintRequestId(httpURLConnection, "putTel");
                                        if (responseCode == 200) {
                                            if (RefreshApiKeyHandler.shouldUpdateApiKey(httpURLConnection.getHeaderField("x-cyd-refresh-key"))) {
                                                RefreshApiKeyHandler.broadcastRefreshApiKey(context);
                                            }
                                            Log.d("libcyd.app", "Tel put ok.");
                                        } else {
                                            Log.e("libcyd.app", String.format("Tel put failed. Server code: %d.", Integer.valueOf(responseCode)));
                                            putStuffBack(arrayList);
                                        }
                                    } catch (Throwable th4) {
                                        th2 = th4;
                                        if (outputStream != null) {
                                            outputStream.close();
                                        }
                                        throw th2;
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                    HttpURLConnection httpURLConnection2 = httpURLConnection;
                                    try {
                                        Log.e("libcyd.app", "Tel put failed.", th);
                                        httpURLConnection2 = httpURLConnection;
                                        putStuffBack(arrayList);
                                        if (httpURLConnection != null) {
                                            httpURLConnection.disconnect();
                                            return;
                                        }
                                        return;
                                    } catch (Throwable th6) {
                                        if (httpURLConnection2 != null) {
                                            httpURLConnection2.disconnect();
                                        }
                                        throw th6;
                                    }
                                }
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                        } catch (Throwable th7) {
                            th = th7;
                            httpURLConnection = null;
                        }
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void putTelemetryEvent(TelemetryEvent telemetryEvent) {
        synchronized (this.lock) {
            int size = this.events.size();
            for (int i = 0; i < (size + 1) - 1000; i++) {
                this.events.removeFirst();
            }
            this.events.addLast(telemetryEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void uploadTelemetry(Context context) {
        uploadTelemetryEvents(context);
    }
}
