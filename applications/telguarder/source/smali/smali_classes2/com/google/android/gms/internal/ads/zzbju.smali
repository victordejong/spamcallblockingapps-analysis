.class public final Lcom/google/android/gms/internal/ads/zzbju;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzbro:Ljava/lang/String;

.field private final zzfry:Lcom/google/android/gms/internal/ads/zzamo;

.field private zzfrz:Lcom/google/android/gms/internal/ads/zzbjz;

.field private final zzfsa:Lcom/google/android/gms/internal/ads/zzaif;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaif<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfsb:Lcom/google/android/gms/internal/ads/zzaif;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaif<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamo;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbjt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbjt;-><init>(Lcom/google/android/gms/internal/ads/zzbju;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbju;->zzfsa:Lcom/google/android/gms/internal/ads/zzaif;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbjv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbjv;-><init>(Lcom/google/android/gms/internal/ads/zzbju;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbju;->zzfsb:Lcom/google/android/gms/internal/ads/zzaif;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbju;->zzbro:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbju;->zzfry:Lcom/google/android/gms/internal/ads/zzamo;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbju;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbju;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbju;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbju;Ljava/util/Map;)Z
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbju;->zzn(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbju;)Lcom/google/android/gms/internal/ads/zzbjz;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbju;->zzfrz:Lcom/google/android/gms/internal/ads/zzbjz;

    return-object p0
.end method

.method private final zzn(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "hashCode"

    .line 23
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbju;->zzbro:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbeb;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbju;->zzfsa:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v1, "/updateActiveView"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbju;->zzfsb:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v1, "/untrackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbjz;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbju;->zzfry:Lcom/google/android/gms/internal/ads/zzamo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbju;->zzfsa:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v2, "/updateActiveView"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzamo;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbju;->zzfry:Lcom/google/android/gms/internal/ads/zzamo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbju;->zzfsb:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v2, "/untrackActiveViewUnit"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzamo;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbju;->zzfrz:Lcom/google/android/gms/internal/ads/zzbjz;

    return-void
.end method

.method public final zzaix()V
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbju;->zzfry:Lcom/google/android/gms/internal/ads/zzamo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbju;->zzfsa:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v2, "/updateActiveView"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzamo;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbju;->zzfry:Lcom/google/android/gms/internal/ads/zzamo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbju;->zzfsb:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v2, "/untrackActiveViewUnit"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzamo;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbeb;)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbju;->zzfsa:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v1, "/updateActiveView"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbju;->zzfsb:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v1, "/untrackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    return-void
.end method
