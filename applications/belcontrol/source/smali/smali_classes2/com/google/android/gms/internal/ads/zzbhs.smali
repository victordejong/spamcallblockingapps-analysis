.class public final Lcom/google/android/gms/internal/ads/zzbhs;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zzewm:Lcom/google/android/gms/internal/ads/zzbgb;

.field private zzfoa:Lcom/google/android/gms/internal/ads/zzbig;

.field private zzfob:Lcom/google/android/gms/internal/ads/zzdru;

.field private zzfoc:Lcom/google/android/gms/internal/ads/zzbiq;

.field private zzfod:Lcom/google/android/gms/internal/ads/zzdol;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbgy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhs;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbig;)Lcom/google/android/gms/internal/ads/zzbhs;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeqh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbig;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzfoa:Lcom/google/android/gms/internal/ads/zzbig;

    return-object p0
.end method

.method public final zzahv()Lcom/google/android/gms/internal/ads/zzbgc;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzewm:Lcom/google/android/gms/internal/ads/zzbgb;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbgb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzfoa:Lcom/google/android/gms/internal/ads/zzbig;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbig;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzfob:Lcom/google/android/gms/internal/ads/zzdru;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdru;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdru;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzfob:Lcom/google/android/gms/internal/ads/zzdru;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzfoc:Lcom/google/android/gms/internal/ads/zzbiq;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbiq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbiq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzfoc:Lcom/google/android/gms/internal/ads/zzbiq;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzfod:Lcom/google/android/gms/internal/ads/zzdol;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdol;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdol;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzfod:Lcom/google/android/gms/internal/ads/zzdol;

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzewm:Lcom/google/android/gms/internal/ads/zzbgb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzfoa:Lcom/google/android/gms/internal/ads/zzbig;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzfob:Lcom/google/android/gms/internal/ads/zzdru;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzfoc:Lcom/google/android/gms/internal/ads/zzbiq;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzfod:Lcom/google/android/gms/internal/ads/zzdol;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbgz;-><init>(Lcom/google/android/gms/internal/ads/zzbgb;Lcom/google/android/gms/internal/ads/zzbig;Lcom/google/android/gms/internal/ads/zzdru;Lcom/google/android/gms/internal/ads/zzbiq;Lcom/google/android/gms/internal/ads/zzdol;Lcom/google/android/gms/internal/ads/zzbgy;)V

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbgb;)Lcom/google/android/gms/internal/ads/zzbhs;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeqh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzewm:Lcom/google/android/gms/internal/ads/zzbgb;

    return-object p0
.end method
