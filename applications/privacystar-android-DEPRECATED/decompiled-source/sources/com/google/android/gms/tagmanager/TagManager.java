package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.RawRes;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/TagManager.class */
public class TagManager {
    private static TagManager zzbgg;
    private final DataLayer zzazg;
    private final zzal zzbeh;
    private final zza zzbgd;
    private final zzfm zzbge;
    private final ConcurrentMap<String, zzv> zzbgf;
    private final Context zzri;

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/TagManager$zza.class */
    public interface zza {
        zzy zza(Context context, TagManager tagManager, Looper looper, String str, int i, zzal zzalVar);
    }

    @VisibleForTesting
    private TagManager(Context context, zza zzaVar, DataLayer dataLayer, zzfm zzfmVar) {
        if (context == null) {
            throw new NullPointerException("context cannot be null");
        }
        this.zzri = context.getApplicationContext();
        this.zzbge = zzfmVar;
        this.zzbgd = zzaVar;
        this.zzbgf = new ConcurrentHashMap();
        this.zzazg = dataLayer;
        this.zzazg.zza(new zzga(this));
        this.zzazg.zza(new zzg(this.zzri));
        this.zzbeh = new zzal();
        this.zzri.registerComponentCallbacks(new zzgc(this));
        com.google.android.gms.tagmanager.zza.zzn(this.zzri);
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public static TagManager getInstance(Context context) {
        TagManager tagManager;
        synchronized (TagManager.class) {
            try {
                if (zzbgg == null) {
                    if (context == null) {
                        zzdi.m329e("TagManager.getInstance requires non-null context.");
                        throw new NullPointerException();
                    }
                    zzbgg = new TagManager(context, new zzgb(), new DataLayer(new zzat(context)), zzfn.zzpu());
                }
                tagManager = zzbgg;
            } catch (Throwable th) {
                throw th;
            }
        }
        return tagManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzdx(String str) {
        for (zzv zzvVar : this.zzbgf.values()) {
            zzvVar.zzda(str);
        }
    }

    public void dispatch() {
        this.zzbge.dispatch();
    }

    public DataLayer getDataLayer() {
        return this.zzazg;
    }

    public PendingResult<ContainerHolder> loadContainerDefaultOnly(String str, @RawRes int i) {
        zzy zza2 = this.zzbgd.zza(this.zzri, this, null, str, i, this.zzbeh);
        zza2.zznk();
        return zza2;
    }

    public PendingResult<ContainerHolder> loadContainerDefaultOnly(String str, @RawRes int i, Handler handler) {
        zzy zza2 = this.zzbgd.zza(this.zzri, this, handler.getLooper(), str, i, this.zzbeh);
        zza2.zznk();
        return zza2;
    }

    public PendingResult<ContainerHolder> loadContainerPreferFresh(String str, @RawRes int i) {
        zzy zza2 = this.zzbgd.zza(this.zzri, this, null, str, i, this.zzbeh);
        zza2.zznm();
        return zza2;
    }

    public PendingResult<ContainerHolder> loadContainerPreferFresh(String str, @RawRes int i, Handler handler) {
        zzy zza2 = this.zzbgd.zza(this.zzri, this, handler.getLooper(), str, i, this.zzbeh);
        zza2.zznm();
        return zza2;
    }

    public PendingResult<ContainerHolder> loadContainerPreferNonDefault(String str, @RawRes int i) {
        zzy zza2 = this.zzbgd.zza(this.zzri, this, null, str, i, this.zzbeh);
        zza2.zznl();
        return zza2;
    }

    public PendingResult<ContainerHolder> loadContainerPreferNonDefault(String str, @RawRes int i, Handler handler) {
        zzy zza2 = this.zzbgd.zza(this.zzri, this, handler.getLooper(), str, i, this.zzbeh);
        zza2.zznl();
        return zza2;
    }

    public void setVerboseLoggingEnabled(boolean z) {
        zzdi.setLogLevel(z ? 2 : 5);
    }

    @VisibleForTesting
    public final int zza(zzv zzvVar) {
        this.zzbgf.put(zzvVar.getContainerId(), zzvVar);
        return this.zzbgf.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzb(Uri uri) {
        synchronized (this) {
            zzeh zzpc = zzeh.zzpc();
            if (!zzpc.zzb(uri)) {
                return false;
            }
            String containerId = zzpc.getContainerId();
            switch (zzgd.zzbgi[zzpc.zzpd().ordinal()]) {
                case 1:
                    zzv zzvVar = this.zzbgf.get(containerId);
                    if (zzvVar != null) {
                        zzvVar.zzdb(null);
                        zzvVar.refresh();
                        break;
                    }
                    break;
                case 2:
                case 3:
                    for (String str : this.zzbgf.keySet()) {
                        zzv zzvVar2 = this.zzbgf.get(str);
                        if (str.equals(containerId)) {
                            zzvVar2.zzdb(zzpc.zzpe());
                            zzvVar2.refresh();
                        } else if (zzvVar2.zznh() != null) {
                            zzvVar2.zzdb(null);
                            zzvVar2.refresh();
                        }
                    }
                    break;
            }
            return true;
        }
    }

    @VisibleForTesting
    public final boolean zzb(zzv zzvVar) {
        return this.zzbgf.remove(zzvVar.getContainerId()) != null;
    }
}
