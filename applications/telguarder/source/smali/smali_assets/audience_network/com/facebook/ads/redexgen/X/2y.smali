.class public Lcom/facebook/ads/redexgen/X/2y;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewCompatBaseImpl"
.end annotation


# static fields
.field public static A00:Ljava/lang/reflect/Field;

.field public static A01:Z

.field public static A02:Ljava/lang/reflect/Field;

.field public static A03:Ljava/lang/reflect/Field;

.field public static A04:Z

.field public static A05:Z

.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 6753
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2y;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2y;->A02()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/2y;->A01:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00()J
    .locals 2

    .line 6755
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2y;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2y;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x1ct
        -0x48t
        -0x26t
        -0x26t
        -0x24t
        -0x16t
        -0x16t
        -0x20t
        -0x27t
        -0x20t
        -0x1dt
        -0x20t
        -0x15t
        -0x10t
        -0x45t
        -0x24t
        -0x1dt
        -0x24t
        -0x22t
        -0x28t
        -0x15t
        -0x24t
        -0x5et
        -0x7et
        -0x62t
        -0x5dt
        0x7dt
        -0x66t
        -0x62t
        -0x64t
        -0x63t
        -0x57t
        -0x6dt
        0x73t
        -0x71t
        -0x6ct
        0x7dt
        -0x71t
        -0x76t
        -0x66t
        -0x72t
        -0x20t
        -0x2et
        -0x29t
        -0x33t
        -0x28t
        -0x20t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "02HXzqXk73QVshK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Vd3PIQVGbymKr1peOQp46bHqBe5g9xLl"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HcoaSp9EGPDRlMz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LE49K9mUXs4bvL0Dhr0uWsVmH5LUwBm4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LDPLoHz6UrHGmx6GMbvpIivkJ6REIOLV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AJsKzOma0c3h"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "nSSDOEXzoGvtoIqz4QDa0TtkmnPlbH1G"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jHxdDI4CDuwq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2y;->A07:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A04(Landroid/view/View;)I
    .locals 1

    .line 6756
    const/4 v0, 0x0

    return v0
.end method

.method public A05(Landroid/view/View;)I
    .locals 1

    .line 6757
    const/4 v0, 0x0

    return v0
.end method

.method public A06(Landroid/view/View;)I
    .locals 5

    .line 6758
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/2y;->A04:Z

    if-nez v0, :cond_0

    .line 6759
    const/4 v4, 0x1

    :try_start_0
    const-class v3, Landroid/view/View;

    const/16 v2, 0x16

    const/16 v1, 0xa

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2y;->A02:Ljava/lang/reflect/Field;

    .line 6760
    sget-object v0, Lcom/facebook/ads/redexgen/X/2y;->A02:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6761
    :catch_0
    sput-boolean v4, Lcom/facebook/ads/redexgen/X/2y;->A04:Z

    .line 6762
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/2y;->A02:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 6763
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6764
    :catch_1
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public A07(Landroid/view/View;)I
    .locals 5

    .line 6765
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/2y;->A05:Z

    if-nez v0, :cond_0

    .line 6766
    const/4 v4, 0x1

    :try_start_0
    const-class v3, Landroid/view/View;

    const/16 v2, 0x20

    const/16 v1, 0x9

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2y;->A03:Ljava/lang/reflect/Field;

    .line 6767
    sget-object v0, Lcom/facebook/ads/redexgen/X/2y;->A03:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6768
    :catch_0
    sput-boolean v4, Lcom/facebook/ads/redexgen/X/2y;->A05:Z

    .line 6769
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/2y;->A03:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 6770
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6771
    :catch_1
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public A08(Landroid/view/View;)Landroid/view/Display;
    .locals 4

    .line 6772
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/2y;->A0J(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6773
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v2, 0x29

    const/4 v1, 0x6

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/2y;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x48

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/2y;->A07:[Ljava/lang/String;

    const-string v1, "dM00LoaEDvCF"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "OddPVl80Vy9V"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    check-cast v3, Landroid/view/WindowManager;

    .line 6774
    .local p0, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0

    .line 6775
    .end local p0    # "wm":Landroid/view/WindowManager;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public A09(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3G;)Lcom/facebook/ads/redexgen/X/3G;
    .locals 0

    .line 6776
    return-object p2
.end method

.method public A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3G;)Lcom/facebook/ads/redexgen/X/3G;
    .locals 0

    .line 6777
    return-object p2
.end method

.method public A0B(Landroid/view/View;)V
    .locals 0

    .line 6778
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 6779
    return-void
.end method

.method public A0C(Landroid/view/View;)V
    .locals 1

    .line 6780
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/2g;

    if-eqz v0, :cond_0

    .line 6781
    check-cast p1, Lcom/facebook/ads/redexgen/X/2g;

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/2g;->stopNestedScroll()V

    .line 6782
    :cond_0
    return-void
.end method

.method public A0D(Landroid/view/View;I)V
    .locals 0

    .line 6783
    return-void
.end method

.method public final A0E(Landroid/view/View;Lcom/facebook/ads/redexgen/X/2d;)V
    .locals 1
    .param p2    # Lcom/facebook/ads/redexgen/X/2d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6784
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 6785
    return-void

    .line 6786
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/2d;->A00()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    goto :goto_0
.end method

.method public A0F(Landroid/view/View;Lcom/facebook/ads/redexgen/X/2j;)V
    .locals 0

    .line 6787
    return-void
.end method

.method public A0G(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 6788
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2y;->A00()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6789
    return-void
.end method

.method public A0H(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2

    .line 6790
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2y;->A00()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6791
    return-void
.end method

.method public A0I(Landroid/view/View;)Z
    .locals 1

    .line 6792
    const/4 v0, 0x0

    return v0
.end method

.method public A0J(Landroid/view/View;)Z
    .locals 1

    .line 6793
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0K(Landroid/view/View;)Z
    .locals 6

    .line 6794
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/2y;->A01:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 6795
    return v5

    .line 6796
    :cond_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/2y;->A00:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/2y;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x54

    if-eq v1, v0, :cond_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/2y;->A07:[Ljava/lang/String;

    const-string v1, "Q1ruOHxOk6WILPvKf2GjHGHRzmp539Hk"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_3

    .line 6797
    :try_start_0
    const-class v3, Landroid/view/View;

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2y;->A01(III)Ljava/lang/String;

    move-result-object v0

    .line 6798
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2y;->A00:Ljava/lang/reflect/Field;

    .line 6799
    sget-object v0, Lcom/facebook/ads/redexgen/X/2y;->A00:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6800
    .local p0, "t":Ljava/lang/Throwable;
    :catchall_0
    sput-boolean v4, Lcom/facebook/ads/redexgen/X/2y;->A01:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/2y;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x54

    if-eq v1, v0, :cond_2

    goto :goto_0

    .line 6801
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/2y;->A07:[Ljava/lang/String;

    const-string v1, "nDS37f2fXP1nkU7"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "CEc31ZmnNMQB0dp"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v5

    .line 6802
    .end local p0    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    :try_start_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/2y;->A00:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    :cond_4
    return v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6803
    .restart local p0    # "t":Ljava/lang/Throwable;
    :catchall_1
    sput-boolean v4, Lcom/facebook/ads/redexgen/X/2y;->A01:Z

    .line 6804
    return v5
.end method
