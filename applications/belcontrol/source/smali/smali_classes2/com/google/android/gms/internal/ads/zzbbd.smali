.class public final Lcom/google/android/gms/internal/ads/zzbbd;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzcmf:Landroid/content/Context;

.field private final zzeix:Lcom/google/android/gms/internal/ads/zzbbo;

.field private final zzekq:Landroid/view/ViewGroup;

.field private zzekr:Lcom/google/android/gms/internal/ads/zzbax;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzbbo;Lcom/google/android/gms/internal/ads/zzbax;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzcmf:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzekq:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzeix:Lcom/google/android/gms/internal/ads/zzbbo;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzekr:Lcom/google/android/gms/internal/ads/zzbax;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzbeb;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzbbd;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzbbo;Lcom/google/android/gms/internal/ads/zzbax;)V

    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    const-string v0, "onDestroy must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzekr:Lcom/google/android/gms/internal/ads/zzbax;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbax;->destroy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzekq:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzekr:Lcom/google/android/gms/internal/ads/zzbax;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzekr:Lcom/google/android/gms/internal/ads/zzbax;

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    const-string v0, "onPause must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzekr:Lcom/google/android/gms/internal/ads/zzbax;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbax;->pause()V

    :cond_0
    return-void
.end method

.method public final zza(IIIIIZLcom/google/android/gms/internal/ads/zzbbl;)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbbd;->zzekr:Lcom/google/android/gms/internal/ads/zzbax;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbbd;->zzeix:Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zzabi()Lcom/google/android/gms/internal/ads/zzacd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzacd;->zzsp()Lcom/google/android/gms/internal/ads/zzacc;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbbd;->zzeix:Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbbo;->zzabd()Lcom/google/android/gms/internal/ads/zzaca;

    move-result-object v2

    const-string v3, "vpr2"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzabx;->zza(Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/internal/ads/zzaca;[Ljava/lang/String;)Z

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbax;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbbd;->zzcmf:Landroid/content/Context;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbbd;->zzeix:Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzbbo;->zzabi()Lcom/google/android/gms/internal/ads/zzacd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzacd;->zzsp()Lcom/google/android/gms/internal/ads/zzacc;

    move-result-object v9

    move-object v4, v1

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v10, p7

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzbax;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbo;IZLcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/internal/ads/zzbbl;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbbd;->zzekr:Lcom/google/android/gms/internal/ads/zzbax;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbbd;->zzekq:Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbbd;->zzekr:Lcom/google/android/gms/internal/ads/zzbax;

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbax;->zzd(IIII)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbbd;->zzeix:Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzbbo;->zzaw(Z)V

    return-void
.end method

.method public final zzaav()Lcom/google/android/gms/internal/ads/zzbax;
    .locals 1

    const-string v0, "getAdVideoUnderlay must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzekr:Lcom/google/android/gms/internal/ads/zzbax;

    return-object v0
.end method

.method public final zze(IIII)V
    .locals 1

    const-string v0, "The underlay may only be modified from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzekr:Lcom/google/android/gms/internal/ads/zzbax;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbax;->zzd(IIII)V

    :cond_0
    return-void
.end method
