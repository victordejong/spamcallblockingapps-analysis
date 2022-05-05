package com.google.android.gms.common.api.internal;

import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zai.class */
public class zai extends zak {

    /* renamed from: k */
    private final SparseArray<zaa> f7299k;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zai$zaa.class */
    public final class zaa implements GoogleApiClient.OnConnectionFailedListener {

        /* renamed from: a */
        public final int f7300a;

        /* renamed from: b */
        public final GoogleApiClient f7301b;

        /* renamed from: c */
        public final GoogleApiClient.OnConnectionFailedListener f7302c;

        /* renamed from: d */
        private final /* synthetic */ zai f7303d;

        @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
        /* renamed from: f */
        public final void mo14711f(@NonNull ConnectionResult connectionResult) {
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("beginFailureResolution for ");
            sb.append(valueOf);
            Log.d("AutoManageHelper", sb.toString());
            this.f7303d.m14721n(connectionResult, this.f7300a);
        }
    }

    @Nullable
    /* renamed from: r */
    private final zaa m14731r(int i) {
        if (this.f7299k.size() <= i) {
            return null;
        }
        SparseArray<zaa> sparseArray = this.f7299k;
        return sparseArray.get(sparseArray.keyAt(i));
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: a */
    public void mo14733a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        for (int i = 0; i < this.f7299k.size(); i++) {
            zaa r = m14731r(i);
            if (r != null) {
                printWriter.append((CharSequence) str).append("GoogleApiClient #").print(r.f7300a);
                printWriter.println(":");
                r.f7301b.mo14817f(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zak, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: j */
    public void mo14724j() {
        super.mo14724j();
        boolean z = this.f7309g;
        String valueOf = String.valueOf(this.f7299k);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 14);
        sb.append("onStart ");
        sb.append(z);
        sb.append(" ");
        sb.append(valueOf);
        Log.d("AutoManageHelper", sb.toString());
        if (this.f7310h.get() == null) {
            for (int i = 0; i < this.f7299k.size(); i++) {
                zaa r = m14731r(i);
                if (r != null) {
                    r.f7301b.mo14819d();
                }
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zak, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: k */
    public void mo10770k() {
        super.mo10770k();
        for (int i = 0; i < this.f7299k.size(); i++) {
            zaa r = m14731r(i);
            if (r != null) {
                r.f7301b.mo14818e();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.zak
    /* renamed from: m */
    public final void mo14722m(ConnectionResult connectionResult, int i) {
        Log.w("AutoManageHelper", "Unresolved error while connecting client. Stopping auto-manage.");
        if (i < 0) {
            Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", new Exception());
            return;
        }
        zaa zaaVar = this.f7299k.get(i);
        if (zaaVar != null) {
            m14732q(i);
            GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = zaaVar.f7302c;
            if (onConnectionFailedListener != null) {
                onConnectionFailedListener.mo14711f(connectionResult);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zak
    /* renamed from: o */
    protected final void mo14720o() {
        for (int i = 0; i < this.f7299k.size(); i++) {
            zaa r = m14731r(i);
            if (r != null) {
                r.f7301b.mo14819d();
            }
        }
    }

    /* renamed from: q */
    public final void m14732q(int i) {
        zaa zaaVar = this.f7299k.get(i);
        this.f7299k.remove(i);
        if (zaaVar != null) {
            zaaVar.f7301b.mo14816i(zaaVar);
            zaaVar.f7301b.mo14818e();
        }
    }
}
