.class public final Lcom/facebook/ads/redexgen/X/3v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/au;,
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
            "Lcom/facebook/ads/redexgen/X/El;",
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

    .line 10035
    invoke-static {}, Lcom/facebook/ads/redexgen/X/3v;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3v;->A03()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3v;->A07:Ljava/lang/ThreadLocal;

    .line 10036
    new-instance v0, Lcom/facebook/ads/redexgen/X/3t;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3t;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3v;->A04:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10038
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A02:Ljava/util/ArrayList;

    .line 10039
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A03:Ljava/util/ArrayList;

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/El;IJ)Lcom/facebook/ads/redexgen/X/4c;
    .locals 4

    .line 10040
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/3v;->A09(Lcom/facebook/ads/redexgen/X/El;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10041
    const/4 v0, 0x0

    return-object v0

    .line 10042
    :cond_0
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/El;->A0r:Lcom/facebook/ads/redexgen/X/4S;

    .line 10043
    .local p0, "recycler":Lcom/facebook/ads/redexgen/X/4S;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/El;->A1M()V

    .line 10044
    invoke-virtual {v3, p2, v2, p3, p4}, Lcom/facebook/ads/redexgen/X/4S;->A0J(IZJ)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v1

    .line 10045
    .local p2, "holder":Lcom/facebook/ads/redexgen/X/4c;
    if-eqz v1, :cond_2

    .line 10046
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10047
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4S;->A0Y(Landroid/view/View;)V

    goto :goto_0

    .line 10048
    :cond_1
    invoke-virtual {v3, v1, v2}, Lcom/facebook/ads/redexgen/X/4S;->A0e(Lcom/facebook/ads/redexgen/X/4c;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10049
    :cond_2
    :goto_0
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/El;->A1r(Z)V

    .line 10050
    return-object v1

    .line 10051
    .end local p2    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/El;->A1r(Z)V

    .line 10052
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

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x68

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

    .line 10053
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 10054
    .local p0, "viewCount":I
    const/4 v4, 0x0

    .line 10055
    .local v0, "totalTaskCount":I
    const/4 v3, 0x0

    .local v9, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ge v3, v9, :cond_1

    .line 10056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/El;

    .line 10057
    .local v3, "view":Lcom/facebook/ads/redexgen/X/El;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/El;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 10058
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/El;->A02:Lcom/facebook/ads/redexgen/X/au;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/au;->A04(Lcom/facebook/ads/redexgen/X/El;Z)V

    .line 10059
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/El;->A02:Lcom/facebook/ads/redexgen/X/au;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/au;->A00:I

    add-int/2addr v4, v0

    .line 10060
    .end local v3    # "view":Lcom/facebook/ads/redexgen/X/El;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10061
    .end local v9    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 10062
    const/4 v8, 0x0

    .line 10063
    .local v9, "totalTaskIndex":I
    const/4 v7, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v7, v9, :cond_6

    .line 10064
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/El;

    .line 10065
    .local v2, "view":Lcom/facebook/ads/redexgen/X/El;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/El;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 10066
    .end local v2    # "view":Lcom/facebook/ads/redexgen/X/El;
    .end local v0    # "totalTaskCount":I
    .end local v1
    .end local v1
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 10067
    :cond_3
    iget-object v5, v6, Lcom/facebook/ads/redexgen/X/El;->A02:Lcom/facebook/ads/redexgen/X/au;

    .line 10068
    .local v0, "prefetchRegistry":Lcom/facebook/ads/redexgen/X/au;
    iget v0, v5, Lcom/facebook/ads/redexgen/X/au;->A01:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v0, v5, Lcom/facebook/ads/redexgen/X/au;->A02:I

    .line 10069
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v4, v0

    .line 10070
    .local v1, "viewVelocity":I
    const/4 v3, 0x0

    .local v1, "j":I
    :goto_2
    iget v0, v5, Lcom/facebook/ads/redexgen/X/au;->A00:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v3, v0, :cond_2

    .line 10071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v8, v0, :cond_5

    .line 10072
    new-instance v0, Lcom/facebook/ads/redexgen/X/3u;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3u;-><init>()V

    .line 10073
    .local v0, "task":Lcom/facebook/ads/redexgen/X/3u;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3v;->A03:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10074
    .restart local v0    # "task":Lcom/facebook/ads/redexgen/X/3u;
    :goto_3
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/au;->A03:[I

    add-int/lit8 v1, v3, 0x1

    aget v2, v2, v1

    .line 10075
    .local v0, "distanceToItem":I
    if-gt v2, v4, :cond_4

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/3u;->A04:Z

    .line 10076
    iput v4, v0, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .line 10077
    iput v2, v0, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    .line 10078
    iput-object v6, v0, Lcom/facebook/ads/redexgen/X/3u;->A03:Lcom/facebook/ads/redexgen/X/El;

    .line 10079
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/au;->A03:[I

    aget v1, v1, v3

    iput v1, v0, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    .line 10080
    .end local v0    # "distanceToItem":I
    .end local v0
    add-int/lit8 v8, v8, 0x1

    .line 10081
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 10082
    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    .line 10083
    .end local v0
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3u;

    goto :goto_3

    .line 10084
    .end local v3    # "i":I
    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3v;->A03:Ljava/util/ArrayList;

    sget-object v0, Lcom/facebook/ads/redexgen/X/3v;->A04:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 10085
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
        0x69t
        0x6dt
        0x1bt
        0x75t
        0x5et
        0x48t
        0x4ft
        0x5et
        0x5ft
        0x1bt
        0x6bt
        0x49t
        0x5et
        0x5dt
        0x5et
        0x4ft
        0x58t
        0x53t
        0x64t
        0x60t
        0x16t
        0x66t
        0x44t
        0x53t
        0x50t
        0x53t
        0x42t
        0x55t
        0x5et
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZWObiMwNkhaZGfEgqHenCxQvRQCezgXM"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "iKaB5ntiNbaiz6tgW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JplxjEE1IYbCInXXNCkbxZV0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UEoPOy6vCmPnpiXEMXmcZKvRtDoHf0nN"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JvUlYJe7lgtJoJN1gtwvhyIs"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "RcG3r4ysor4dcgCWVGn8CFYsdgQ7jZkt"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "cxmAjzJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "EyohaYHYoMvb6y9gFGiucolIeU60NsdM"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3v;->A06:[Ljava/lang/String;

    return-void
.end method

.method private A05(J)V
    .locals 5

    .line 10086
    const/4 v4, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 10087
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/3v;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x67

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/3v;->A06:[Ljava/lang/String;

    const-string v1, "gpZ2KV2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/3u;

    .line 10088
    .local p1, "task":Lcom/facebook/ads/redexgen/X/3u;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/3u;->A03:Lcom/facebook/ads/redexgen/X/El;

    if-nez v0, :cond_2

    .line 10089
    .end local p0    # "i":I
    :cond_1
    return-void

    .line 10090
    :cond_2
    invoke-direct {p0, v3, p1, p2}, Lcom/facebook/ads/redexgen/X/3v;->A07(Lcom/facebook/ads/redexgen/X/3u;J)V

    .line 10091
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/3u;->A00()V

    .line 10092
    .end local p1    # "task":Lcom/facebook/ads/redexgen/X/3u;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private final A06(J)V
    .locals 0

    .line 10093
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3v;->A02()V

    .line 10094
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/3v;->A05(J)V

    .line 10095
    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/3u;J)V
    .locals 4

    .line 10096
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A04:Z

    if-eqz v0, :cond_0

    const-wide v1, 0x7fffffffffffffffL

    .line 10097
    .local p0, "taskDeadlineNs":J
    :goto_0
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/3u;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/3v;->A00(Lcom/facebook/ads/redexgen/X/El;IJ)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v1

    .line 10098
    .local p2, "holder":Lcom/facebook/ads/redexgen/X/4c;
    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/4c;->A09:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 10099
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10100
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10101
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/4c;->A09:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/El;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3v;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4f

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10102
    :cond_0
    move-wide v1, p2

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/3v;->A06:[Ljava/lang/String;

    const-string v1, "y01bdO2VJYUoPT1JEr7HCeGbjhjinZRt"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "ogbTL45N3M3fzw26YptkCantwmvhDLLM"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-direct {p0, v3, p2, p3}, Lcom/facebook/ads/redexgen/X/3v;->A08(Lcom/facebook/ads/redexgen/X/El;J)V

    .line 10103
    :cond_2
    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/El;J)V
    .locals 4
    .param p1    # Lcom/facebook/ads/redexgen/X/El;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10104
    if-nez p1, :cond_0

    .line 10105
    return-void

    .line 10106
    :cond_0
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/El;->A0C:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/El;->A01:Lcom/facebook/ads/redexgen/X/3i;

    .line 10107
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3i;->A07()I

    move-result v0

    if-eqz v0, :cond_1

    .line 10108
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/El;->A1P()V

    .line 10109
    :cond_1
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/El;->A02:Lcom/facebook/ads/redexgen/X/au;

    .line 10110
    .local p0, "innerPrefetchRegistry":Lcom/facebook/ads/redexgen/X/au;
    const/4 v0, 0x1

    invoke-virtual {v3, p1, v0}, Lcom/facebook/ads/redexgen/X/au;->A04(Lcom/facebook/ads/redexgen/X/El;Z)V

    .line 10111
    iget v0, v3, Lcom/facebook/ads/redexgen/X/au;->A00:I

    if-eqz v0, :cond_3

    .line 10112
    :try_start_0
    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2M;->A01(Ljava/lang/String;)V

    .line 10113
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A05(Lcom/facebook/ads/redexgen/X/48;)V

    .line 10114
    const/4 v1, 0x0

    .local p1, "i":I
    :goto_0
    iget v0, v3, Lcom/facebook/ads/redexgen/X/au;->A00:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_2

    .line 10115
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/au;->A03:[I

    aget v0, v0, v1

    .line 10116
    .local p2, "innerPosition":I
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/3v;->A00(Lcom/facebook/ads/redexgen/X/El;IJ)Lcom/facebook/ads/redexgen/X/4c;

    .line 10117
    .end local p2    # "innerPosition":I
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10118
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2M;->A00()V

    .line 10119
    throw v0

    .line 10120
    .end local p1    # "i":I
    :cond_2
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2M;->A00()V

    .line 10121
    :cond_3
    return-void
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/El;I)Z
    .locals 4

    .line 10122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/El;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3i;->A07()I

    move-result v3

    .line 10123
    .local p0, "childCount":I
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 10124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/El;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3i;->A0B(I)Landroid/view/View;

    move-result-object v0

    .line 10125
    .local v0, "attachedView":Landroid/view/View;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/El;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v1

    .line 10126
    .local v3, "holder":Lcom/facebook/ads/redexgen/X/4c;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    if-ne v0, p1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10127
    const/4 v0, 0x1

    return v0

    .line 10128
    .end local v0    # "attachedView":Landroid/view/View;
    .end local v3    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10129
    .end local p1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A0A(Lcom/facebook/ads/redexgen/X/El;)V
    .locals 1

    .line 10130
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10131
    return-void
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/El;)V
    .locals 1

    .line 10132
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10133
    .local p0, "removeSuccess":Z
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/El;II)V
    .locals 7

    .line 10134
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/El;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10135
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/3v;->A01:J

    const-wide/16 v5, 0x0

    sget-object v4, Lcom/facebook/ads/redexgen/X/3v;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v3, v4, v0

    const/4 v0, 0x5

    aget-object v4, v4, v0

    const/16 v0, 0x14

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/3v;->A06:[Ljava/lang/String;

    const-string v3, "T8Y6UBY"

    const/4 v0, 0x6

    aput-object v3, v4, v0

    cmp-long v0, v1, v5

    if-nez v0, :cond_1

    .line 10136
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/El;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A01:J

    .line 10137
    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/El;->post(Ljava/lang/Runnable;)Z

    .line 10138
    :cond_1
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/El;->A02:Lcom/facebook/ads/redexgen/X/au;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/au;->A03(II)V

    .line 10139
    return-void
.end method

.method public final run()V
    .locals 10

    .line 10140
    const-wide/16 v4, 0x0

    :try_start_0
    const/16 v2, 0x12

    const/16 v1, 0xb

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2M;->A01(Ljava/lang/String;)V

    .line 10141
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10142
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/3v;->A01:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/3v;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10143
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/3v;->A06:[Ljava/lang/String;

    const-string v1, "jOxF3Mzmcdx8L8GgZmI4I6pGAsyGGZV3"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2M;->A00()V

    .line 10144
    return-void

    .line 10145
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 10146
    .local v2, "size":I
    const-wide/16 v1, 0x0

    .line 10147
    .local v2, "latestFrameVsyncMs":J
    const/4 v8, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v8, v9, :cond_3

    .line 10148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/El;

    .line 10149
    .local v0, "view":Lcom/facebook/ads/redexgen/X/El;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/El;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 10150
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/El;->getDrawingTime()J

    move-result-wide v6

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 10151
    .end local v0    # "view":Lcom/facebook/ads/redexgen/X/El;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 10152
    .end local v0
    :cond_3
    cmp-long v0, v1, v4

    if-nez v0, :cond_4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10153
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/3v;->A01:J

    .line 10154
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2M;->A00()V

    .line 10155
    return-void

    .line 10156
    :cond_4
    :try_start_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/3v;->A00:J

    add-long/2addr v2, v0

    .line 10157
    .local v0, "nextFrameNs":J
    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/3v;->A06(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10158
    .end local v2    # "latestFrameVsyncMs":J
    .end local v2
    .end local v0    # "nextFrameNs":J
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/3v;->A01:J

    .line 10159
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2M;->A00()V

    .line 10160
    return-void

    .line 10161
    :catchall_0
    move-exception v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/3v;->A01:J

    .line 10162
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2M;->A00()V

    .line 10163
    throw v0
.end method
