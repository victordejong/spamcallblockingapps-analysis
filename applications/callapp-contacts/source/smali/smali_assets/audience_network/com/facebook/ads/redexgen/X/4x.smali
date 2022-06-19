.class public final Lcom/facebook/ads/redexgen/X/4x;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/50;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudienceNetworkViewFactory"
.end annotation


# static fields
.field public static A04:[B


# instance fields
.field public final A00:Landroid/content/Intent;

.field public final A01:Lcom/facebook/ads/redexgen/X/50;

.field public final A02:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A03:Lcom/facebook/ads/redexgen/X/JC;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4x;->A0N()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/50;Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 0

    .line 12387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12388
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    .line 12389
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Landroid/content/Intent;

    .line 12390
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    .line 12391
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    .line 12392
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/50;Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/4w;)V
    .locals 0

    .line 12393
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/4x;-><init>(Lcom/facebook/ads/redexgen/X/50;Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/XJ;)V

    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/S1;
    .locals 4

    .line 12394
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Landroid/content/Intent;

    .line 12395
    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4x;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/S1;

    .line 12396
    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/50;
    .locals 0

    .line 12397
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    return-object p0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/MA;
    .locals 5

    .line 12398
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/TU;

    invoke-direct {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/TU;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/cp;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/cp;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;)V

    return-object v0
.end method

.method private A03()Lcom/facebook/ads/redexgen/X/MA;
    .locals 9

    .line 12399
    new-instance v2, Lcom/facebook/ads/redexgen/X/Y4;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    const/4 v0, 0x0

    new-instance v5, Lcom/facebook/ads/redexgen/X/TU;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/TU;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    .line 12400
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A00()Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v6

    new-instance v7, Lcom/facebook/ads/redexgen/X/ae;

    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/ae;-><init>()V

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Y4;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/Me;I)V

    .line 12401
    return-object v2
.end method

.method private A04()Lcom/facebook/ads/redexgen/X/MA;
    .locals 9

    .line 12402
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Landroid/content/Intent;

    .line 12403
    const/16 v2, 0xe

    const/16 v1, 0x19

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4x;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/S5;

    .line 12404
    .local p0, "dataBundle":Lcom/facebook/ads/redexgen/X/S5;
    new-instance v2, Lcom/facebook/ads/redexgen/X/Y4;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    const/4 v0, 0x0

    new-instance v5, Lcom/facebook/ads/redexgen/X/TU;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/TU;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    new-instance v7, Lcom/facebook/ads/redexgen/X/ac;

    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/ac;-><init>()V

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Y4;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/Me;I)V

    return-object v2
.end method

.method private A05()Lcom/facebook/ads/redexgen/X/MA;
    .locals 10

    .line 12405
    move-object v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    .line 12406
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    .line 12407
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 12408
    .local v2, "useCarouselCardDesign":Z
    :goto_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    .line 12409
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1n(Landroid/content/Context;)Z

    move-result v1

    .line 12410
    .local v0, "useCarouselFullscreenCardDesign":Z
    const/4 v0, 0x0

    if-eqz v3, :cond_2

    .line 12411
    new-instance v3, Lcom/facebook/ads/redexgen/X/84;

    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v6, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v6, v4}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    new-instance v7, Lcom/facebook/ads/redexgen/X/TU;

    invoke-direct {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/TU;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    .line 12412
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A00()Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/84;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/S1;Z)V

    .line 12413
    return-object v3

    .line 12414
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 12415
    :cond_2
    if-eqz v1, :cond_3

    .line 12416
    new-instance v3, Lcom/facebook/ads/redexgen/X/84;

    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v6, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v6, v4}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    new-instance v7, Lcom/facebook/ads/redexgen/X/TU;

    invoke-direct {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/TU;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    .line 12417
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A00()Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/84;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/S1;Z)V

    .line 12418
    return-object v3

    .line 12419
    :cond_3
    new-instance v3, Lcom/facebook/ads/redexgen/X/83;

    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v6, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v6, v4}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    new-instance v7, Lcom/facebook/ads/redexgen/X/TU;

    invoke-direct {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/TU;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    .line 12420
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A00()Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/83;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/S1;)V

    .line 12421
    return-object v3
.end method

.method private A06()Lcom/facebook/ads/redexgen/X/MA;
    .locals 9

    .line 12422
    new-instance v2, Lcom/facebook/ads/redexgen/X/8s;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v4, Lcom/facebook/ads/redexgen/X/ae;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/ae;-><init>()V

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    .line 12423
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A00()Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v7, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    const/4 v0, 0x0

    new-instance v8, Lcom/facebook/ads/redexgen/X/TU;

    invoke-direct {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/TU;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/8s;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/Me;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/M9;)V

    .line 12424
    return-object v2
.end method

.method private A07()Lcom/facebook/ads/redexgen/X/MA;
    .locals 9

    .line 12425
    new-instance v2, Lcom/facebook/ads/redexgen/X/b6;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    const/4 v0, 0x0

    new-instance v5, Lcom/facebook/ads/redexgen/X/TU;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/TU;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    .line 12426
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A00()Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v6

    new-instance v8, Lcom/facebook/ads/redexgen/X/ae;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/ae;-><init>()V

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/b6;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/16;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Me;)V

    .line 12427
    return-object v2
.end method

.method private A08()Lcom/facebook/ads/redexgen/X/MA;
    .locals 9

    .line 12428
    new-instance v2, Lcom/facebook/ads/redexgen/X/86;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v4, Lcom/facebook/ads/redexgen/X/ae;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/ae;-><init>()V

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    .line 12429
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A00()Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v7, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    const/4 v0, 0x0

    new-instance v8, Lcom/facebook/ads/redexgen/X/TU;

    invoke-direct {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/TU;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/86;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/Me;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/M9;)V

    .line 12430
    return-object v2
