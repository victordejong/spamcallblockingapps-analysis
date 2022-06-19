.class public final Lcom/facebook/ads/redexgen/X/3v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/T8;,
        Lcom/facebook/ads/redexgen/X/3u;
    }
.end annotation


# static fields
.field public static A04:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/facebook/ads/redexgen/X/3u;",
            ">;"
        }
    .end annotation
.end field

.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final A07:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/facebook/ads/redexgen/X/3v;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Eq;",
            ">;"
        }
    .end annotation
.end field

.field public A03:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/3u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 9928
    invoke-static {}, Lcom/facebook/ads/redexgen/X/3v;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3v;->A03()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3v;->A07:Ljava/lang/ThreadLocal;

    .line 9929
    new-instance v0, Lcom/facebook/ads/redexgen/X/3t;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3t;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3v;->A04:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9931
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A02:Ljava/util/ArrayList;

    .line 9932
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A03:Ljava/util/ArrayList;

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Eq;IJ)Lcom/facebook/ads/redexgen/X/4c;
    .locals 4

    .line 9933
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/3v;->A09(Lcom/facebook/ads/redexgen/X/Eq;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9934
    const/4 v0, 0x0

    return-object v0

    .line 9935
    :cond_0
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/Eq;->A0r:Lcom/facebook/ads/redexgen/X/4S;

    .line 9936
    .local p0, "recycler":Lcom/facebook/ads/redexgen/X/4S;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eq;->A1M()V

    .line 9937
    invoke-virtual {v3, p2, v2, p3, p4}, Lcom/facebook/ads/redexgen/X/4S;->A0J(IZJ)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v1

    .line 9938
    .local p2, "holder":Lcom/facebook/ads/redexgen/X/4c;
    if-eqz v1, :cond_2

    .line 9939
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9940
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4S;->A0Y(Landroid/view/View;)V

    goto :goto_0

    .line 9941
    :cond_1
    invoke-virtual {v3, v1, v2}, Lcom/facebook/ads/redexgen/X/4S;->A0e(Lcom/facebook/ads/redexgen/X/4c;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9942
    :cond_2
    :goto_0
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/Eq;->A1r(Z)V

    .line 9943
    return-object v1

    .line 9944
    .end local p2    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/Eq;->A1r(Z)V

    .line 9945
    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/3v;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x8

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 10

    .line 9946
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 9947
    .local p0, "viewCount":I
    const/4 v4, 0x0

    .line 9948
    .local v0, "totalTaskCount":I
    const/4 v3, 0x0

    .local v9, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ge v3, v9, :cond_1

    .line 9949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Eq;

    .line 9950
    .local v3, "view":Lcom/facebook/ads/redexgen/X/Eq;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Eq;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 9951
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Eq;->A02:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/T8;->A05(Lcom/facebook/ads/redexgen/X/Eq;Z)V

    .line 9952
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Eq;->A02:Lcom/facebook/ads/redexgen/X/T8;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/T8;->A00:I

    add-int/2addr v4, v0

    .line 9953
    .end local v3    # "view":Lcom/facebook/ads/redexgen/X/Eq;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9954
    .end local v9    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 9955
    const/4 v8, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3v;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 9956
    .local v9, "totalTaskIndex":I
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/3v;->A06:[Ljava/lang/String;

    const-string v1, "OH"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "7S"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v7, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v7, v9, :cond_7

    .line 9957
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/Eq;

    .line 9958
    .local v2, "view":Lcom/facebook/ads/redexgen/X/Eq;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Eq;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    .line 9959
    .end local v2    # "view":Lcom/facebook/ads/redexgen/X/Eq;
    .end local v0    # "totalTaskCount":I
    .end local v1
    .end local v1
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 9960
    :cond_4
    iget-object v5, v6, Lcom/facebook/ads/redexgen/X/Eq;->A02:Lcom/facebook/ads/redexgen/X/T8;

    .line 9961
    .local v0, "prefetchRegistry":Lcom/facebook/ads/redexgen/X/T8;
    iget v0, v5, Lcom/facebook/ads/redexgen/X/T8;->A01:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v0, v5, Lcom/facebook/ads/redexgen/X/T8;->A02:I

    .line 9962
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v4, v0

    .line 9963
    .local v1, "viewVelocity":I
    const/4 v3, 0x0

    .local v1, "j":I
    :goto_2
    iget v0, v5, Lcom/facebook/ads/redexgen/X/T8;->A00:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v3, v0, :cond_3

    .line 9964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v8, v0, :cond_6

    .line 9965
    new-instance v0, Lcom/facebook/ads/redexgen/X/3u;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3u;-><init>()V

    .line 9966
    .local v0, "task":Lcom/facebook/ads/redexgen/X/3u;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3v;->A03:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9967
    .restart local v0    # "task":Lcom/facebook/ads/redexgen/X/3u;
    :goto_3
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/T8;->A03:[I

    add-int/lit8 v1, v3, 0x1

    aget v2, v2, v1

    .line 9968
    .local v0, "distanceToItem":I
    if-gt v2, v4, :cond_5

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/3u;->A04:Z

    .line 9969
    iput v4, v0, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .line 9970
    iput v2, v0, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    .line 9971
    iput-object v6, v0, Lcom/facebook/ads/redexgen/X/3u;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    .line 9972
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/T8;->A03:[I

    aget v1, v1, v3

    iput v1, v0, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    .line 9973
    .end local v0    # "distanceToItem":I
    .end local v0
    add-int/lit8 v8, v8, 0x1

    .line 9974
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 9975
    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    .line 9976
    .end local v0
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3u;

    goto :goto_3

    .line 9977
    .end local v3    # "i":I
    :cond_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3v;->A03:Ljava/util/ArrayList;

    sget-object v0, Lcom/facebook/ads/redexgen/X/3v;->A04:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 9978
    return-void
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/3v;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x61t
        0x65t
        0x2ft
        0x5dt
        0x74t
        -0x7et
        -0x7dt
        0x74t
        0x73t
        0x2ft
        0x5ft
        -0x7ft
        0x74t
        0x75t
        0x74t
        -0x7dt
        0x72t
        0x77t
        0x5ct
        0x60t
        0x2at
        0x5at
        0x7ct
        0x6ft
        0x70t
        0x6ft
        0x7et
        0x6dt
        0x72t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "C"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "g"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "thIgEQWd9nx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nKFIv9xSQBz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "WKzZJ6F0j2u08DpGCnjDR9E"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2Nt4JwZoKXCf4OpJNcF1oxTto7W5gJbD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "RW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3v;->A06:[Ljava/lang/String;

    return-void
.end method

.method private A05(J)V
    .locals 3

    .line 9979
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 9980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/3u;

    .line 9981
    .local p1, "task":Lcom/facebook/ads/redexgen/X/3u;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/3u;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-nez v0, :cond_1

    .line 9982
    .end local p0    # "i":I
    :cond_0
    return-void

    .line 9983
    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lcom/facebook/ads/redexgen/X/3v;->A07(Lcom/facebook/ads/redexgen/X/3u;J)V

    .line 9984
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/3u;->A00()V

    .line 9985
    .end local p1    # "task":Lcom/facebook/ads/redexgen/X/3u;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private final A06(J)V
    .locals 0

    .line 9986
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3v;->A02()V

    .line 9987
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/3v;->A05(J)V

    .line 9988
    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/3u;J)V
    .locals 4

    .line 9989
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A04:Z

    if-eqz v0, :cond_1

    const-wide v1, 0x7fffffffffffffffL

    .line 9990
    .local p0, "taskDeadlineNs":J
    :goto_0
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/3u;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/3v;->A00(Lcom/facebook/ads/redexgen/X/Eq;IJ)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v1

    .line 9991
    .local p2, "holder":Lcom/facebook/ads/redexgen/X/4c;
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/4c;->A09:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 9992
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9993
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9994
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/4c;->A09:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Eq;

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/3v;->A08(Lcom/facebook/ads/redexgen/X/Eq;J)V

    .line 9995
    :cond_0
    return-void

    .line 9996
    :cond_1
    move-wide v1, p2

    goto :goto_0
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/Eq;J)V
    .locals 6
    .param p1    # Lcom/facebook/ads/redexgen/X/Eq;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9997
    if-nez p1, :cond_0

    .line 9998
    return-void

    .line 9999
    :cond_0
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Eq;->A0C:Z

    if-eqz v0, :cond_1

    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/Eq;->A01:Lcom/facebook/ads/redexgen/X/3i;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3v;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_4

    .line 10000
    sget-object v2, Lcom/facebook/ads/redexgen/X/3v;->A06:[Ljava/lang/String;

    const-string v1, "t2x0aSlbBonOFe0N5m1ttILNz4IaYpUW"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/3i;->A07()I

    move-result v0

    if-eqz v0, :cond_1

    .line 10001
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eq;->A1P()V

    .line 10002
    :cond_1
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/Eq;->A02:Lcom/facebook/ads/redexgen/X/T8;

    .line 10003
    .local p0, "innerPrefetchRegistry":Lcom/facebook/ads/redexgen/X/T8;
    const/4 v0, 0x1

    invoke-virtual {v4, p1, v0}, Lcom/facebook/ads/redexgen/X/T8;->A05(Lcom/facebook/ads/redexgen/X/Eq;Z)V

    .line 10004
    iget v0, v4, Lcom/facebook/ads/redexgen/X/T8;->A00:I

    if-eqz v0, :cond_3

    .line 10005
    :try_start_0
    const/4 v2, 0x0

    const/16 v1, 0x12

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2M;->A01(Ljava/lang/String;)V

    .line 10006
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A05(Lcom/facebook/ads/redexgen/X/48;)V

    .line 10007
    const/4 v3, 0x0

    .local p1, "i":I
    :goto_0
    iget v0, v4, Lcom/facebook/ads/redexgen/X/T8;->A00:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/lit8 v5, v0, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/3v;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/3v;->A06:[Ljava/lang/String;

    const-string v1, "nG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "TD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge v3, v5, :cond_2

    .line 10008
    :try_start_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/T8;->A03:[I

    aget v0, v0, v3

    .line 10009
    .local p2, "innerPosition":I
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/3v;->A00(Lcom/facebook/ads/redexgen/X/Eq;IJ)Lcom/facebook/ads/redexgen/X/4c;

    .line 10010
    .end local p2    # "innerPosition":I
    add-int/lit8 v3, v3, 0x2

    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10011
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2M;->A00()V

    .line 10012
    throw v0

    .line 10013
    .end local p1    # "i":I
    :cond_2
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2M;->A00()V

    .line 10014
    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/Eq;I)Z
    .locals 4

    .line 10015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3i;->A07()I

    move-result v3

    .line 10016
    .local p0, "childCount":I
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 10017
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3i;->A0B(I)Landroid/view/View;

    move-result-object v0

    .line 10018
    .local v0, "attachedView":Landroid/view/View;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v1

    .line 10019
    .local v3, "holder":Lcom/facebook/ads/redexgen/X/4c;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    if-ne v0, p1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10020
    const/4 v0, 0x1

    return v0

    .line 10021
    .end local v0    # "attachedView":Landroid/view/View;
    .end local v3    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10022
    .end local p1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A0A(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 1

    .line 10023
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10024
    return-void
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 1

    .line 10025
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10026
    .local p0, "removeSuccess":Z
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/Eq;II)V
    .locals 5

    .line 10027
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eq;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10028
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/3v;->A01:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 10029
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eq;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A01:J

    .line 10030
    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/Eq;->post(Ljava/lang/Runnable;)Z

    .line 10031
    :cond_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Eq;->A02:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/T8;->A04(II)V

    .line 10032
    return-void
.end method

.method public final run()V
    .locals 10

    .line 10033
    const-wide/16 v4, 0x0

    :try_start_0
    const/16 v2, 0x12

    const/16 v1, 0xb

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2M;->A01(Ljava/lang/String;)V

    .line 10034
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10035
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/3v;->A01:J

    .line 10036
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2M;->A00()V

    .line 10037
    return-void

    .line 10038
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 10039
    .local v2, "size":I
    const-wide/16 v1, 0x0

    .line 10040
    .local v2, "latestFrameVsyncMs":J
    const/4 v8, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v8, v9, :cond_2

    .line 10041
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Eq;

    .line 10042
    .local v0, "view":Lcom/facebook/ads/redexgen/X/Eq;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Eq;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 10043
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Eq;->getDrawingTime()J

    move-result-wide v6

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 10044
    .end local v0    # "view":Lcom/facebook/ads/redexgen/X/Eq;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 10045
    .end local v0
    :cond_2
    cmp-long v0, v1, v4

    if-nez v0, :cond_4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10046
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/3v;->A01:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/3v;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_3

    .line 10047
    sget-object v2, Lcom/facebook/ads/redexgen/X/3v;->A06:[Ljava/lang/String;

    const-string v1, "H4nD1dOrFb1"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2M;->A00()V

    .line 10048
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10049
    :cond_4
    :try_start_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A00:J

    add-long/2addr v2, v0

    .line 10050
    .local v0, "nextFrameNs":J
    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/3v;->A06(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10051
    .end local v2    # "latestFrameVsyncMs":J
    .end local v2
    .end local v0    # "nextFrameNs":J
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/3v;->A01:J

    .line 10052
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2M;->A00()V

    .line 10053
    return-void

    .line 10054
    :catchall_0
    move-exception v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/3v;->A01:J

    .line 10055
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2M;->A00()V

    .line 10056
    throw v0
.end method
