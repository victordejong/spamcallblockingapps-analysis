.class public final Lcom/facebook/ads/redexgen/X/br;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/JC;


# static fields
.field public static A03:Lcom/facebook/ads/redexgen/X/JC;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A04:[B

.field public static final A05:Ljava/lang/String;

.field public static volatile A06:Z


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/XK;

.field public final A01:Lcom/facebook/ads/redexgen/X/9K;

.field public final A02:Lcom/facebook/ads/redexgen/X/JB;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 70919
    invoke-static {}, Lcom/facebook/ads/redexgen/X/br;->A03()V

    const-class v0, Lcom/facebook/ads/redexgen/X/br;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/br;->A05:Ljava/lang/String;

    .line 70920
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/br;->A06:Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XK;)V
    .locals 2

    .line 70921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70922
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 70923
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J6;->A0U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70924
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9I;->A00(Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/9K;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A01:Lcom/facebook/ads/redexgen/X/9K;

    .line 70925
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A01:Lcom/facebook/ads/redexgen/X/9K;

    .line 70926
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JG;->A01(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/9K;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v0

    .line 70927
    .local p0, "dispatchCallback":Lcom/facebook/ads/redexgen/X/JA;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/XK;
    .local p0, "dispatchCallback":Lcom/facebook/ads/redexgen/X/JA;
    :goto_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/bo;

    invoke-direct {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/bo;-><init>(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/JA;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/br;->A02:Lcom/facebook/ads/redexgen/X/JB;

    .line 70928
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lm;->A08:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bp;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bp;-><init>(Lcom/facebook/ads/redexgen/X/br;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70929
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/br;->A04(Lcom/facebook/ads/redexgen/X/XK;)V

    .line 70930
    return-void

    .line 70931
    .end local p0    # "dispatchCallback":Lcom/facebook/ads/redexgen/X/JA;
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9I;->A01(Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/EQ;

    move-result-object v1

    .line 70932
    .local p0, "adEventStorage":Lcom/facebook/ads/redexgen/X/Xw;
    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/JG;->A00(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/Xw;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v0

    .line 70933
    .local p1, "dispatchCallback":Lcom/facebook/ads/redexgen/X/JA;
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/br;->A01:Lcom/facebook/ads/redexgen/X/9K;

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/br;)Lcom/facebook/ads/redexgen/X/JB;
    .locals 0

    .line 70934
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/br;->A02:Lcom/facebook/ads/redexgen/X/JB;

    return-object p0
.end method

.method public static declared-synchronized A01(Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/JC;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/br;

    monitor-enter v1

    .line 70935
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/br;->A03:Lcom/facebook/ads/redexgen/X/JC;

    if-nez v0, :cond_0

    .line 70936
    new-instance v0, Lcom/facebook/ads/redexgen/X/br;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/br;-><init>(Lcom/facebook/ads/redexgen/X/XK;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/br;->A03:Lcom/facebook/ads/redexgen/X/JC;

    .line 70937
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/br;->A03:Lcom/facebook/ads/redexgen/X/JC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 70938
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/br;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/br;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x5at
        -0x15t
        -0x4t
        -0x15t
        -0xct
        -0x6t
        -0x4ct
        -0x58t
        -0x25t
        -0x25t
        -0x34t
        -0x2ct
        -0x29t
        -0x25t
        -0x30t
        -0x2bt
        -0x32t
        -0x79t
        -0x25t
        -0x2at
        -0x79t
        -0x2dt
        -0x2at
        -0x32t
        -0x79t
        -0x38t
        -0x2bt
        -0x79t
        -0x30t
        -0x2bt
        -0x23t
        -0x38t
        -0x2dt
        -0x30t
        -0x35t
        -0x79t
    .end array-data
.end method

.method public static declared-synchronized A04(Lcom/facebook/ads/redexgen/X/XK;)V
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/br;

    monitor-enter v1

    .line 70939
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/br;->A06:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70940
    monitor-exit v1

    return-void

    .line 70941
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/facebook/ads/internal/api/InitApi;->onAdEventManagerCreated(Landroid/content/Context;)V

    .line 70942
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/br;->A06:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70943
    monitor-exit v1

    return-void

    .line 70944
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/J9;)V
    .locals 5

    .line 70945
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/J9;->A0B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70946
    sget-object v4, Lcom/facebook/ads/redexgen/X/br;->A05:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x7

    const/16 v1, 0x1d

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/br;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/J9;->A07()Lcom/facebook/ads/redexgen/X/JE;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/br;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70947
    return-void

    .line 70948
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/br;->A01:Lcom/facebook/ads/redexgen/X/9K;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bq;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/bq;-><init>(Lcom/facebook/ads/redexgen/X/br;Lcom/facebook/ads/redexgen/X/J9;)V

    invoke-interface {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/9K;->AEl(Lcom/facebook/ads/redexgen/X/J9;Lcom/facebook/ads/redexgen/X/9H;)V

    .line 70949
    return-void
.end method


# virtual methods
.method public final A8N(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70950
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 70951
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 70952
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 70953
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 70954
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JD;->A04:Lcom/facebook/ads/redexgen/X/JD;

    .line 70955
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JD;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JE;

    .line 70956
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 70957
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 70958
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 70959
    return-void
.end method

.method public final A8Q(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70960
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 70961
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 70962
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 70963
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 70964
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JD;->A04:Lcom/facebook/ads/redexgen/X/JD;

    .line 70965
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JD;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A06:Lcom/facebook/ads/redexgen/X/JE;

    .line 70966
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 70967
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 70968
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 70969
    return-void
.end method

.method public final A8R(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70970
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70971
    return-void

    .line 70972
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 70973
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 70974
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 70975
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 70976
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JD;->A04:Lcom/facebook/ads/redexgen/X/JD;

    .line 70977
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JD;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A07:Lcom/facebook/ads/redexgen/X/JE;

    .line 70978
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A0I:Lcom/facebook/ads/redexgen/X/JI;

    .line 70979
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JL;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JI;)Z

    move-result v0

    .line 70980
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A06(Z)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 70981
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 70982
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 70983
    return-void
.end method

.method public final A8S(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70984
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70985
    return-void

    .line 70986
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 70987
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 70988
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 70989
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 70990
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JD;->A04:Lcom/facebook/ads/redexgen/X/JD;

    .line 70991
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JD;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A08:Lcom/facebook/ads/redexgen/X/JE;

    .line 70992
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A06:Lcom/facebook/ads/redexgen/X/JI;

    .line 70993
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JL;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JI;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A06(Z)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 70994
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 70995
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 70996
    return-void
.end method

.method public final A8U(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70997
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70998
    return-void

    .line 70999
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 71000
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71001
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71002
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 71003
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JD;->A04:Lcom/facebook/ads/redexgen/X/JD;

    .line 71004
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JD;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A0B:Lcom/facebook/ads/redexgen/X/JE;

    .line 71005
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71006
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 71007
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 71008
    return-void
.end method

.method public final A8Y(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71009
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71010
    return-void

    .line 71011
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 71012
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71013
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71014
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 71015
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JD;->A04:Lcom/facebook/ads/redexgen/X/JD;

    .line 71016
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JD;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A0C:Lcom/facebook/ads/redexgen/X/JE;

    .line 71017
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71018
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 71019
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 71020
    return-void
.end method

.method public final A8a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71021
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71022
    return-void

    .line 71023
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 71024
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71025
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71026
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 71027
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JD;->A05:Lcom/facebook/ads/redexgen/X/JD;

    .line 71028
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JD;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A0D:Lcom/facebook/ads/redexgen/X/JE;

    .line 71029
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A0T:Lcom/facebook/ads/redexgen/X/JI;

    .line 71030
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JL;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JI;)Z

    move-result v0

    .line 71031
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A06(Z)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71032
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 71033
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 71034
    return-void
.end method

.method public final A8b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71035
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71036
    return-void

    .line 71037
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 71038
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71039
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71040
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 71041
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JD;->A05:Lcom/facebook/ads/redexgen/X/JD;

    .line 71042
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JD;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A0E:Lcom/facebook/ads/redexgen/X/JE;

    .line 71043
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71044
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 71045
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 71046
    return-void
.end method

.method public final A8c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71047
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71048
    return-void

    .line 71049
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 71050
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71051
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71052
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 71053
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JD;->A05:Lcom/facebook/ads/redexgen/X/JD;

    .line 71054
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JD;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A0H:Lcom/facebook/ads/redexgen/X/JE;

    .line 71055
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A0V:Lcom/facebook/ads/redexgen/X/JI;

    .line 71056
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JL;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JI;)Z

    move-result v0

    .line 71057
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A06(Z)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71058
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 71059
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 71060
    return-void
.end method

.method public final A8e(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71061
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71062
    return-void

    .line 71063
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 71064
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71065
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71066
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 71067
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JD;->A04:Lcom/facebook/ads/redexgen/X/JD;

    .line 71068
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JD;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A0G:Lcom/facebook/ads/redexgen/X/JE;

    .line 71069
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A0W:Lcom/facebook/ads/redexgen/X/JI;

    .line 71070
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JL;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JI;)Z

    move-result v0

    .line 71071
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A06(Z)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71072
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 71073
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 71074
    return-void
.end method

.method public final A8g(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JD;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/JD;",
            ")V"
        }
    .end annotation

    .line 71075
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 71076
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71077
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71078
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 71079
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 71080
    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JD;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    .line 71081
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/JE;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JE;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71082
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 71083
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 71084
    return-void
.end method

.method public final A8h(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71085
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71086
    return-void

    .line 71087
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 71088
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71089
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71090
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 71091
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JD;->A04:Lcom/facebook/ads/redexgen/X/JD;

    .line 71092
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JD;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A0I:Lcom/facebook/ads/redexgen/X/JE;

    .line 71093
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71094
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 71095
    .local p0, "adEvent":Lcom/facebook/ads/redexgen/X/J9;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 71096
    return-void
.end method

.method public final A8m(Ljava/lang/String;)V
    .locals 3

    .line 71097
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71098
    return-void

    .line 71099
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 71100
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71101
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71102
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JD;->A04:Lcom/facebook/ads/redexgen/X/JD;

    .line 71103
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JD;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A0K:Lcom/facebook/ads/redexgen/X/JE;

    .line 71104
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A0Y:Lcom/facebook/ads/redexgen/X/JI;

    .line 71105
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JL;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JI;)Z

    move-result v0

    .line 71106
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A06(Z)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71107
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 71108
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 71109
    return-void
.end method

.method public final A8o(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71110
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71111
    return-void

    .line 71112
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 71113
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71114
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71115
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 71116
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JD;->A04:Lcom/facebook/ads/redexgen/X/JD;

    .line 71117
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JD;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A0F:Lcom/facebook/ads/redexgen/X/JE;

    .line 71118
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71119
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 71120
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 71121
    return-void
.end method

.method public final A8p(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71122
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71123
    return-void

    .line 71124
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 71125
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71126
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71127
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 71128
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JD;->A05:Lcom/facebook/ads/redexgen/X/JD;

    .line 71129
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JD;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A0L:Lcom/facebook/ads/redexgen/X/JE;

    .line 71130
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A0c:Lcom/facebook/ads/redexgen/X/JI;

    .line 71131
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JL;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JI;)Z

    move-result v0

    .line 71132
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A06(Z)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71133
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 71134
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 71135
    return-void
.end method

.method public final A8q(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71136
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71137
    return-void

    .line 71138
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 71139
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71140
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71141
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 71142
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JD;->A04:Lcom/facebook/ads/redexgen/X/JD;

    .line 71143
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JD;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A0P:Lcom/facebook/ads/redexgen/X/JE;

    .line 71144
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A0e:Lcom/facebook/ads/redexgen/X/JI;

    .line 71145
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JL;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JI;)Z

    move-result v0

    .line 71146
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A06(Z)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71147
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 71148
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 71149
    return-void
.end method

.method public final A8r(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71150
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71151
    return-void

    .line 71152
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 71153
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71154
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71155
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 71156
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JD;->A04:Lcom/facebook/ads/redexgen/X/JD;

    .line 71157
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JD;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A0O:Lcom/facebook/ads/redexgen/X/JE;

    .line 71158
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A0f:Lcom/facebook/ads/redexgen/X/JI;

    .line 71159
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JL;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JI;)Z

    move-result v0

    .line 71160
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A06(Z)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71161
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 71162
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 71163
    return-void
.end method

.method public final A8s(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71164
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 71165
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71166
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71167
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 71168
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JD;->A05:Lcom/facebook/ads/redexgen/X/JD;

    .line 71169
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JD;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A0Q:Lcom/facebook/ads/redexgen/X/JE;

    .line 71170
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71171
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 71172
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 71173
    return-void
.end method

.method public final A8u(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71174
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71175
    return-void

    .line 71176
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 71177
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71178
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71179
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 71180
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JD;->A05:Lcom/facebook/ads/redexgen/X/JD;

    .line 71181
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JD;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A0R:Lcom/facebook/ads/redexgen/X/JE;

    .line 71182
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71183
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 71184
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 71185
    return-void
.end method

.method public final ACS(Ljava/lang/String;)V
    .locals 3

    .line 71186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/br;->A00:Lcom/facebook/ads/redexgen/X/XK;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Qe;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Qe;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Qe;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71187
    return-void
.end method