.end method

.method private A09()Lcom/facebook/ads/redexgen/X/MA;
    .locals 13

    .line 12431
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Landroid/content/Intent;

    .line 12432
    const/16 v2, 0xe

    const/16 v1, 0x19

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4x;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/S5;

    .line 12433
    .local p0, "dataBundle":Lcom/facebook/ads/redexgen/X/S5;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/16;->A0n()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 12434
    new-instance v2, Lcom/facebook/ads/redexgen/X/86;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v4, Lcom/facebook/ads/redexgen/X/ac;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/ac;-><init>()V

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v7, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    new-instance v8, Lcom/facebook/ads/redexgen/X/Eo;

    invoke-direct {v8, v0, v1}, Lcom/facebook/ads/redexgen/X/Eo;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/86;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/Me;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/M9;)V

    return-object v2

    .line 12435
    :cond_0
    new-instance v7, Lcom/facebook/ads/redexgen/X/ah;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v10, Lcom/facebook/ads/redexgen/X/PD;

    invoke-direct {v10, v8}, Lcom/facebook/ads/redexgen/X/PD;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    new-instance v11, Lcom/facebook/ads/redexgen/X/Eo;

    invoke-direct {v11, v0, v1}, Lcom/facebook/ads/redexgen/X/Eo;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/ah;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/PD;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/S5;)V

    return-object v7
.end method

.method private A0A()Lcom/facebook/ads/redexgen/X/MA;
    .locals 9

    .line 12436
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Landroid/content/Intent;

    .line 12437
    const/16 v2, 0xe

    const/16 v1, 0x19

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4x;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/S5;

    .line 12438
    .local p0, "dataBundle":Lcom/facebook/ads/redexgen/X/S5;
    new-instance v2, Lcom/facebook/ads/redexgen/X/b6;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    const/4 v0, 0x0

    new-instance v5, Lcom/facebook/ads/redexgen/X/Eo;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Eo;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    .line 12439
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/16;->A0Z()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/facebook/ads/redexgen/X/ac;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/ac;-><init>()V

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/b6;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/16;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Me;)V

    .line 12440
    return-object v2
.end method

.method private A0B(Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/MA;
    .locals 7

    .line 12441
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v5, Lcom/facebook/ads/redexgen/X/TV;

    invoke-direct {v5, p0}, Lcom/facebook/ads/redexgen/X/TV;-><init>(Lcom/facebook/ads/redexgen/X/4x;)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/TU;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/TU;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    new-instance v4, Lcom/facebook/ads/redexgen/X/af;

    invoke-direct {v4, v6, v5, v3, v0}, Lcom/facebook/ads/redexgen/X/af;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/MZ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;)V

    .line 12442
    .local p0, "videoInterstitialView":Lcom/facebook/ads/redexgen/X/af;
    invoke-virtual {v4, p1}, Lcom/facebook/ads/redexgen/X/af;->A05(Landroid/view/View;)V

    .line 12443
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Landroid/content/Intent;

    .line 12444
    const/16 v2, 0x27

    const/16 v1, 0x1b

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4x;->A0M(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xc8

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 12445
    .local p1, "videoProgressReportIntervalMs":I
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/af;->A04(I)V

    .line 12446
    const/high16 v0, -0x1000000

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 12447
    return-object v4
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/MA;
    .locals 0

    .line 12448
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A07()Lcom/facebook/ads/redexgen/X/MA;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/MA;
    .locals 0

    .line 12449
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A03()Lcom/facebook/ads/redexgen/X/MA;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/MA;
    .locals 0

    .line 12450
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A04()Lcom/facebook/ads/redexgen/X/MA;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/MA;
    .locals 0

    .line 12451
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A09()Lcom/facebook/ads/redexgen/X/MA;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/MA;
    .locals 0

    .line 12452
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A0A()Lcom/facebook/ads/redexgen/X/MA;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/MA;
    .locals 0

    .line 12453
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A02()Lcom/facebook/ads/redexgen/X/MA;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/MA;
    .locals 0

    .line 12454
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A08()Lcom/facebook/ads/redexgen/X/MA;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/MA;
    .locals 0

    .line 12455
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A06()Lcom/facebook/ads/redexgen/X/MA;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/MA;
    .locals 0

    .line 12456
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A05()Lcom/facebook/ads/redexgen/X/MA;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/4x;Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/MA;
    .locals 0

    .line 12457
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4x;->A0B(Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/MA;

    move-result-object p0

    return-object p0
.end method

.method public static A0M(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4x;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0N()V
    .locals 1

    const/16 v0, 0x42

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4x;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x33t
        0x36t
        0xdt
        0x36t
        0x33t
        0x26t
        0x33t
        0xdt
        0x30t
        0x27t
        0x3ct
        0x36t
        0x3et
        0x37t
        0xet
        0x19t
        0xbt
        0x1dt
        0xet
        0x18t
        0x19t
        0x18t
        0x2at
        0x15t
        0x18t
        0x19t
        0x13t
        0x3dt
        0x18t
        0x38t
        0x1dt
        0x8t
        0x1dt
        0x3et
        0x9t
        0x12t
        0x18t
        0x10t
        0x19t
        0x4dt
        0x52t
        0x5ft
        0x5et
        0x54t
        0x64t
        0x4ft
        0x52t
        0x56t
        0x5et
        0x64t
        0x4bt
        0x54t
        0x57t
        0x57t
        0x52t
        0x55t
        0x5ct
        0x64t
        0x52t
        0x55t
        0x4ft
        0x5et
        0x49t
        0x4dt
        0x5at
        0x57t
    .end array-data
.end method
