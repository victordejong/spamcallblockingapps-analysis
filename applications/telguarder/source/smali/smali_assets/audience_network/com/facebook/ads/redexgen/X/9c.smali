.class public final Lcom/facebook/ads/redexgen/X/9c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/9b;
    }
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/9S;

.field public final A02:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/facebook/ads/redexgen/X/9b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9c;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9c;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9S;Lcom/facebook/ads/redexgen/X/9a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20033
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:Ljava/util/Deque;

    .line 20034
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:Z

    .line 20035
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9c;->A01:Lcom/facebook/ads/redexgen/X/9S;

    .line 20036
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/9c;->A06(Lcom/facebook/ads/redexgen/X/9S;Lcom/facebook/ads/redexgen/X/9a;)V

    .line 20037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20038
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9c;->A00()Lcom/facebook/ads/redexgen/X/9b;

    .line 20039
    :cond_0
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/9b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20040
    const/4 v1, -0x1

    .line 20041
    .local p0, "lastFileNumber":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20042
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9b;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9b;->A00()I

    move-result v1

    .line 20043
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 20044
    .local v1, "newFileNumber":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A01:Lcom/facebook/ads/redexgen/X/9S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9S;->A06()Ljava/io/File;

    move-result-object v2

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9c;->A01(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20045
    .local v0, "newFile":Ljava/io/File;
    new-instance v2, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/io/File;)V

    .line 20046
    .local v0, "recordFile":Lcom/facebook/ads/redexgen/X/9Y;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:Ljava/util/Deque;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9b;

    invoke-direct {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/9b;-><init>(ILcom/facebook/ads/redexgen/X/9Y;)V

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 20047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9b;

    return-object v0
.end method

.method public static A01(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 20048
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/9c;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x64

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

    const/16 v0, 0x12b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9c;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x25t
        0x7t
        0xdt
        0x4t
        -0x4t
        -0x48t
        0x6t
        0x7t
        0xct
        -0x48t
        -0x7t
        -0x4t
        -0x4t
        -0x48t
        0xat
        -0x3t
        -0x5t
        0x7t
        0xat
        -0x4t
        -0x48t
        0xct
        0x7t
        -0x48t
        0x6t
        -0x3t
        0xft
        0x4t
        0x11t
        -0x48t
        -0x7t
        -0x4t
        -0x4t
        -0x3t
        -0x4t
        -0x48t
        -0x2t
        0x1t
        0x4t
        -0x3t
        0x1et
        0x39t
        0x41t
        0x44t
        0x3dt
        0x3ct
        -0x8t
        0x4ct
        0x47t
        -0x8t
        0x3ct
        0x3dt
        0x44t
        0x3dt
        0x4ct
        0x3dt
        -0x8t
        0x3et
        0x41t
        0x44t
        0x3dt
        -0x8t
        -0x1t
        -0x3t
        0x4bt
        -0x1t
        -0x49t
        -0x2et
        -0x26t
        -0x23t
        -0x2at
        -0x2bt
        -0x6ft
        -0x1bt
        -0x20t
        -0x6ft
        -0x23t
        -0x26t
        -0x1ct
        -0x1bt
        -0x6ft
        -0x29t
        -0x26t
        -0x23t
        -0x2at
        -0x2bt
        -0x6ft
        -0x26t
        -0x21t
        -0x6ft
        -0x2bt
        -0x26t
        -0x1dt
        -0x2at
        -0x2ct
        -0x1bt
        -0x20t
        -0x1dt
        -0x16t
        -0x6ft
        -0x68t
        -0x6at
        -0x1ct
        -0x68t
        -0x1ft
        -0x4t
        0x4t
        0x7t
        0x0t
        -0x1t
        -0x45t
        0xft
        0xat
        -0x45t
        0x7t
        0xat
        -0x4t
        -0x1t
        -0x45t
        0x1t
        0x4t
        0x7t
        0x0t
        -0x45t
        -0x3et
        -0x40t
        0xet
        -0x3et
        -0x39t
        -0x45t
        0xet
        0x6t
        0x4t
        0xbt
        0xbt
        0x4t
        0x9t
        0x2t
        -0x45t
        -0x4t
        0x7t
        0x7t
        -0x45t
        0xbt
        0xdt
        0x0t
        0x11t
        0x4t
        0xat
        0x10t
        0xet
        -0x45t
        0x1t
        0x4t
        0x7t
        0x0t
        0xet
        -0x45t
        0x10t
        0x9t
        0xft
        0x4t
        0x7t
        -0x45t
        -0x40t
        -0x1t
        -0x25t
        -0x4t
        -0x5t
        -0x46t
        -0x10t
        -0x4t
        -0x5t
        0x1t
        -0xat
        -0xct
        0x2t
        -0x4t
        0x2t
        0x0t
        -0x53t
        -0x5t
        -0x12t
        -0x6t
        -0xet
        -0xft
        -0x53t
        -0xdt
        -0xat
        -0x7t
        -0xet
        -0x53t
        -0xat
        -0x5t
        -0x53t
        -0x7t
        -0x4t
        -0xct
        -0xct
        -0xat
        -0x5t
        -0xct
        -0x53t
        -0xft
        -0xat
        -0x1t
        -0xet
        -0x10t
        0x1t
        -0x4t
        -0x1t
        0x6t
        -0x39t
        -0x53t
        -0x4et
        -0xft
        -0x47t
        -0x53t
        -0x6t
        -0xat
        -0x5t
        -0x53t
        -0xat
        0x0t
        -0x53t
        -0x4et
        -0xft
        -0x2bt
        -0x18t
        -0x1at
        -0xet
        -0xbt
        -0x19t
        -0x37t
        -0x14t
        -0x11t
        -0x18t
        -0x2at
        -0x18t
        -0xct
        -0x8t
        -0x18t
        -0xft
        -0x1at
        -0x18t
        -0x5dt
        -0x1ct
        -0x11t
        -0xbt
        -0x18t
        -0x1ct
        -0x19t
        -0x4t
        -0x5dt
        -0x1at
        -0x11t
        -0xet
        -0xat
        -0x18t
        -0x19t
        0x2ft
        0x48t
        0x45t
        0x48t
        0x49t
        0x51t
        0x48t
        -0x6t
        0x40t
        0x43t
        0x46t
        0x3ft
        -0x6t
        0x43t
        0x48t
        -0x6t
        0x46t
        0x49t
        0x41t
        0x41t
        0x43t
        0x48t
        0x41t
        -0x6t
        0x3et
        0x43t
        0x4ct
        0x3ft
        0x3dt
        0x4et
        0x49t
        0x4ct
        0x53t
        0x14t
        -0x6t
        0x1t
        -0x1t
        0x4dt
        0x1t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "eAEkEYRVeXrfS58a4k5WuKPwy8inSFa"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kCWvHOIytqFj1LqyoQQyp7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "68j8lTajfoiD43mqP1eMjl4G9M"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "TuTeUuVTuzlBunCet0oFaCexHHLwVmnb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nTNwkbliDK7ulO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "oDpWF45gCEuTtB4s"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WYN7gIj7AgnNZEOK"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "71vjkKoJ6BpaE0wznNMgre6CgC3xNcNz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9c;->A04:[Ljava/lang/String;

    return-void
.end method

.method private A05(ILjava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20049
    new-instance v2, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v2, p2}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/io/File;)V

    .line 20050
    .local p0, "recordFile":Lcom/facebook/ads/redexgen/X/9Y;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/9Y;->A06()I

    .line 20051
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:Ljava/util/Deque;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9b;

    invoke-direct {v0, p1, v2}, Lcom/facebook/ads/redexgen/X/9b;-><init>(ILcom/facebook/ads/redexgen/X/9Y;)V

    invoke-interface {v1, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 20052
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/9S;Lcom/facebook/ads/redexgen/X/9a;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20053
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/9S;->A06()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 20054
    .local p0, "files":[Ljava/io/File;
    const/4 v14, 0x0

    const/4 v3, 0x1

    if-eqz v11, :cond_b

    .line 20055
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 20056
    .local v0, "filesWhoseNamesAreNumbers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/io/File;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 20057
    .local v11, "filesWeDontHaveAClueAboutWhatTheyAre":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    const/4 v2, -0x1

    .line 20058
    .local v14, "maxFileNumber":I
    array-length v10, v11

    const/4 v7, 0x0

    .end local v14    # "maxFileNumber":I
    .local v9, "maxFileNumber":I
    :goto_0
    move-object/from16 v4, p2

    if-ge v7, v10, :cond_1

    aget-object v5, v11, v7

    .line 20059
    .local v8, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 20060
    .local v2, "fileNumber":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20061
    .local v2, "e":Ljava/lang/NumberFormatException;
    :catch_0
    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20062
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v3, [Ljava/lang/Object;

    .line 20063
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v14

    .line 20064
    const/16 v5, 0x104

    const/16 v1, 0x27

    const/16 v0, 0x76

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/9c;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20065
    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/9a;->ADH(Ljava/lang/String;)V

    goto :goto_2

    .line 20066
    :goto_1
    if-le v1, v2, :cond_0

    .line 20067
    move v2, v1

    .line 20068
    .end local v8    # "file":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 20069
    :cond_1
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/9c;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v5, Lcom/facebook/ads/redexgen/X/9c;->A04:[Ljava/lang/String;

    const-string v1, "dQtFqGLzpKOzaVLFdcsStellVtbbzgLH"

    const/4 v0, 0x7

    aput-object v1, v5, v0

    if-nez v6, :cond_6

    .line 20070
    move v5, v2

    .line 20071
    .local v14, "minFileNumber":I
    :goto_3
    add-int/lit8 v0, v5, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20072
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 20073
    :cond_3
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v12, 0x2

    if-eqz v0, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 20074
    .local v8, "fileNumber":I
    if-ge v10, v5, :cond_4

    .line 20075
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v12, [Ljava/lang/Object;

    .line 20076
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v14

    .line 20077
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    .line 20078
    const/16 v6, 0xa6

    const/16 v1, 0x3d

    const/16 v0, 0x29

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/9c;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20079
    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/9a;->ADH(Ljava/lang/String;)V

    .line 20080
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 20081
    .local v3, "fileNumberToLoad":I
    :cond_5
    :goto_5
    if-lt v2, v5, :cond_6

    .line 20082
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 20083
    .local v8, "fileToLoad":Ljava/io/File;
    :try_start_1
    invoke-direct {p0, v2, v1}, Lcom/facebook/ads/redexgen/X/9c;->A05(ILjava/io/File;)V

    .line 20084
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20085
    .end local v8    # "fileToLoad":Ljava/io/File;
    add-int/lit8 v2, v2, -0x1

    goto :goto_5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 20086
    .restart local v8    # "fileToLoad":Ljava/io/File;
    :catch_1
    move-exception v7

    .line 20087
    .local v10, "e":Ljava/io/IOException;
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v12, [Ljava/lang/Object;

    .line 20088
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v14

    .line 20089
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    .line 20090
    const/16 v2, 0x68

    const/16 v1, 0x3e

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9c;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20091
    invoke-interface {v4, v0, v7}, Lcom/facebook/ads/redexgen/X/9a;->ADI(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 20092
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 20093
    .end local v14    # "minFileNumber":I
    .end local v3    # "fileNumberToLoad":I
    .end local v8    # "fileToLoad":Ljava/io/File;
    .end local v10    # "e":Ljava/io/IOException;
    :cond_6
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A04:[Ljava/lang/String;

    const-string v1, "c1qN9eBQiEQB2i"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    check-cast v7, Ljava/io/File;

    .line 20094
    .local v3, "toDelete":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_7

    .line 20095
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v3, [Ljava/lang/Object;

    .line 20096
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/9c;->A04:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A04:[Ljava/lang/String;

    const-string v1, "thOmxL8vB3eH9n9jjORGQQ6LKF6RMw2U"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    aput-object v7, v5, v14

    const/16 v2, 0x28

    const/16 v1, 0x1a

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9c;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20097
    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/9a;->ADH(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A04:[Ljava/lang/String;

    const-string v1, "xgRJlHLuW2qx7z7dN03x9GIdgxBOKXSD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    aput-object v7, v5, v14

    const/16 v2, 0x26

    const/16 v1, 0x14

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9c;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/9a;->ADH(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 20098
    :cond_a
    return-void

    .line 20099
    .end local v0    # "filesWhoseNamesAreNumbers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/io/File;>;"
    .end local v11    # "filesWeDontHaveAClueAboutWhatTheyAre":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    .end local v9    # "maxFileNumber":I
    :cond_b
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    .line 20100
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/9S;->A06()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v14

    .line 20101
    const/16 v2, 0x42

    const/16 v1, 0x26

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9c;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final declared-synchronized A07()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 20102
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:Z

    if-nez v0, :cond_1

    .line 20103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20104
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 20105
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9b;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9b;->A00()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 20106
    :cond_1
    :try_start_2
    const/16 v2, 0xe3

    const/16 v1, 0x21

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9c;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A08()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 20108
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:Z

    if-nez v0, :cond_2

    .line 20109
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20110
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 20111
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9b;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9b;->A01()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/9c;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A04:[Ljava/lang/String;

    const-string v1, "ETENpwnfZRjAP8"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    .line 20112
    :cond_2
    :try_start_2
    const/16 v2, 0xe3

    const/16 v1, 0x21

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9c;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A09()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 20114
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:Z

    if-nez v0, :cond_0

    .line 20115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 20116
    :cond_0
    :try_start_1
    const/16 v2, 0xe3

    const/16 v1, 0x21

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9c;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0A()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 20118
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:Z

    if-nez v0, :cond_2

    .line 20119
    const/4 v3, 0x0

    .line 20120
    .local p0, "count":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9b;

    .line 20121
    .local v3, "file":Lcom/facebook/ads/redexgen/X/9b;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9b;->A01()I

    move-result v0

    add-int/2addr v3, v0

    .line 20122
    .end local v3    # "file":Lcom/facebook/ads/redexgen/X/9b;
    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20123
    .end local v1
    :cond_0
    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A04:[Ljava/lang/String;

    const-string v1, "H65E7SqieQIRYIWUy7o67wMDhFYlkGJP"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    .line 20124
    :cond_2
    :try_start_1
    const/16 v2, 0xe3

    const/16 v1, 0x21

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9c;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0B(II[BI[II)Lcom/facebook/ads/redexgen/X/9Q;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 20126
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:Z

    if-nez v0, :cond_2

    .line 20127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/9b;

    .line 20128
    .local v3, "file":Lcom/facebook/ads/redexgen/X/9b;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/9b;->A00()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 20129
    move v7, p6

    move-object v6, p5

    move v5, p4

    move-object v4, p3

    move v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/9b;->A02(I[BI[II)Lcom/facebook/ads/redexgen/X/9P;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Q;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/9Q;-><init>(ILcom/facebook/ads/redexgen/X/9P;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20130
    monitor-exit p0

    return-object v0

    .line 20131
    :cond_1
    :try_start_1
    sget-object v3, Lcom/facebook/ads/redexgen/X/9O;->A05:Lcom/facebook/ads/redexgen/X/9O;

    const/4 v0, 0x0

    const/4 v2, -0x1

    new-instance v1, Lcom/facebook/ads/redexgen/X/9P;

    invoke-direct {v1, v3, v2, v2, v0}, Lcom/facebook/ads/redexgen/X/9P;-><init>(Lcom/facebook/ads/redexgen/X/9O;III)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Q;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/9Q;-><init>(ILcom/facebook/ads/redexgen/X/9P;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 20132
    :cond_2
    :try_start_2
    const/16 v2, 0xe3

    const/16 v1, 0x21

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9c;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20133
    .end local v1
    .end local v0
    .end local v2
    .end local v2
    .end local v2
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0C()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 20134
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:Z

    if-nez v0, :cond_1

    .line 20135
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9b;

    .line 20136
    .local v0, "file":Lcom/facebook/ads/redexgen/X/9b;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9b;->A04()V

    goto :goto_0

    .line 20137
    .end local v0    # "file":Lcom/facebook/ads/redexgen/X/9b;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 20138
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9c;->A00()Lcom/facebook/ads/redexgen/X/9b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20139
    monitor-exit p0

    return-void

    .line 20140
    :cond_1
    :try_start_1
    const/16 v2, 0xe3

    const/16 v1, 0x21

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9c;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0D([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 20142
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:Z

    if-nez v0, :cond_3

    .line 20143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9b;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9b;->A05([B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 20144
    .end local v0
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9c;->A00()Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9b;->A05([B)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 20145
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x28

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9c;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20146
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 20147
    :cond_3
    :try_start_1
    const/16 v2, 0xe3

    const/16 v1, 0x21

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9c;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20148
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0E()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 20149
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:Z

    if-nez v0, :cond_1

    .line 20150
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 20151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/9b;

    .line 20152
    .local p0, "numberedRecordFile":Lcom/facebook/ads/redexgen/X/9b;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 20153
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/9b;->A04()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20154
    monitor-exit p0

    return v2

    .line 20155
    .end local p0    # "numberedRecordFile":Lcom/facebook/ads/redexgen/X/9b;
    .end local v0
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 20156
    :cond_1
    :try_start_1
    const/16 v2, 0xe3

    const/16 v1, 0x21

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9c;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 20158
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:Z

    if-eqz v0, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20159
    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/9c;->A04:[Ljava/lang/String;

    const-string v1, "9FkYHelSfolytXq3sbfNTAVN8aoTFNJf"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 20160
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:Z

    .line 20161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A02:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9b;

    .line 20162
    .local v0, "file":Lcom/facebook/ads/redexgen/X/9b;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9b;->A03()V

    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20163
    .end local v2
    :cond_2
    monitor-exit p0

    return-void

    .line 20164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
