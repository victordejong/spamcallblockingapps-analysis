.class public final Lcom/google/android/gms/internal/ads/zzdil;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzq;
.implements Lcom/google/android/gms/internal/ads/zzbrr;
.implements Lcom/google/android/gms/internal/ads/zzbtg;
.implements Lcom/google/android/gms/internal/ads/zzdkk;


# instance fields
.field private final zzhfs:Lcom/google/android/gms/internal/ads/zzdov;

.field private final zzhft:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzsp;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhfu:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzsq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhfv:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzsv;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhfw:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzbtg;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhfx:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/ads/internal/overlay/zzq;",
            ">;"
        }
    .end annotation
.end field

.field private zzhfy:Lcom/google/android/gms/internal/ads/zzdil;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdov;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhft:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfu:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfv:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfw:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfx:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfy:Lcom/google/android/gms/internal/ads/zzdil;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfs:Lcom/google/android/gms/internal/ads/zzdov;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzdil;)Lcom/google/android/gms/internal/ads/zzdil;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdil;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfs:Lcom/google/android/gms/internal/ads/zzdov;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdil;-><init>(Lcom/google/android/gms/internal/ads/zzdov;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdil;->zzb(Lcom/google/android/gms/internal/ads/zzdkk;)V

    return-object v0
.end method


# virtual methods
.method public final onAdClosed()V
    .locals 3

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfy:Lcom/google/android/gms/internal/ads/zzdil;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfs:Lcom/google/android/gms/internal/ads/zzdov;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdov;->onAdClosed()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfu:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdip;->zzgya:Lcom/google/android/gms/internal/ads/zzdkc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfv:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdio;->zzgya:Lcom/google/android/gms/internal/ads/zzdkc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    return-void
.end method

.method public final onPause()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 0

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfy:Lcom/google/android/gms/internal/ads/zzdil;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfx:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdiv;->zzgya:Lcom/google/android/gms/internal/ads/zzdkc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzn;)V
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfy:Lcom/google/android/gms/internal/ads/zzdil;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfx:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdis;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdis;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzn;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzq;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfx:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbtg;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsv;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfv:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzalq()V
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfy:Lcom/google/android/gms/internal/ads/zzdil;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfw:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdir;->zzgya:Lcom/google/android/gms/internal/ads/zzdkc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdkk;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdil;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfy:Lcom/google/android/gms/internal/ads/zzdil;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzsk;)V
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfy:Lcom/google/android/gms/internal/ads/zzdil;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdil;->zzhft:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdik;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdik;-><init>(Lcom/google/android/gms/internal/ads/zzsk;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzsp;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhft:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzsq;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzvg;)V
    .locals 3

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfy:Lcom/google/android/gms/internal/ads/zzdil;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdil;->zzhft:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdin;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzdin;-><init>(Lcom/google/android/gms/internal/ads/zzvg;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdil;->zzhft:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdim;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdim;-><init>(Lcom/google/android/gms/internal/ads/zzvg;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    return-void
.end method

.method public final zzvo()V
    .locals 3

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfy:Lcom/google/android/gms/internal/ads/zzdil;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfx:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdiq;->zzgya:Lcom/google/android/gms/internal/ads/zzdkc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdil;->zzhfv:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdit;->zzgya:Lcom/google/android/gms/internal/ads/zzdkc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    return-void
.end method
