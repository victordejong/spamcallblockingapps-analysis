.class final Lcom/google/android/gms/internal/ads/zzbif;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczl;


# instance fields
.field private zzeyy:Lcom/google/android/gms/internal/ads/zzbqx;

.field private final synthetic zzffq:Lcom/google/android/gms/internal/ads/zzbgz;

.field private zzfqe:Lcom/google/android/gms/internal/ads/zzdab;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbgz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbif;->zzffq:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzbgy;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbif;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdab;)Lcom/google/android/gms/internal/ads/zzczl;
    .locals 0

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeqh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdab;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbif;->zzfqe:Lcom/google/android/gms/internal/ads/zzdab;

    return-object p0
.end method

.method public final zzaim()Lcom/google/android/gms/internal/ads/zzczm;
    .locals 12

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbif;->zzeyy:Lcom/google/android/gms/internal/ads/zzbqx;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbqx;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbif;->zzfqe:Lcom/google/android/gms/internal/ads/zzdab;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdab;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbie;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbif;->zzffq:Lcom/google/android/gms/internal/ads/zzbgz;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbif;->zzfqe:Lcom/google/android/gms/internal/ads/zzdab;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbpa;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzbpa;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcle;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzcle;-><init>()V

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbif;->zzeyy:Lcom/google/android/gms/internal/ads/zzbqx;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzdor;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzdor;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/zzbie;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzdab;Lcom/google/android/gms/internal/ads/zzbpa;Lcom/google/android/gms/internal/ads/zzcle;Lcom/google/android/gms/internal/ads/zzbqx;Lcom/google/android/gms/internal/ads/zzdor;Lcom/google/android/gms/internal/ads/zzdkv;Lcom/google/android/gms/internal/ads/zzdjx;Lcom/google/android/gms/internal/ads/zzbgy;)V

    return-object v0
.end method

.method public final synthetic zzg(Lcom/google/android/gms/internal/ads/zzbqx;)Lcom/google/android/gms/internal/ads/zzczl;
    .locals 0

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeqh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbqx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbif;->zzeyy:Lcom/google/android/gms/internal/ads/zzbqx;

    return-object p0
.end method

.method public final synthetic zzg(Lcom/google/android/gms/internal/ads/zzbwg;)Lcom/google/android/gms/internal/ads/zzczl;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeqh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
