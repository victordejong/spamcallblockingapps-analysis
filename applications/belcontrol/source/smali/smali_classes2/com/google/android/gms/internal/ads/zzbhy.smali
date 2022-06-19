.class public final Lcom/google/android/gms/internal/ads/zzbhy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdmr;


# instance fields
.field private final synthetic zzffq:Lcom/google/android/gms/internal/ads/zzbgz;

.field private zzflt:Landroid/content/Context;

.field private zzflu:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbgz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhy;->zzffq:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzbgy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhy;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;)V

    return-void
.end method


# virtual methods
.method public final zzaib()Lcom/google/android/gms/internal/ads/zzdmo;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhy;->zzflt:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbib;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhy;->zzffq:Lcom/google/android/gms/internal/ads/zzbgz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhy;->zzflt:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbhy;->zzflu:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbib;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbgy;)V

    return-object v0
.end method

.method public final synthetic zzca(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdmr;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeqh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhy;->zzflt:Landroid/content/Context;

    return-object p0
.end method

.method public final synthetic zzfr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdmr;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhy;->zzflu:Ljava/lang/String;

    return-object p0
.end method
