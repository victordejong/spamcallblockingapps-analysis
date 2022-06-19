.class public Lcom/facebook/ads/redexgen/X/6V;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/content/Context;

.field public final A01:Landroid/content/Intent;

.field public final A02:Lcom/facebook/ads/redexgen/X/5v;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6V;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6V;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 4

    .line 15399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15400
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6V;->A00:Landroid/content/Context;

    .line 15401
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6V;->A02:Lcom/facebook/ads/redexgen/X/5v;

    .line 15402
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/6V;->A00:Landroid/content/Context;

    const/4 v2, 0x0

    const/16 v1, 0x25

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6V;->A01:Landroid/content/Intent;

    .line 15403
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/6V;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x59

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6V;->A03:[B

    return-void

    :array_0
    .array-data 1
        0xbt
        0x4t
        0xet
        0x18t
        0x5t
        0x3t
        0xet
        0x44t
        0x3t
        0x4t
        0x1et
        0xft
        0x4t
        0x1et
        0x44t
        0xbt
        0x9t
        0x1et
        0x3t
        0x5t
        0x4t
        0x44t
        0x28t
        0x2bt
        0x3et
        0x3et
        0x2ft
        0x38t
        0x33t
        0x35t
        0x29t
        0x22t
        0x2bt
        0x24t
        0x2dt
        0x2ft
        0x2et
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gzoPJa3YJq74yHlh4Kautpo6PykpJttB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xEuKrsUwN7tFvNnV3iMYP4KZnO8riBlQ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "lc5feuZ3Il8I6R0bOS4xOwpVo7z3Ptvw"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "iA86P4kUo7ndkTsy4BW0PgLjKRNo"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZFlxOGXCe0x"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3O7bwiucz9oeG4IlLgfkTLlYYVx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "W0Tk6jYHeYS8DJZVsp9PnJgXLAqViTBL"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "NyjAAxhorvjsCexKupp2n6fumaYP0slN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6V;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A03()Lcom/facebook/ads/redexgen/X/6r;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 15404
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6V;->A02:Lcom/facebook/ads/redexgen/X/5v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0b()Lcom/facebook/ads/redexgen/X/6i;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6i;->A0G:Lcom/facebook/ads/redexgen/X/6i;

    if-ne v1, v0, :cond_0

    .line 15405
    const/4 v0, 0x0

    return-object v0

    .line 15406
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/6V;->A00:Landroid/content/Context;

    sget-object v1, Lcom/facebook/ads/redexgen/X/6V;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/6V;->A04:[Ljava/lang/String;

    const-string v1, "gv6voaaG6vdSYeyr8DV63fZ5qAR"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "dn1jACM3Ce9U9E69tCENzMCaTu0a"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A00(III)Ljava/lang/String;

    move-result-object v1

    .line 15407
    .local p0, "context":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/6r;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/6r;-><init>(Ljava/lang/String;)V

    .line 15408
    .local v0, "signalValueContext":Lcom/facebook/ads/redexgen/X/6r;
    return-object v0

    .line 15409
    :cond_1
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A04(F)Lcom/facebook/ads/redexgen/X/6t;
    .locals 4

    .line 15410
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6V;->A03()Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/X0;

    invoke-direct {v0, v2, v3, v1, p1}, Lcom/facebook/ads/redexgen/X/X0;-><init>(JLcom/facebook/ads/redexgen/X/6r;F)V

    .line 15411
    return-object v0
.end method

.method public final A05(I)Lcom/facebook/ads/redexgen/X/6t;
    .locals 4

    .line 15412
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6V;->A03()Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wy;

    invoke-direct {v0, v2, v3, v1, p1}, Lcom/facebook/ads/redexgen/X/Wy;-><init>(JLcom/facebook/ads/redexgen/X/6r;I)V

    .line 15413
    return-object v0
.end method

.method public final A06(ILjava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/6t;"
        }
    .end annotation

    .line 15414
    .local v1, "keyAndIntentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6V;->A01:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 15415
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 15416
    .local p0, "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 15417
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/6V;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/6V;->A04:[Ljava/lang/String;

    const-string v1, "xiCTtte1tfN0xoXEypJBbGID1yWxv0pc"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 15418
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6V;->A01:Landroid/content/Intent;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15419
    .end local v0    # "key":Ljava/lang/String;
    goto :goto_0

    .line 15420
    :cond_0
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/6V;->A0D(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 15421
    .end local p0    # "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method

.method public final A07(J)Lcom/facebook/ads/redexgen/X/6t;
    .locals 6

    .line 15422
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ww;

    .line 15423
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6V;->A03()Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Ww;-><init>(JLcom/facebook/ads/redexgen/X/6r;J)V

    .line 15424
    return-object v0
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;
    .locals 5

    .line 15425
    new-instance v4, Lcom/facebook/ads/redexgen/X/6q;

    invoke-direct {v4, p1}, Lcom/facebook/ads/redexgen/X/6q;-><init>(Lcom/facebook/ads/redexgen/X/6p;)V

    .line 15426
    .local p0, "signalErrorValueTypeDef":Lcom/facebook/ads/redexgen/X/6q;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6V;->A03()Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/X1;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/facebook/ads/redexgen/X/X1;-><init>(JLcom/facebook/ads/redexgen/X/6r;Lcom/facebook/ads/redexgen/X/6q;)V

    .line 15427
    return-object v0
.end method

.method public final A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;
    .locals 4

    .line 15428
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6V;->A03()Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wt;

    invoke-direct {v0, v2, v3, v1, p1}, Lcom/facebook/ads/redexgen/X/Wt;-><init>(JLcom/facebook/ads/redexgen/X/6r;Ljava/lang/String;)V

    .line 15429
    return-object v0
.end method

.method public final A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;
    .locals 1

    .line 15430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6V;->A01:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 15431
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 15432
    :goto_0
    return-object v0

    .line 15433
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method

.method public final A0B(Ljava/lang/String;I)Lcom/facebook/ads/redexgen/X/6t;
    .locals 1

    .line 15434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6V;->A01:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 15435
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6V;->A05(I)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 15436
    :goto_0
    return-object v0

    .line 15437
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method

.method public final A0C(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/6t;
    .locals 1

    .line 15438
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6V;->A01:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 15439
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6V;->A0G(Z)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 15440
    :goto_0
    return-object v0

    .line 15441
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method

.method public final A0D(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/6t;"
        }
    .end annotation

    .line 15442
    .local v0, "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6V;->A03()Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wz;

    invoke-direct {v0, v2, v3, v1, p1}, Lcom/facebook/ads/redexgen/X/Wz;-><init>(JLcom/facebook/ads/redexgen/X/6r;Ljava/util/HashMap;)V

    .line 15443
    return-object v0
.end method

.method public final A0E(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/6t;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/6k;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/6t;"
        }
    .end annotation

    .line 15444
    .local v4, "customObjectSignalValueDefList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/ICustomObjectSignalValueDef;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wx;

    .line 15445
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 15446
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6V;->A03()Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v3

    sget-object v5, Lcom/facebook/ads/redexgen/X/6s;->A04:Lcom/facebook/ads/redexgen/X/6s;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Wx;-><init>(JLcom/facebook/ads/redexgen/X/6r;Ljava/util/List;Lcom/facebook/ads/redexgen/X/6s;)V

    .line 15447
    return-object v0
.end method

.method public final A0F(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/6t;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/6t;"
        }
    .end annotation

    .line 15448
    .local v4, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wx;

    .line 15449
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 15450
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6V;->A03()Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v3

    sget-object v5, Lcom/facebook/ads/redexgen/X/6s;->A0D:Lcom/facebook/ads/redexgen/X/6s;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Wx;-><init>(JLcom/facebook/ads/redexgen/X/6r;Ljava/util/List;Lcom/facebook/ads/redexgen/X/6s;)V

    .line 15451
    return-object v0
.end method

.method public final A0G(Z)Lcom/facebook/ads/redexgen/X/6t;
    .locals 4

    .line 15452
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6V;->A03()Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/X3;

    invoke-direct {v0, v2, v3, v1, p1}, Lcom/facebook/ads/redexgen/X/X3;-><init>(JLcom/facebook/ads/redexgen/X/6r;Z)V

    .line 15453
    return-object v0
.end method
