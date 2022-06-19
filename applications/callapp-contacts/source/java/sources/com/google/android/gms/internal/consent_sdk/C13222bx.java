package com.google.android.gms.internal.consent_sdk;

import android.text.TextUtils;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.consent_sdk.bx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bx.class */
public final class C13222bx {

    /* renamed from: a */
    final Executor f50404a;

    public C13222bx(Executor executor) {
        this.f50404a = executor;
    }

    /* renamed from: a */
    public final void m13550a(String str, String str2, AbstractC13227cb... abstractC13227cbArr) {
        this.f50404a.execute(new Runnable(str, str2, abstractC13227cbArr) { // from class: com.google.android.gms.internal.consent_sdk.bz

            /* renamed from: a */
            private final String f50408a;

            /* renamed from: b */
            private final String f50409b;

            /* renamed from: c */
            private final AbstractC13227cb[] f50410c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f50408a = str;
                this.f50409b = str2;
                this.f50410c = abstractC13227cbArr;
            }

            @Override // java.lang.Runnable
            public final void run() {
                JSONObject jSONObject;
                String str3 = this.f50408a;
                String str4 = this.f50409b;
                AbstractC13227cb[] abstractC13227cbArr2 = this.f50410c;
                if (TextUtils.isEmpty(str3)) {
                    return;
                }
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
                for (AbstractC13227cb abstractC13227cb : abstractC13227cbArr2) {
                    FutureTask futureTask = new FutureTask(new Callable(abstractC13227cb, lowerCase, jSONObject) { // from class: com.google.android.gms.internal.consent_sdk.by

                        /* renamed from: a */
                        private final AbstractC13227cb f50405a;

                        /* renamed from: b */
                        private final String f50406b;

                        /* renamed from: c */
                        private final JSONObject f50407c;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f50405a = abstractC13227cb;
                            this.f50406b = lowerCase;
                            this.f50407c = jSONObject;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return Boolean.valueOf(this.f50405a.mo13531a(this.f50406b, this.f50407c));
                        }
                    });
                    abstractC13227cb.mo13532a().execute(futureTask);
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
        });
    }
}
