.class public final Lcom/facebook/ads/redexgen/X/Jj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PP;


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/PD;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public final A05:Landroid/os/Handler;

.field public final A06:Lcom/facebook/ads/redexgen/X/Le;

.field public final A07:Lcom/facebook/ads/redexgen/X/KW;

.field public final A08:Lcom/facebook/ads/redexgen/X/KQ;

.field public final A09:Lcom/facebook/ads/redexgen/X/KJ;

.field public final A0A:Lcom/facebook/ads/redexgen/X/K3;

.field public final A0B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Pl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jj;->A04()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 40297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40298
    new-instance v0, Lcom/facebook/ads/redexgen/X/7r;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7r;-><init>(Lcom/facebook/ads/redexgen/X/Jj;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A07:Lcom/facebook/ads/redexgen/X/KW;

    .line 40299
    new-instance v0, Lcom/facebook/ads/redexgen/X/7p;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7p;-><init>(Lcom/facebook/ads/redexgen/X/Jj;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A06:Lcom/facebook/ads/redexgen/X/Le;

    .line 40300
    new-instance v0, Lcom/facebook/ads/redexgen/X/7o;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7o;-><init>(Lcom/facebook/ads/redexgen/X/Jj;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A08:Lcom/facebook/ads/redexgen/X/KQ;

    .line 40301
    new-instance v0, Lcom/facebook/ads/redexgen/X/7n;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7n;-><init>(Lcom/facebook/ads/redexgen/X/Jj;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A09:Lcom/facebook/ads/redexgen/X/KJ;

    .line 40302
    new-instance v0, Lcom/facebook/ads/redexgen/X/7m;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7m;-><init>(Lcom/facebook/ads/redexgen/X/Jj;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A0A:Lcom/facebook/ads/redexgen/X/K3;

    .line 40303
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A05:Landroid/os/Handler;

    .line 40304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A0B:Ljava/util/List;

    .line 40305
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A00:I

    .line 40306
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Jj;->A02:Z

    .line 40307
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Jj;)I
    .locals 0

    .line 40308
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Jj;)Landroid/os/Handler;
    .locals 0

    .line 40309
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A05:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Jj;)Lcom/facebook/ads/redexgen/X/PD;
    .locals 0

    .line 40310
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A01:Lcom/facebook/ads/redexgen/X/PD;

    return-object p0
.end method

.method private A03()V
    .locals 5

    .line 40311
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jj;->A05:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 40312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jj;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jj;->A0C:[Ljava/lang/String;

    const-string v1, "SzC94btdcN1119JNHgRanzsWdfoutew0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Pl;

    .line 40313
    .local v1, "animation":Lcom/facebook/ads/redexgen/X/Pl;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Pl;->cancel()V

    .line 40314
    .end local v1    # "animation":Lcom/facebook/ads/redexgen/X/Pl;
    goto :goto_0

    .line 40315
    :cond_1
    return-void
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ua4Z1F3Vn1tdURaP0tTj5Z"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VlqKJtfjGqtNso0qX2A6lmnvOZsZ2xTE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1pb0xsuTqC4ySw1JjiCpjHk6a0KK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HW9a8amQa56v9usqS4J3KzzxMBRp7oUY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lzg290ZQq0ECc78zj7A2Pt"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9JBQniCNh78hbF6UnJo6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DIRAqcjzgSQz4x9q8OrEXdtc6Zce0V5V"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FPN1H6gS7aT4O5CCkRk249I"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Jj;->A0C:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Jj;)V
    .locals 0

    .line 40316
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jj;->A03()V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Jj;ZZ)V
    .locals 0

    .line 40317
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Jj;->A07(ZZ)V

    return-void
.end method

.method private A07(ZZ)V
    .locals 5

    .line 40318
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Pl;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jj;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 40319
    .local p1, "animation":Lcom/facebook/ads/redexgen/X/Pl;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jj;->A0C:[Ljava/lang/String;

    const-string v1, "qWrr7wKcnD6M25Nm7U3j0NNRElcnIA4d"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v3, p1, p2}, Lcom/facebook/ads/redexgen/X/Pl;->A3P(ZZ)V

    .line 40320
    .end local p1    # "animation":Lcom/facebook/ads/redexgen/X/Pl;
    goto :goto_0

    .line 40321
    :cond_1
    return-void
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Jj;)Z
    .locals 0

    .line 40322
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A03:Z

    return p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Jj;)Z
    .locals 0

    .line 40323
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A02:Z

    return p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Jj;)Z
    .locals 0

    .line 40324
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Z

    return p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Jj;Lcom/facebook/ads/redexgen/X/Pk;)Z
    .locals 0

    .line 40325
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Jj;->A0E(Lcom/facebook/ads/redexgen/X/Pk;)Z

    move-result p0

    return p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/Jj;Z)Z
    .locals 0

    .line 40326
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Jj;->A03:Z

    return p1
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/Jj;Z)Z
    .locals 0

    .line 40327
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Z

    return p1
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/Pk;)Z
    .locals 2

    .line 40328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Pl;

    .line 40329
    .local p1, "animation":Lcom/facebook/ads/redexgen/X/Pl;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Pl;->A7G()Lcom/facebook/ads/redexgen/X/Pk;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 40330
    const/4 v0, 0x0

    return v0

    .line 40331
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A0F()V
    .locals 1

    .line 40332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40333
    return-void
