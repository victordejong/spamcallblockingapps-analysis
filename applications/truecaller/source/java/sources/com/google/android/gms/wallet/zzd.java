package com.google.android.gms.wallet;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.Task;
import e.m.a.f.s.c;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/zzd.class */
public final class zzd extends Fragment {

    /* renamed from: d */
    public static final /* synthetic */ int f6559d = 0;

    /* renamed from: a */
    public int f6560a;

    /* renamed from: b */
    public c<?> f6561b;

    /* renamed from: c */
    public boolean f6562c;

    /* renamed from: a */
    public final void m38474a(Task<? extends AutoResolvableResult> task) {
        if (!this.f6562c) {
            int i = 1;
            this.f6562c = true;
            Activity activity = getActivity();
            activity.getFragmentManager().beginTransaction().remove(this).commit();
            if (task == null) {
                AutoResolveHelper.m38477b(activity, this.f6560a, 0, new Intent());
                return;
            }
            int i2 = this.f6560a;
            int i3 = AutoResolveHelper.f6550b;
            if (activity.isFinishing()) {
                Log.isLoggable("AutoResolveHelper", 3);
                return;
            }
            Exception m38524n = task.m38524n();
            if (m38524n instanceof ResolvableApiException) {
                try {
                    ((ResolvableApiException) m38524n).f5693a.m39041r2(activity, i2);
                    return;
                } catch (IntentSender.SendIntentException e) {
                    Log.isLoggable("AutoResolveHelper", 6);
                    return;
                }
            }
            Intent intent = new Intent();
            if (task.m38519s()) {
                task.m38523o().m38479d(intent);
                i = -1;
            } else if (m38524n instanceof ApiException) {
                ApiException apiException = (ApiException) m38524n;
                intent.putExtra("com.google.android.gms.common.api.AutoResolveHelper.status", new Status(apiException.f5693a.f5728b, apiException.getMessage(), null));
            } else {
                Log.isLoggable("AutoResolveHelper", 6);
                intent.putExtra("com.google.android.gms.common.api.AutoResolveHelper.status", new Status(8, "Unexpected non API exception when trying to deliver the task result to an activity!"));
            }
            AutoResolveHelper.m38477b(activity, i2, i, intent);
        }
    }

    @Override // android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f6560a = getArguments().getInt("requestCode");
        if (AutoResolveHelper.f6549a != getArguments().getLong("initializationElapsedRealtime")) {
            this.f6561b = null;
        } else {
            this.f6561b = (c) c.d.get(getArguments().getInt("resolveCallId"));
        }
        boolean z = false;
        if (bundle != null) {
            z = false;
            if (bundle.getBoolean("delivered")) {
                z = true;
            }
        }
        this.f6562c = z;
    }

    @Override // android.app.Fragment
    public final void onPause() {
        super.onPause();
        c<?> cVar = this.f6561b;
        if (cVar == null || cVar.a != this) {
            return;
        }
        cVar.a = null;
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        c<?> cVar = this.f6561b;
        if (cVar != null) {
            cVar.a = this;
            cVar.a();
            return;
        }
        Log.isLoggable("AutoResolveHelper", 5);
        m38474a(null);
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("delivered", this.f6562c);
        c<?> cVar = this.f6561b;
        if (cVar == null || cVar.a != this) {
            return;
        }
        cVar.a = null;
    }
}
