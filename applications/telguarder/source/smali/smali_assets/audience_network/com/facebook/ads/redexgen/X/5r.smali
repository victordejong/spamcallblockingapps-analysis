.class public final Lcom/facebook/ads/redexgen/X/5r;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/5w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 13966
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5r;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5r;->A01()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/5r;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/5r;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte p1, v3, p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/5r;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/5r;->A01:[Ljava/lang/String;

    const-string v1, "w1UoonFT025CAGo8zoZG5JtdQ4eV1KHN"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "UZOQFO6VOehCka7XTo0QPzGkZ82ernpU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    xor-int/2addr p1, p2

    xor-int/lit8 v0, p1, 0x53

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5r;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x14t
        0x5t
        0x8t
        0x4t
        0xft
        0x2t
        0x4t
        0x3et
        0xft
        0x4t
        0x15t
        0x16t
        0xet
        0x13t
        0xat
        0x4ft
        0x5t
        0x4t
        0x19t
        0x17t
        0x15t
        0x1et
        0x15t
        0x2t
        0x19t
        0x13t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "OlqKCBNG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "M93Tf7j0heXimgcyxnqTaSCVKiSkjyw4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VeaxCzx9m258xuMfg9MtKUI3zXvq3Y"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "fVTjVXjK80OJbrBfNxO18"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sEvRvxWDWlpvIjIukojCYg"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dWV6AZCt7S8GjKTK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "p9igqE0fWTFCRbGcMGz165RCLvFACsqP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "e24jrn0r6byCFB6FtMrWoouKO3zeV9Xh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5r;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static A03(Landroid/app/Activity;Landroid/view/MotionEvent;)V
    .locals 4
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 13968
    :try_start_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5s;->A0P(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13969
    return-void

    .line 13970
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/5r;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5w;

    .line 13971
    .local p0, "baseBDController":Lcom/facebook/ads/redexgen/X/5w;
    if-eqz v0, :cond_1

    .line 13972
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5w;->A05(Landroid/view/MotionEvent;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13973
    :catchall_0
    move-exception v1

    .line 13974
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8C;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    .line 13975
    .local p1, "sdkContext":Lcom/facebook/ads/redexgen/X/Wl;
    if-eqz v0, :cond_1

    .line 13976
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object p1

    sget p0, Lcom/facebook/ads/redexgen/X/8e;->A11:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 13977
    const/16 v2, 0x14

    const/4 v1, 0x7

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5r;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p0, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 13978
    .end local p0    # "t":Ljava/lang/Throwable;
    .end local p1    # "sdkContext":Lcom/facebook/ads/redexgen/X/Wl;
    :cond_1
    :goto_0
    return-void
.end method

.method public static A04(Landroid/content/Context;)V
    .locals 0

    .line 13979
    instance-of p0, p0, Landroid/app/Application;

    if-nez p0, :cond_0

    .line 13980
    return-void

    .line 13981
    :cond_0
    new-instance p0, Lcom/facebook/ads/redexgen/X/a0;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/a0;-><init>()V

    invoke-static {p0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A06(Lcom/facebook/ads/redexgen/X/Kt;)V

    .line 13982
    return-void
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/Wl;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13983
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lo;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/a3;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/a3;-><init>(Lcom/facebook/ads/redexgen/X/Wl;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13984
    return-void
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/Wl;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 13985
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5s;->A0P(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13986
    return-void

    .line 13987
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/5r;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 13988
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/72;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6f;

    move-result-object v0

    .line 13989
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/72;->A0F(Lcom/facebook/ads/redexgen/X/6f;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13990
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/5r;->A05(Lcom/facebook/ads/redexgen/X/Wl;Ljava/lang/String;)V

    .line 13991
    return-void

    .line 13992
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/5r;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/5w;

    .line 13993
    .local p0, "baseBDController":Lcom/facebook/ads/redexgen/X/5w;
    if-eqz v2, :cond_2

    .line 13994
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lo;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/a2;

    invoke-direct {v0, v2, p1, p0}, Lcom/facebook/ads/redexgen/X/a2;-><init>(Lcom/facebook/ads/redexgen/X/5w;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Wl;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13995
    :cond_2
    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Wl;Ljava/lang/String;)V
    .locals 0

    .line 13996
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/5r;->A08(Lcom/facebook/ads/redexgen/X/Wl;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized A08(Lcom/facebook/ads/redexgen/X/Wl;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    const-class v5, Lcom/facebook/ads/redexgen/X/5r;

    monitor-enter v5

    .line 13997
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/5r;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13998
    monitor-exit v5

    return-void

    .line 13999
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5s;->A0P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14000
    new-instance v2, Lcom/facebook/ads/redexgen/X/Zy;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/Zy;-><init>(Lcom/facebook/ads/redexgen/X/Wl;)V

    .line 14001
    .local p1, "bdMobileSignalLoggingImpl":Lcom/facebook/ads/redexgen/X/Zy;
    new-instance v3, Lcom/facebook/ads/redexgen/X/Zz;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/Zz;-><init>(Lcom/facebook/ads/redexgen/X/Wl;)V

    .line 14002
    .local v5, "bdErrorLogCallbackImpl":Lcom/facebook/ads/redexgen/X/Zz;
    new-instance v1, Lcom/facebook/ads/redexgen/X/5u;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/5u;-><init>()V

    const/4 v0, 0x1

    .line 14003
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5u;->A0I(Z)Lcom/facebook/ads/redexgen/X/5u;

    move-result-object v1

    .line 14004
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5s;->A05(Landroid/content/Context;)I

    move-result v0

    .line 14005
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5u;->A04(I)Lcom/facebook/ads/redexgen/X/5u;

    move-result-object v1

    .line 14006
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5s;->A03(Landroid/content/Context;)I

    move-result v0

    .line 14007
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5u;->A02(I)Lcom/facebook/ads/redexgen/X/5u;

    move-result-object v1

    .line 14008
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5s;->A04(Landroid/content/Context;)I

    move-result v0

    .line 14009
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5u;->A03(I)Lcom/facebook/ads/redexgen/X/5u;

    move-result-object v1

    .line 14010
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5s;->A07(Landroid/content/Context;)I

    move-result v0

    .line 14011
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5u;->A06(I)Lcom/facebook/ads/redexgen/X/5u;

    move-result-object v1

    .line 14012
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5s;->A0M()Ljava/util/HashMap;

    move-result-object v0

    .line 14013
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5u;->A0G(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/5u;

    move-result-object v0

    .line 14014
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/5u;->A0A(Lcom/facebook/ads/redexgen/X/65;)Lcom/facebook/ads/redexgen/X/5u;

    move-result-object v1

    .line 14015
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Zz;->A01()Lcom/facebook/ads/redexgen/X/Zx;

    move-result-object v0

    .line 14016
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5u;->A09(Lcom/facebook/ads/redexgen/X/64;)Lcom/facebook/ads/redexgen/X/5u;

    move-result-object v2

    .line 14017
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5s;->A01(Landroid/content/Context;)D

    move-result-wide v0

    .line 14018
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/5u;->A00(D)Lcom/facebook/ads/redexgen/X/5u;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6i;->A0G:Lcom/facebook/ads/redexgen/X/6i;

    .line 14019
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5u;->A0C(Lcom/facebook/ads/redexgen/X/6i;)Lcom/facebook/ads/redexgen/X/5u;

    move-result-object v1

    .line 14020
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5s;->A0D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5u;->A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/5u;

    move-result-object v1

    .line 14021
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5s;->A0N(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 14022
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5u;->A0H(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/5u;

    move-result-object v1

    .line 14023
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5s;->A06(Landroid/content/Context;)I

    move-result v0

    .line 14024
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5u;->A05(I)Lcom/facebook/ads/redexgen/X/5u;

    move-result-object v1

    const-class v0, Landroid/os/Build;

    .line 14025
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5u;->A0D(Ljava/lang/Class;)Lcom/facebook/ads/redexgen/X/5u;

    move-result-object v1

    .line 14026
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5s;->A02(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5u;->A01(F)Lcom/facebook/ads/redexgen/X/5u;

    move-result-object v2

    .line 14027
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5s;->A09(Landroid/content/Context;)J

    move-result-wide v0

    .line 14028
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/5u;->A08(J)Lcom/facebook/ads/redexgen/X/5u;

    move-result-object v2

    .line 14029
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5s;->A08(Landroid/content/Context;)J

    move-result-wide v0

    .line 14030
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/5u;->A07(J)Lcom/facebook/ads/redexgen/X/5u;

    move-result-object v0

    .line 14031
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/5u;->A0B(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/5u;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5r;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 14032
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/5u;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/5u;

    move-result-object v0

    .line 14033
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5u;->A0J()Lcom/facebook/ads/redexgen/X/5v;

    move-result-object v2

    .line 14034
    .local v0, "baseBotDetectionConfig":Lcom/facebook/ads/redexgen/X/5v;
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5s;->A0Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14035
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5r;->A04(Landroid/content/Context;)V

    .line 14036
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5s;->A0A(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/6f;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/5w;

    invoke-direct {v1, p0, v2, v0}, Lcom/facebook/ads/redexgen/X/5w;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;Lcom/facebook/ads/redexgen/X/6f;)V

    .line 14037
    .local v0, "baseBDController":Lcom/facebook/ads/redexgen/X/5w;
    if-eqz p1, :cond_2

    .line 14038
    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/5w;->A06(Ljava/lang/String;)Z

    .line 14039
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/5r;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14040
    :catchall_0
    move-exception v4

    .line 14041
    .local p1, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v3

    const/16 v2, 0x14

    const/4 v1, 0x7

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5r;->A00(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A11:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 14042
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14043
    .end local p1    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    monitor-exit v5

    return-void

    .line 14044
    .end local v2
    .end local v3
    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0
.end method
