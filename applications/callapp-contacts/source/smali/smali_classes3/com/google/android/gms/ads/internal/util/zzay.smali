.class public final Lcom/google/android/gms/ads/internal/util/zzay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zzeie:Lcom/google/android/gms/internal/ads/dz;

.field private static final zzeif:Ljava/lang/Object;

.field private static final zzeig:Lcom/google/android/gms/ads/internal/util/zzbc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/util/zzbc<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/util/zzay;->zzeif:Ljava/lang/Object;

    .line 32
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzax;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/zzax;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/util/zzay;->zzeig:Lcom/google/android/gms/ads/internal/util/zzbc;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzay;->zzbm(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/dz;

    return-void
.end method

.method private static zzbm(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/dz;
    .locals 4

    .line 20
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzay;->zzeif:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzay;->zzeie:Lcom/google/android/gms/internal/ads/dz;

    if-nez v1, :cond_1

    .line 22
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/aq;->a(Landroid/content/Context;)V

    .line 23
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->ct:Lcom/google/android/gms/internal/ads/af;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzan;->zzbl(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/dz;

    move-result-object p0

    goto :goto_0

    .line 1002
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/sn;

    new-instance v2, Lcom/google/android/gms/internal/ads/abi;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/abi;-><init>()V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/sn;-><init>(Lcom/google/android/gms/internal/ads/pq;)V

    .line 1004
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1005
    new-instance v2, Lcom/google/android/gms/internal/ads/akm;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/akm;-><init>(Landroid/content/Context;)V

    .line 1006
    new-instance p0, Lcom/google/android/gms/internal/ads/dz;

    new-instance v3, Lcom/google/android/gms/internal/ads/tl;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/tl;-><init>(Lcom/google/android/gms/internal/ads/xl;)V

    invoke-direct {p0, v3, v1}, Lcom/google/android/gms/internal/ads/dz;-><init>(Lcom/google/android/gms/internal/ads/dxu;Lcom/google/android/gms/internal/ads/ehl;)V

    .line 1007
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dz;->a()V

    .line 28
    :goto_0
    sput-object p0, Lcom/google/android/gms/ads/internal/util/zzay;->zzeie:Lcom/google/android/gms/internal/ads/dz;

    .line 29
    :cond_1
    sget-object p0, Lcom/google/android/gms/ads/internal/util/zzay;->zzeie:Lcom/google/android/gms/internal/ads/dz;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static zzeq(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/emg;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zp;-><init>()V

    .line 7
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzay;->zzeie:Lcom/google/android/gms/internal/ads/dz;

    new-instance v2, Lcom/google/android/gms/ads/internal/util/zzbe;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/util/zzbe;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zp;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dz;->a(Lcom/google/android/gms/internal/ads/z;)Lcom/google/android/gms/internal/ads/z;

    return-object v0
.end method


# virtual methods
.method public final zza(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/ads/dbt;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 9
    new-instance v10, Lcom/google/android/gms/ads/internal/util/zzbb;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lcom/google/android/gms/ads/internal/util/zzbb;-><init>(Lcom/google/android/gms/ads/internal/util/zzax;)V

    .line 10
    new-instance v6, Lcom/google/android/gms/ads/internal/util/zzba;

    move-object v11, p0

    invoke-direct {v6, p0, v0, v10}, Lcom/google/android/gms/ads/internal/util/zzba;-><init>(Lcom/google/android/gms/ads/internal/util/zzay;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzbb;)V

    .line 11
    new-instance v12, Lcom/google/android/gms/internal/ads/yu;

    invoke-direct {v12, v1}, Lcom/google/android/gms/internal/ads/yu;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v13, Lcom/google/android/gms/ads/internal/util/zzaz;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/util/zzaz;-><init>(Lcom/google/android/gms/ads/internal/util/zzay;ILjava/lang/String;Lcom/google/android/gms/internal/ads/hb;Lcom/google/android/gms/internal/ads/ib;[BLjava/util/Map;Lcom/google/android/gms/internal/ads/yu;)V

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/yu;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "GET"

    .line 14
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/z;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/z;->zzg()[B

    move-result-object v3

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/yu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzl; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 17
    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzay;->zzeie:Lcom/google/android/gms/internal/ads/dz;

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/dz;->a(Lcom/google/android/gms/internal/ads/z;)Lcom/google/android/gms/internal/ads/z;

    return-object v10
.end method

.method public final zzb(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/google/android/gms/ads/internal/util/zzay;->zza(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