.end method

.method public final A0G()V
    .locals 2

    .line 40334
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A02:Z

    if-eqz v0, :cond_0

    .line 40335
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jj;->A05:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 40336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A02:Z

    .line 40337
    :cond_0
    return-void
.end method

.method public final A0H()V
    .locals 1

    .line 40338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Z

    .line 40339
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A03:Z

    .line 40340
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/facebook/ads/redexgen/X/Jj;->A07(ZZ)V

    .line 40341
    return-void
.end method

.method public final A0I(I)V
    .locals 0

    .line 40342
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jj;->A00:I

    .line 40343
    return-void
.end method

.method public final A0J(Lcom/facebook/ads/redexgen/X/Pl;)V
    .locals 1

    .line 40344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A0B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40345
    return-void
.end method

.method public final A0K()Z
    .locals 1

    .line 40346
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A02:Z

    return v0
.end method

.method public final A8K(Lcom/facebook/ads/redexgen/X/PD;)V
    .locals 4

    .line 40347
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jj;->A01:Lcom/facebook/ads/redexgen/X/PD;

    .line 40348
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PD;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x5

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jj;->A07:Lcom/facebook/ads/redexgen/X/KW;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jj;->A0A:Lcom/facebook/ads/redexgen/X/K3;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jj;->A08:Lcom/facebook/ads/redexgen/X/KQ;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jj;->A09:Lcom/facebook/ads/redexgen/X/KJ;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jj;->A06:Lcom/facebook/ads/redexgen/X/Le;

    const/4 v0, 0x4

    aput-object v1, v2, v0

    .line 40349
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A04([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 40350
    return-void
.end method

.method public final AEO(Lcom/facebook/ads/redexgen/X/PD;)V
    .locals 4

    .line 40351
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jj;->A03()V

    .line 40352
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PD;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x5

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jj;->A06:Lcom/facebook/ads/redexgen/X/Le;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jj;->A0A:Lcom/facebook/ads/redexgen/X/K3;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jj;->A08:Lcom/facebook/ads/redexgen/X/KQ;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jj;->A09:Lcom/facebook/ads/redexgen/X/KJ;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jj;->A07:Lcom/facebook/ads/redexgen/X/KW;

    const/4 v0, 0x4

    aput-object v1, v2, v0

    .line 40353
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A05([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 40354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A01:Lcom/facebook/ads/redexgen/X/PD;

    .line 40355
    return-void
.end method
