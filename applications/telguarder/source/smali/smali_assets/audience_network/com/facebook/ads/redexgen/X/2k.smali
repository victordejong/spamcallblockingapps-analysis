.class public abstract Lcom/facebook/ads/redexgen/X/2k;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B


# instance fields
.field public A00:Landroid/database/DataSetObserver;

.field public final A01:Landroid/database/DataSetObservable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2k;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5961
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2k;->A01:Landroid/database/DataSetObservable;

    return-void
.end method

.method private final A00(Landroid/view/View;I)Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5962
    const/16 v2, 0x2e

    const/16 v1, 0x32

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2k;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2k;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x12

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

    const/16 v0, 0x60

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2k;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x2dt
        -0x1at
        -0xet
        -0xat
        -0x16t
        -0xdt
        -0x1at
        -0x1bt
        -0x5ft
        -0x12t
        -0x1at
        -0xbt
        -0x17t
        -0x10t
        -0x1bt
        -0x5ft
        -0x1bt
        -0x1at
        -0xct
        -0xbt
        -0xdt
        -0x10t
        -0x6t
        -0x36t
        -0xbt
        -0x1at
        -0x12t
        -0x5ft
        -0x8t
        -0x1et
        -0xct
        -0x5ft
        -0x11t
        -0x10t
        -0xbt
        -0x5ft
        -0x10t
        -0x9t
        -0x1at
        -0xdt
        -0xdt
        -0x16t
        -0x1bt
        -0x1bt
        -0x1at
        -0x11t
        -0x57t
        -0x44t
        -0x38t
        -0x34t
        -0x40t
        -0x37t
        -0x44t
        -0x45t
        0x77t
        -0x3ct
        -0x44t
        -0x35t
        -0x41t
        -0x3at
        -0x45t
        0x77t
        -0x40t
        -0x3bt
        -0x36t
        -0x35t
        -0x48t
        -0x3bt
        -0x35t
        -0x40t
        -0x48t
        -0x35t
        -0x44t
        -0x60t
        -0x35t
        -0x44t
        -0x3ct
        0x77t
        -0x32t
        -0x48t
        -0x36t
        0x77t
        -0x3bt
        -0x3at
        -0x35t
        0x77t
        -0x3at
        -0x33t
        -0x44t
        -0x37t
        -0x37t
        -0x40t
        -0x45t
        -0x45t
        -0x44t
        -0x3bt
    .end array-data
.end method

.method private final A03(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5963
    const/4 v2, 0x0

    const/16 v1, 0x2e

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2k;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A04(I)F
    .locals 1

    .line 5964
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public abstract A05()I
.end method

.method public A06(Ljava/lang/Object;)I
    .locals 1

    .line 5965
    const/4 v0, -0x1

    return v0
.end method

.method public final A07()Landroid/os/Parcelable;
    .locals 1

    .line 5966
    const/4 v0, 0x0

    return-object v0
.end method

.method public A08(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 5967
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2k;->A00(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final A09()V
    .locals 1

    .line 5968
    monitor-enter p0

    .line 5969
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2k;->A00:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 5970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2k;->A00:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 5971
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2k;->A01:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 5973
    return-void

    .line 5974
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final A0A(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 5975
    monitor-enter p0

    .line 5976
    :try_start_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2k;->A00:Landroid/database/DataSetObserver;

    .line 5977
    monitor-exit p0

    .line 5978
    return-void

    .line 5979
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public A0B(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 5980
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2k;->A03(Landroid/view/View;ILjava/lang/Object;)V

    .line 5981
    return-void
.end method

.method public abstract A0C(Landroid/view/View;Ljava/lang/Object;)Z
.end method
