.class public final Lcom/google/android/gms/internal/ads/zzblx;
.super Lcom/google/android/gms/internal/ads/zzblv;
.source ""


# instance fields
.field private final context:Landroid/content/Context;

.field private final view:Landroid/view/View;

.field private final zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

.field private final zzfsj:Ljava/util/concurrent/Executor;

.field private final zzftn:Lcom/google/android/gms/internal/ads/zzdmz;

.field private final zzfuo:Lcom/google/android/gms/internal/ads/zzbnu;

.field private final zzfup:Lcom/google/android/gms/internal/ads/zzcco;

.field private final zzfuq:Lcom/google/android/gms/internal/ads/zzbye;

.field private final zzfur:Lcom/google/android/gms/internal/ads/zzepv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzepv<",
            "Lcom/google/android/gms/internal/ads/zzcxs;",
            ">;"
        }
    .end annotation
.end field

.field private zzfus:Lcom/google/android/gms/internal/ads/zzvs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnw;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdmz;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zzbnu;Lcom/google/android/gms/internal/ads/zzcco;Lcom/google/android/gms/internal/ads/zzbye;Lcom/google/android/gms/internal/ads/zzepv;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbnw;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzdmz;",
            "Landroid/view/View;",
            "Lcom/google/android/gms/internal/ads/zzbeb;",
            "Lcom/google/android/gms/internal/ads/zzbnu;",
            "Lcom/google/android/gms/internal/ads/zzcco;",
            "Lcom/google/android/gms/internal/ads/zzbye;",
            "Lcom/google/android/gms/internal/ads/zzepv<",
            "Lcom/google/android/gms/internal/ads/zzcxs;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzblv;-><init>(Lcom/google/android/gms/internal/ads/zzbnw;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzblx;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzblx;->view:Landroid/view/View;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzblx;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzblx;->zzftn:Lcom/google/android/gms/internal/ads/zzdmz;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzblx;->zzfuo:Lcom/google/android/gms/internal/ads/zzbnu;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzblx;->zzfup:Lcom/google/android/gms/internal/ads/zzcco;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzblx;->zzfuq:Lcom/google/android/gms/internal/ads/zzbye;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzblx;->zzfur:Lcom/google/android/gms/internal/ads/zzepv;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzblx;->zzfsj:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzzc;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblx;->zzfuo:Lcom/google/android/gms/internal/ads/zzbnu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbnu;->getVideoController()Lcom/google/android/gms/internal/ads/zzzc;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdnt; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzvs;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblx;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbft;->zzb(Lcom/google/android/gms/internal/ads/zzvs;)Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Lcom/google/android/gms/internal/ads/zzbft;)V

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzvs;->heightPixels:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzvs;->widthPixels:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzblx;->zzfus:Lcom/google/android/gms/internal/ads/zzvs;

    :cond_0
    return-void
.end method

.method public final zzajq()Lcom/google/android/gms/internal/ads/zzdmz;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblx;->zzfus:Lcom/google/android/gms/internal/ads/zzvs;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdnu;->zzh(Lcom/google/android/gms/internal/ads/zzvs;)Lcom/google/android/gms/internal/ads/zzdmz;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnt;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjt:Z

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhix:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v3, "FirstParty"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzblx;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzblx;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdmz;-><init>(IIZ)V

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnt;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjf:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzblx;->zzftn:Lcom/google/android/gms/internal/ads/zzdmz;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdnu;->zza(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzdmz;)Lcom/google/android/gms/internal/ads/zzdmz;

    move-result-object v0

    return-object v0
.end method

.method public final zzajr()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblx;->view:Landroid/view/View;

    return-object v0
.end method

.method public final zzajz()Lcom/google/android/gms/internal/ads/zzdmz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblx;->zzftn:Lcom/google/android/gms/internal/ads/zzdmz;

    return-object v0
.end method

.method public final zzaka()I
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzczh:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnt;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjx:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzczi:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnt;->zzfrd:Lcom/google/android/gms/internal/ads/zzdnl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnl;->zzhks:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnj;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdnb;->zzhkg:I

    return v0
.end method

.method public final zzakb()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblx;->zzfsj:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbma;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbma;-><init>(Lcom/google/android/gms/internal/ads/zzblx;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakb()V

    return-void
.end method

.method public final synthetic zzakc()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblx;->zzfup:Lcom/google/android/gms/internal/ads/zzcco;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcco;->zzaom()Lcom/google/android/gms/internal/ads/zzagf;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblx;->zzfup:Lcom/google/android/gms/internal/ads/zzcco;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcco;->zzaom()Lcom/google/android/gms/internal/ads/zzagf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzblx;->zzfur:Lcom/google/android/gms/internal/ads/zzepv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzepv;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzxl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzblx;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzagf;->zza(Lcom/google/android/gms/internal/ads/zzxl;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "RemoteException when notifyAdLoad is called"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final zzkf()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblx;->zzfuq:Lcom/google/android/gms/internal/ads/zzbye;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbye;->zzamr()V

    return-void
.end method
