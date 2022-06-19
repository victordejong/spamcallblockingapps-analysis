.class final Lcom/google/android/gms/internal/ads/zzbia;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzchh;


# instance fields
.field private zzeyy:Lcom/google/android/gms/internal/ads/zzbqx;

.field private zzeyz:Lcom/google/android/gms/internal/ads/zzdnl;

.field private zzezc:Lcom/google/android/gms/internal/ads/zzdkv;

.field private zzezd:Lcom/google/android/gms/internal/ads/zzdjx;

.field private zzezg:Lcom/google/android/gms/internal/ads/zzbwg;

.field private final synthetic zzffq:Lcom/google/android/gms/internal/ads/zzbgz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbgz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbia;->zzffq:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzbgy;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbia;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdjx;)Lcom/google/android/gms/internal/ads/zzbqy;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbia;->zzezd:Lcom/google/android/gms/internal/ads/zzdjx;

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdkv;)Lcom/google/android/gms/internal/ads/zzbqy;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbia;->zzezc:Lcom/google/android/gms/internal/ads/zzdkv;

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdnl;)Lcom/google/android/gms/internal/ads/zzbqy;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbia;->zzeyz:Lcom/google/android/gms/internal/ads/zzdnl;

    return-object p0
.end method

.method public final synthetic zzagm()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzaid()Lcom/google/android/gms/internal/ads/zzchi;

    move-result-object v0

    return-object v0
.end method

.method public final zzaid()Lcom/google/android/gms/internal/ads/zzchi;
    .locals 15

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbia;->zzezg:Lcom/google/android/gms/internal/ads/zzbwg;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbwg;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbia;->zzeyy:Lcom/google/android/gms/internal/ads/zzbqx;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbqx;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbid;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbia;->zzffq:Lcom/google/android/gms/internal/ads/zzbgz;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbpa;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzbpa;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdon;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzdon;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbqh;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzbqh;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcle;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzcle;-><init>()V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzbia;->zzezg:Lcom/google/android/gms/internal/ads/zzbwg;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzbia;->zzeyy:Lcom/google/android/gms/internal/ads/zzbqx;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzdor;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzdor;-><init>()V

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzbia;->zzeyz:Lcom/google/android/gms/internal/ads/zzdnl;

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/zzbia;->zzezc:Lcom/google/android/gms/internal/ads/zzdkv;

    iget-object v13, p0, Lcom/google/android/gms/internal/ads/zzbia;->zzezd:Lcom/google/android/gms/internal/ads/zzdjx;

    const/4 v14, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzbid;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzbpa;Lcom/google/android/gms/internal/ads/zzdon;Lcom/google/android/gms/internal/ads/zzbqh;Lcom/google/android/gms/internal/ads/zzcle;Lcom/google/android/gms/internal/ads/zzbwg;Lcom/google/android/gms/internal/ads/zzbqx;Lcom/google/android/gms/internal/ads/zzdor;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdkv;Lcom/google/android/gms/internal/ads/zzdjx;Lcom/google/android/gms/internal/ads/zzbgy;)V

    return-object v0
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/ads/zzbqx;)Lcom/google/android/gms/internal/ads/zzchh;
    .locals 0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeqh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbqx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbia;->zzeyy:Lcom/google/android/gms/internal/ads/zzbqx;

    return-object p0
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/ads/zzbwg;)Lcom/google/android/gms/internal/ads/zzchh;
    .locals 0

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeqh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbwg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbia;->zzezg:Lcom/google/android/gms/internal/ads/zzbwg;

    return-object p0
.end method
