.class public final Lcom/google/android/gms/internal/ads/wq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static a:Lcom/google/android/gms/internal/ads/dxq;

.field private static final b:Ljava/lang/Object;

.field private static final c:Lcom/google/android/gms/internal/ads/wu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/wu",
            "<",
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

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/wq;->b:Ljava/lang/Object;

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/wp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/wp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/wq;->c:Lcom/google/android/gms/internal/ads/wu;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wq;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/dxq;

    .line 4
    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/drt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/yo;-><init>()V

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/wq;->a:Lcom/google/android/gms/internal/ads/dxq;

    new-instance v2, Lcom/google/android/gms/internal/ads/ww;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/ww;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/yo;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dxq;->a(Lcom/google/android/gms/internal/ads/dts;)Lcom/google/android/gms/internal/ads/dts;

    .line 8
    return-object v0
.end method

.method private static a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/dxq;
    .locals 3

    .prologue
    .line 20
    sget-object v1, Lcom/google/android/gms/internal/ads/wq;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/wq;->a:Lcom/google/android/gms/internal/ads/dxq;

    if-nez v0, :cond_0

    .line 22
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/edi;->a(Landroid/content/Context;)V

    .line 23
    invoke-static {}, Lcom/google/android/gms/common/util/d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bR:Lcom/google/android/gms/internal/ads/ect;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 26
    :goto_0
    if-eqz v0, :cond_2

    .line 27
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/wg;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/dxq;

    move-result-object v0

    .line 28
    :goto_1
    sput-object v0, Lcom/google/android/gms/internal/ads/wq;->a:Lcom/google/android/gms/internal/ads/dxq;

    .line 29
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/wq;->a:Lcom/google/android/gms/internal/ads/dxq;

    monitor-exit v1

    return-object v0

    .line 25
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 28
    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ye;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/dxq;

    move-result-object v0

    goto :goto_1

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/ads/crt;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 9
    new-instance v4, Lcom/google/android/gms/internal/ads/wt;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/ads/wt;-><init>(Lcom/google/android/gms/internal/ads/wp;)V

    .line 10
    new-instance v5, Lcom/google/android/gms/internal/ads/ws;

    invoke-direct {v5, p0, p2, v4}, Lcom/google/android/gms/internal/ads/ws;-><init>(Lcom/google/android/gms/internal/ads/wq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/wt;)V

    .line 11
    new-instance v8, Lcom/google/android/gms/internal/ads/xv;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/ads/xv;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/wr;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/wr;-><init>(Lcom/google/android/gms/internal/ads/wq;ILjava/lang/String;Lcom/google/android/gms/internal/ads/ac;Lcom/google/android/gms/internal/ads/ebp;[BLjava/util/Map;Lcom/google/android/gms/internal/ads/xv;)V

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/xv;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    :try_start_0
    const-string/jumbo v1, "GET"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dts;->b()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dts;->a()[B

    move-result-object v3

    invoke-virtual {v8, p2, v1, v2, v3}, Lcom/google/android/gms/internal/ads/xv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzb; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :cond_0
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/wq;->a:Lcom/google/android/gms/internal/ads/dxq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dxq;->a(Lcom/google/android/gms/internal/ads/dts;)Lcom/google/android/gms/internal/ads/dts;

    .line 18
    return-object v4

    .line 16
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/crt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/wq;->a(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
