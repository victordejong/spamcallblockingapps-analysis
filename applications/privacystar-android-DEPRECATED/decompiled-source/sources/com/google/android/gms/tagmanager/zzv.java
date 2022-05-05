package com.google.android.gms.tagmanager;

import android.os.Looper;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tagmanager.ContainerHolder;
/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzv.class */
public final class zzv implements ContainerHolder {
    private Status zzadg;
    private final Looper zzazn;
    private Container zzazo;
    private Container zzazp;
    private zzx zzazq;
    private zzw zzazr;
    private boolean zzazs;
    private TagManager zzazt;

    public zzv(Status status) {
        this.zzadg = status;
        this.zzazn = null;
    }

    public zzv(TagManager tagManager, Looper looper, Container container, zzw zzwVar) {
        this.zzazt = tagManager;
        this.zzazn = looper == null ? Looper.getMainLooper() : looper;
        this.zzazo = container;
        this.zzazr = zzwVar;
        this.zzadg = Status.RESULT_SUCCESS;
        tagManager.zza(this);
    }

    private final void zzni() {
        if (this.zzazq != null) {
            zzx zzxVar = this.zzazq;
            zzxVar.sendMessage(zzxVar.obtainMessage(1, this.zzazp.zznf()));
        }
    }

    @Override // com.google.android.gms.tagmanager.ContainerHolder
    public final Container getContainer() {
        synchronized (this) {
            if (this.zzazs) {
                zzdi.m329e("ContainerHolder is released.");
                return null;
            }
            if (this.zzazp != null) {
                this.zzazo = this.zzazp;
                this.zzazp = null;
            }
            return this.zzazo;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String getContainerId() {
        if (!this.zzazs) {
            return this.zzazo.getContainerId();
        }
        zzdi.m329e("getContainerId called on a released ContainerHolder.");
        return "";
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.zzadg;
    }

    @Override // com.google.android.gms.tagmanager.ContainerHolder
    public final void refresh() {
        synchronized (this) {
            if (this.zzazs) {
                zzdi.m329e("Refreshing a released ContainerHolder.");
            } else {
                this.zzazr.zznj();
            }
        }
    }

    @Override // com.google.android.gms.common.api.Releasable
    public final void release() {
        synchronized (this) {
            if (this.zzazs) {
                zzdi.m329e("Releasing a released ContainerHolder.");
                return;
            }
            this.zzazs = true;
            this.zzazt.zzb(this);
            this.zzazo.release();
            this.zzazo = null;
            this.zzazp = null;
            this.zzazr = null;
            this.zzazq = null;
        }
    }

    @Override // com.google.android.gms.tagmanager.ContainerHolder
    public final void setContainerAvailableListener(ContainerHolder.ContainerAvailableListener containerAvailableListener) {
        synchronized (this) {
            if (this.zzazs) {
                zzdi.m329e("ContainerHolder is released.");
            } else if (containerAvailableListener == null) {
                this.zzazq = null;
            } else {
                this.zzazq = new zzx(this, containerAvailableListener, this.zzazn);
                if (this.zzazp != null) {
                    zzni();
                }
            }
        }
    }

    public final void zza(Container container) {
        synchronized (this) {
            if (!this.zzazs) {
                this.zzazp = container;
                zzni();
            }
        }
    }

    public final void zzda(String str) {
        synchronized (this) {
            if (!this.zzazs) {
                this.zzazo.zzda(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzdb(String str) {
        if (this.zzazs) {
            zzdi.m329e("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
        } else {
            this.zzazr.zzdb(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zznh() {
        if (!this.zzazs) {
            return this.zzazr.zznh();
        }
        zzdi.m329e("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
        return "";
    }
}
