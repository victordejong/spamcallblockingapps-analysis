.class public final Lcom/facebook/ads/redexgen/X/QZ;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/QY;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/facebook/ads/redexgen/X/Qa;",
        ">;"
    }
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final A07:Ljava/lang/String;

.field public static final A08:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/8D;

.field public A01:Lcom/facebook/ads/redexgen/X/QE;

.field public A02:Lcom/facebook/ads/redexgen/X/QY;

.field public A03:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A04:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 49402
    invoke-static {}, Lcom/facebook/ads/redexgen/X/QZ;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/QZ;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/QZ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/QZ;->A07:Ljava/lang/String;

    .line 49403
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/QZ;->A08:Ljava/util/Set;

    .line 49404
    sget-object v3, Lcom/facebook/ads/redexgen/X/QZ;->A08:Ljava/util/Set;

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49405
    sget-object v3, Lcom/facebook/ads/redexgen/X/QZ;->A08:Ljava/util/Set;

    const/16 v2, 0x1d

    const/4 v1, 0x4

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49406
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 1

    .line 49407
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/QZ;-><init>(Lcom/facebook/ads/redexgen/X/8D;Ljava/util/Map;Ljava/util/Map;)V

    .line 49408
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8D;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/8D;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49409
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/QZ;-><init>(Lcom/facebook/ads/redexgen/X/8D;Ljava/util/Map;Ljava/util/Map;)V

    .line 49410
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8D;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/8D;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49411
    .local v1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v0, "postData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 49412
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QZ;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 49413
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QZ;->A03:Ljava/util/Map;

    .line 49414
    if-eqz p3, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :cond_0
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/QZ;->A04:Ljava/util/Map;

    .line 49415
    return-void

    .line 49416
    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private final varargs A00([Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Qa;
    .locals 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    return-object v5

    :cond_0
    move-object v3, p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/QZ;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    .line 49417
    .local p0, "this":Lcom/facebook/ads/redexgen/X/QZ;
    .local v0, "urls":[Ljava/lang/String;
    sget-object v2, Lcom/facebook/ads/redexgen/X/QZ;->A06:[Ljava/lang/String;

    const-string v1, "OBWBCzNqNMhSgl0vUrcBODbII9DBW"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "nuEeWi2rsMih0JuNdplL"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x0

    :try_start_0
    aget-object v1, p1, v0

    .line 49418
    .local v0, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/facebook/ads/redexgen/X/QZ;->A08:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    .line 49419
    :cond_1
    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/QZ;->A02(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49420
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/QZ;->A03:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/QZ;->A03:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 49421
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/QZ;->A03:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 49422
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49423
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 49424
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/QZ;
    :cond_2
    const/4 v2, 0x1

    .line 49425
    .local v5, "attempt":I
    :goto_1
    add-int/lit8 v1, v2, 0x1

    .end local v5    # "attempt":I
    .local v3, "attempt":I
    const/4 v0, 0x2

    if-gt v2, v0, :cond_4

    .line 49426
    invoke-direct {v3, v4}, Lcom/facebook/ads/redexgen/X/QZ;->A07(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49427
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/QZ;->A01:Lcom/facebook/ads/redexgen/X/QE;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Qa;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Qa;-><init>(Lcom/facebook/ads/redexgen/X/QE;)V

    goto :goto_2

    .line 49428
    :cond_3
    move v2, v1

    goto :goto_1

    .line 49429
    :goto_2
    return-object v0

    .line 49430
    :cond_4
    return-object v5

    .line 49431
    .end local v3    # "attempt":I
    :cond_5
    :goto_3
    return-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49432
    .end local v0    # "url":Ljava/lang/String;
    .end local v0
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v5

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/QZ;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x67

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 49433
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QZ;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A02()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8G;->A5b()Ljava/util/Map;

    move-result-object v3

    .line 49434
    .local p0, "analogData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x17

    const/4 v1, 0x6

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/LI;->A01(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49435
    .end local p0    # "analogData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p0, "ex":Ljava/lang/Exception;
    :catch_0
    return-object p1
.end method

.method private A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 49436
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49437
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/QZ;
    :cond_0
    return-object p1

    .line 49438
    :cond_1
    const/4 v2, 0x3

    const/4 v1, 0x1

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 49439
    .local p0, "prepend":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/QZ;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x4bt
        0x3et
        0x2bt
        0x69t
        0x38t
        0xft
        0xft
        0x12t
        0xft
        0x5dt
        0x12t
        0xdt
        0x18t
        0x13t
        0x14t
        0x13t
        0x1at
        0x5dt
        0x8t
        0xft
        0x11t
        0x47t
        0x5dt
        0xft
        0x0t
        0xft
        0x2t
        0x1t
        0x9t
        0x36t
        0x2dt
        0x34t
        0x34t
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "naFNcZuGe"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "C9JAYYW4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "8H9N3VrVfLlJ9IUdYMoO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "YylQBw7bkupjVtNcwFivzoGwGcTau"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "utPcy8I9vNMcCezdgtn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ehhspVm5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7sb5kaLRz1R8p"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "m"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/QZ;->A06:[Ljava/lang/String;

    return-void
.end method

.method private final A06(Lcom/facebook/ads/redexgen/X/Qa;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 49440
    .local p0, "this":Lcom/facebook/ads/redexgen/X/QZ;
    .local v1, "response":Lcom/facebook/ads/redexgen/X/Qa;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/QZ;->A02:Lcom/facebook/ads/redexgen/X/QY;

    if-eqz v0, :cond_1

    .line 49441
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/QZ;->A02:Lcom/facebook/ads/redexgen/X/QY;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QY;->ACd(Lcom/facebook/ads/redexgen/X/Qa;)V

    .line 49442
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/QZ;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "response":Lcom/facebook/ads/redexgen/X/Qa;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private A07(Ljava/lang/String;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 49443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QZ;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/QX;->A00(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QF;

    move-result-object v2

    .line 49444
    .local p0, "networkModule":Lcom/facebook/ads/redexgen/X/QF;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QZ;->A04:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QZ;->A04:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 49445
    .end local p1    # null:Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/QT;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/QT;-><init>()V

    .line 49446
    invoke-interface {v2, p1, v0}, Lcom/facebook/ads/redexgen/X/QF;->ACP(Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    .line 49447
    .restart local p1    # null:Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QZ;->A01:Lcom/facebook/ads/redexgen/X/QE;

    goto :goto_1

    .line 49448
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/QT;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/QT;-><init>()V

    .line 49449
    .local p1, "params":Lcom/facebook/ads/redexgen/X/QT;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QZ;->A04:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QT;->A06(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/QT;

    .line 49450
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/QT;->A09()[B

    move-result-object v0

    invoke-interface {v2, p1, v0}, Lcom/facebook/ads/redexgen/X/QF;->ACQ(Ljava/lang/String;[B)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    .local p1, "response":Lcom/facebook/ads/redexgen/X/QE;
    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49451
    :catch_0
    move-exception v5

    .line 49452
    .local p1, "ex":Ljava/lang/Exception;
    sget-object v4, Lcom/facebook/ads/redexgen/X/QZ;->A07:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    const/16 v1, 0x13

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49453
    .end local p1    # "ex":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QZ;->A01:Lcom/facebook/ads/redexgen/X/QE;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/QE;->A7L()I

    move-result v1

    const/16 v0, 0xc8

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public final A08(Lcom/facebook/ads/redexgen/X/QY;)V
    .locals 0

    .line 49454
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QZ;->A02:Lcom/facebook/ads/redexgen/X/QY;

    .line 49455
    return-void
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object v1, p0

    .line 49456
    .local p0, "this":Lcom/facebook/ads/redexgen/X/QZ;
    :try_start_0
    check-cast p1, [Ljava/lang/String;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/QZ;->A00([Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Qa;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/QZ;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final onCancelled()V
    .locals 1

    .line 49457
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QZ;->A02:Lcom/facebook/ads/redexgen/X/QY;

    if-eqz v0, :cond_0

    .line 49458
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/QY;->ACb()V

    .line 49459
    :cond_0
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 49460
    .local p0, "this":Lcom/facebook/ads/redexgen/X/QZ;
    :try_start_0
    check-cast p1, Lcom/facebook/ads/redexgen/X/Qa;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/QZ;->A06(Lcom/facebook/ads/redexgen/X/Qa;)V

    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/QZ;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
