.class public final Lcom/google/android/gms/internal/ads/zzbhe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzblj;


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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhe;->zzffq:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzbgy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhe;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdjx;)Lcom/google/android/gms/internal/ads/zzbqy;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhe;->zzezd:Lcom/google/android/gms/internal/ads/zzdjx;

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdkv;)Lcom/google/android/gms/internal/ads/zzbqy;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhe;->zzezc:Lcom/google/android/gms/internal/ads/zzdkv;

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdnl;)Lcom/google/android/gms/internal/ads/zzbqy;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhe;->zzeyz:Lcom/google/android/gms/internal/ads/zzdnl;

    return-object p0
.end method

.method public final synthetic zzagm()Ljava/lang/Object;
    .locals 15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhe;->zzezg:Lcom/google/android/gms/internal/ads/zzbwg;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbwg;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhe;->zzeyy:Lcom/google/android/gms/internal/ads/zzbqx;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbqx;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhh;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbhe;->zzffq:Lcom/google/android/gms/internal/ads/zzbgz;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbpa;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzbpa;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdon;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzdon;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbqh;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzbqh;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcle;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzcle;-><init>()V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzbhe;->zzezg:Lcom/google/android/gms/internal/ads/zzbwg;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzbhe;->zzeyy:Lcom/google/android/gms/internal/ads/zzbqx;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzdor;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzdor;-><init>()V

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzbhe;->zzeyz:Lcom/google/android/gms/internal/ads/zzdnl;

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/zzbhe;->zzezc:Lcom/google/android/gms/internal/ads/zzdkv;

    iget-object v13, p0, Lcom/google/android/gms/internal/ads/zzbhe;->zzezd:Lcom/google/android/gms/internal/ads/zzdjx;

    const/4 v14, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzbhh;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzbpa;Lcom/google/android/gms/internal/ads/zzdon;Lcom/google/android/gms/internal/ads/zzbqh;Lcom/google/android/gms/internal/ads/zzcle;Lcom/google/android/gms/internal/ads/zzbwg;Lcom/google/android/gms/internal/ads/zzbqx;Lcom/google/android/gms/internal/ads/zzdor;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdkv;Lcom/google/android/gms/internal/ads/zzdjx;Lcom/google/android/gms/internal/ads/zzbgy;)V

    return-object v0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzblu;)Lcom/google/android/gms/internal/ads/zzblj;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeqh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzbqx;)Lcom/google/android/gms/internal/ads/zzblj;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeqh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbqx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhe;->zzeyy:Lcom/google/android/gms/internal/ads/zzbqx;

    return-object p0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzbwg;)Lcom/google/android/gms/internal/ads/zzblj;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeqh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbwg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhe;->zzezg:Lcom/google/android/gms/internal/ads/zzbwg;

    return-object p0
.end method
