package com.google.android.gms.internal.consent_sdk;

import android.text.TextUtils;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bx.class */
public final class bx {

    /* renamed from: a  reason: collision with root package name */
    final Executor f28773a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bx(Executor executor) {
        this.f28773a = executor;
    }

    public final void a(final String str, final String str2, final cb... cbVarArr) {
        this.f28773a.execute(new Runnable(str, str2, cbVarArr) { // from class: com.google.android.gms.internal.consent_sdk.bz

            /* renamed from: a  reason: collision with root package name */
            private final String f28777a;

            /* renamed from: b  reason: collision with root package name */
            private final String f28778b;

            /* renamed from: c  reason: collision with root package name */
            private final cb[] f28779c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28777a = str;
                this.f28778b = str2;
                this.f28779c = cbVarArr;
            }

            @Override // java.lang.Runnable
            public final void run() {
                JSONObject jSONObject;
                String str3 = this.f28777a;
                String str4 = this.f28778b;
                cb[] cbVarArr2 = this.f28779c;
                if (!TextUtils.isEmpty(str3)) {
                    String lowerCase = str3.toLowerCase();
                    if (TextUtils.isEmpty(str4)) {
                        jSONObject = new JSONObject();
                    } else {
                        try {
                            jSONObject = new JSONObject(str4);
                        } catch (JSONException e) {
                            StringBuilder sb = new StringBuilder(String.valueOf(lowerCase).length() + 32 + String.valueOf(str4).length());
                            sb.append("Action[");
                            sb.append(lowerCase);
                            sb.append("]: failed to parse args: ");
                            sb.append(str4);
                            return;
                        }
                    }
                    String valueOf = String.valueOf(jSONObject);
                    StringBuilder sb2 = new StringBuilder(String.valueOf(lowerCase).length() + 10 + String.valueOf(valueOf).length());
                    sb2.append("Action[");
                    sb2.append(lowerCase);
                    sb2.append("]: ");
                    sb2.append(valueOf);
                    for (cb cbVar : cbVarArr2) {
                        FutureTask futureTask = new FutureTask(new Callable(cbVar, lowerCase, jSONObject) { // from class: com.google.android.gms.internal.consent_sdk.by

                            /* renamed from: a  reason: collision with root package name */
                            private final cb f28774a;

                            /* renamed from: b  reason: collision with root package name */
                            private final String f28775b;

                            /* renamed from: c  reason: collision with root package name */
                            private final JSONObject f28776c;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f28774a = cbVar;
                                this.f28775b = lowerCase;
                                this.f28776c = jSONObject;
                            }

                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                return Boolean.valueOf(this.f28774a.a(this.f28775b, this.f28776c));
                            }
                        });
                        cbVar.a().execute(futureTask);
                        try {
                        } catch (InterruptedException e2) {
                            StringBuilder sb3 = new StringBuilder(String.valueOf(lowerCase).length() + 33);
                            sb3.append("Thread interrupted for Action[");
                            sb3.append(lowerCase);
                            sb3.append("]: ");
                        } catch (ExecutionException e3) {
                            StringBuilder sb4 = new StringBuilder(String.valueOf(lowerCase).length() + 24);
                            sb4.append("Failed to run Action[");
                            sb4.append(lowerCase);
                            sb4.append("]: ");
                            e3.getCause();
                        }
                        if (((Boolean) futureTask.get()).booleanValue()) {
                            return;
                        }
                    }
                }
            }
        });
    }
}
