.class public final Lcom/google/android/gms/internal/ads/zzcxs;
.super Lcom/google/android/gms/internal/ads/zzxo;
.source ""


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzfum:Landroid/view/ViewGroup;

.field private final zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

.field private final zzgby:Lcom/google/android/gms/internal/ads/zzwx;

.field private final zzgxr:Lcom/google/android/gms/internal/ads/zzblv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwx;Lcom/google/android/gms/internal/ads/zzdnp;Lcom/google/android/gms/internal/ads/zzblv;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxs;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzgby:Lcom/google/android/gms/internal/ads/zzwx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzgxr:Lcom/google/android/gms/internal/ads/zzblv;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzblv;->zzajr()Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkt()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/util/zzr;->zzzd()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcxs;->zzkg()Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzvs;->heightPixels:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcxs;->zzkg()Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzvs;->widthPixels:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzfum:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzgxr:Lcom/google/android/gms/internal/ads/zzblv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->destroy()V

    return-void
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getAdMetadata is not supported in Publisher AdView returned by AdLoader."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzew(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkx:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzgxr:Lcom/google/android/gms/internal/ads/zzblv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakr()Lcom/google/android/gms/internal/ads/zzbrh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzgxr:Lcom/google/android/gms/internal/ads/zzblv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakr()Lcom/google/android/gms/internal/ads/zzbrh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbrh;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzgxr:Lcom/google/android/gms/internal/ads/zzblv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzblv;->getVideoController()Lcom/google/android/gms/internal/ads/zzzc;

    move-result-object v0

    return-object v0
.end method

.method public final isLoading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final pause()V
    .locals 2

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzgxr:Lcom/google/android/gms/internal/ads/zzblv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakq()Lcom/google/android/gms/internal/ads/zzbsg;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbsg;->zzcb(Landroid/content/Context;)V

    return-void
.end method

.method public final resume()V
    .locals 2

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzgxr:Lcom/google/android/gms/internal/ads/zzblv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakq()Lcom/google/android/gms/internal/ads/zzbsg;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbsg;->zzcc(Landroid/content/Context;)V

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 0

    return-void
.end method

.method public final setManualImpressionsEnabled(Z)V
    .locals 0

    const-string p1, "setManualImpressionsEnabled is not supported in Publisher AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzew(Ljava/lang/String;)V

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final showInterstitial()V
    .locals 0

    return-void
.end method

.method public final stopLoading()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaau;)V
    .locals 0

    const-string p1, "setVideoOptions is not supported in Publisher AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzew(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzacl;)V
    .locals 0

    const-string p1, "setOnCustomRenderedAdLoadedListener is not supported in Publisher AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzew(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzary;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzase;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzauu;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsp;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvl;Lcom/google/android/gms/internal/ads/zzxc;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvs;)V
    .locals 2

    const-string v0, "setAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzgxr:Lcom/google/android/gms/internal/ads/zzblv;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzfum:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzblv;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzvs;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvx;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzww;)V
    .locals 0

    const-string p1, "setAdClickListener is not supported in Publisher AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzew(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwx;)V
    .locals 0

    const-string p1, "setAdListener is not supported in Publisher AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzew(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxs;)V
    .locals 0

    const-string p1, "setAdMetadataListener is not supported in Publisher AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzew(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxt;)V
    .locals 0

    const-string p1, "setAppEventListener is not supported in Publisher AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzew(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxz;)V
    .locals 0

    const-string p1, "setCorrelationIdProvider is not supported in Publisher AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzew(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyb;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyw;)V
    .locals 0

    const-string p1, "setOnPaidEventListener is not supported in Publisher AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzew(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzzi;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvl;)Z
    .locals 0

    const-string p1, "loadAd is not supported for a Publisher AdView returned from AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzew(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final zzbl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    return-void
.end method

.method public final zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzfum:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzkf()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzgxr:Lcom/google/android/gms/internal/ads/zzblv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzblv;->zzkf()V

    return-void
.end method

.method public final zzkg()Lcom/google/android/gms/internal/ads/zzvs;
    .locals 2

    const-string v0, "getAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxs;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzgxr:Lcom/google/android/gms/internal/ads/zzblv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzblv;->zzajq()Lcom/google/android/gms/internal/ads/zzdmz;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdnu;->zzb(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v0

    return-object v0
.end method

.method public final zzkh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzgxr:Lcom/google/android/gms/internal/ads/zzblv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakr()Lcom/google/android/gms/internal/ads/zzbrh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzgxr:Lcom/google/android/gms/internal/ads/zzblv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakr()Lcom/google/android/gms/internal/ads/zzbrh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbrh;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzki()Lcom/google/android/gms/internal/ads/zzyx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzgxr:Lcom/google/android/gms/internal/ads/zzblv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakr()Lcom/google/android/gms/internal/ads/zzbrh;

    move-result-object v0

    return-object v0
.end method

.method public final zzkj()Lcom/google/android/gms/internal/ads/zzxt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnp;->zzhld:Lcom/google/android/gms/internal/ads/zzxt;

    return-object v0
.end method

.method public final zzkk()Lcom/google/android/gms/internal/ads/zzwx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzgby:Lcom/google/android/gms/internal/ads/zzwx;

    return-object v0
.end method
