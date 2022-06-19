.class public final Lcom/google/android/gms/internal/ads/zzdlh;
.super Lcom/google/android/gms/ads/reward/AdMetadataListener;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbrm;
.implements Lcom/google/android/gms/internal/ads/zzbrr;
.implements Lcom/google/android/gms/internal/ads/zzbsa;
.implements Lcom/google/android/gms/internal/ads/zzbtb;
.implements Lcom/google/android/gms/internal/ads/zzbtt;
.implements Lcom/google/android/gms/internal/ads/zzdkk;


# instance fields
.field private final zzhfs:Lcom/google/android/gms/internal/ads/zzdov;

.field private final zzhia:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/ads/reward/AdMetadataListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhib:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzavu;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhic:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzavr;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhid:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzauu;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhie:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzavz;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhif:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzaup;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhig:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzyw;",
            ">;"
        }
    .end annotation
.end field

.field private zzhih:Lcom/google/android/gms/internal/ads/zzdlh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdov;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/reward/AdMetadataListener;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhia:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhib:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhic:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhid:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhie:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhif:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhig:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhih:Lcom/google/android/gms/internal/ads/zzdlh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhfs:Lcom/google/android/gms/internal/ads/zzdov;

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .locals 3

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhih:Lcom/google/android/gms/internal/ads/zzdlh;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhfs:Lcom/google/android/gms/internal/ads/zzdov;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdov;->onAdClosed()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhic:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdlz;->zzgya:Lcom/google/android/gms/internal/ads/zzdkc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhid:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdly;->zzgya:Lcom/google/android/gms/internal/ads/zzdkc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhih:Lcom/google/android/gms/internal/ads/zzdlh;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhid:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdmb;->zzgya:Lcom/google/android/gms/internal/ads/zzdkc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 3

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhih:Lcom/google/android/gms/internal/ads/zzdlh;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhib:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdlg;->zzgya:Lcom/google/android/gms/internal/ads/zzdkc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhid:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdlj;->zzgya:Lcom/google/android/gms/internal/ads/zzdkc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    return-void
.end method

.method public final onAdMetadataChanged()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhih:Lcom/google/android/gms/internal/ads/zzdlh;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/reward/AdMetadataListener;->onAdMetadataChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhia:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdlq;->zzgya:Lcom/google/android/gms/internal/ads/zzdkc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    return-void
.end method

.method public final onAdOpened()V
    .locals 3

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhih:Lcom/google/android/gms/internal/ads/zzdlh;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhic:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdlx;->zzgya:Lcom/google/android/gms/internal/ads/zzdkc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhid:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdlw;->zzgya:Lcom/google/android/gms/internal/ads/zzdkc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhih:Lcom/google/android/gms/internal/ads/zzdlh;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhid:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdlp;->zzgya:Lcom/google/android/gms/internal/ads/zzdkc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhih:Lcom/google/android/gms/internal/ads/zzdlh;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhid:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdli;->zzgya:Lcom/google/android/gms/internal/ads/zzdkc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhia:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzauk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhih:Lcom/google/android/gms/internal/ads/zzdlh;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhic:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdll;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzdll;-><init>(Lcom/google/android/gms/internal/ads/zzauk;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhie:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdlk;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdlk;-><init>(Lcom/google/android/gms/internal/ads/zzauk;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhid:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdln;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzdln;-><init>(Lcom/google/android/gms/internal/ads/zzauk;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhif:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdlm;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdlm;-><init>(Lcom/google/android/gms/internal/ads/zzauk;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaup;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhif:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzauu;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhid:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzavr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhic:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzavu;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhib:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzavz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhie:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdkk;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdlh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhih:Lcom/google/android/gms/internal/ads/zzdlh;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzvu;)V
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhih:Lcom/google/android/gms/internal/ads/zzdlh;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhig:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdlt;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdlt;-><init>(Lcom/google/android/gms/internal/ads/zzvu;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzvg;)V
    .locals 4

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhih:Lcom/google/android/gms/internal/ads/zzdlh;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzvg;->errorCode:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhib:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdls;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/zzdls;-><init>(Lcom/google/android/gms/internal/ads/zzvg;)V

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhib:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdlv;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzdlv;-><init>(I)V

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhid:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdlu;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdlu;-><init>(I)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzyw;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhig:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzvg;)V
    .locals 3

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhih:Lcom/google/android/gms/internal/ads/zzdlh;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhic:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdlo;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzdlo;-><init>(Lcom/google/android/gms/internal/ads/zzvg;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdlh;->zzhic:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdlr;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdlr;-><init>(Lcom/google/android/gms/internal/ads/zzvg;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdkc;)V

    return-void
.end method
