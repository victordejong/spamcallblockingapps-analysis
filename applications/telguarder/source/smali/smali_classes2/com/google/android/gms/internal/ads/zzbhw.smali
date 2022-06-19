.class final Lcom/google/android/gms/internal/ads/zzbhw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdle;


# instance fields
.field private final synthetic zzffq:Lcom/google/android/gms/internal/ads/zzbgz;

.field private zzflt:Landroid/content/Context;

.field private zzflu:Ljava/lang/String;

.field private zzfnv:Lcom/google/android/gms/internal/ads/zzvs;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbgz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhw;->zzffq:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzbgy;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhw;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;)V

    return-void
.end method


# virtual methods
.method public final zzahy()Lcom/google/android/gms/internal/ads/zzdlf;
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhw;->zzflt:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhw;->zzflu:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhw;->zzfnv:Lcom/google/android/gms/internal/ads/zzvs;

    const-class v1, Lcom/google/android/gms/internal/ads/zzvs;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbhw;->zzffq:Lcom/google/android/gms/internal/ads/zzbgz;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbhw;->zzflt:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbhw;->zzflu:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbhw;->zzfnv:Lcom/google/android/gms/internal/ads/zzvs;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzbhz;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvs;Lcom/google/android/gms/internal/ads/zzbgy;)V

    return-object v0
.end method

.method public final synthetic zzbz(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdle;
    .locals 0

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeqh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhw;->zzflt:Landroid/content/Context;

    return-object p0
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzvs;)Lcom/google/android/gms/internal/ads/zzdle;
    .locals 0

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeqh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvs;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhw;->zzfnv:Lcom/google/android/gms/internal/ads/zzvs;

    return-object p0
.end method

.method public final synthetic zzfq(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdle;
    .locals 0

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeqh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhw;->zzflu:Ljava/lang/String;

    return-object p0
.end method
