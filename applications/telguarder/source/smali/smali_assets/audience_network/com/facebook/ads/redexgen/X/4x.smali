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

.field public final A02:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A03:Lcom/facebook/ads/redexgen/X/JC;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4x;->A0N()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/50;Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 0

    .line 12493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12494
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    .line 12495
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Landroid/content/Intent;

    .line 12496
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    .line 12497
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    .line 12498
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/50;Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/4w;)V
    .locals 0

    .line 12499
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/4x;-><init>(Lcom/facebook/ads/redexgen/X/50;Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/Wm;)V

    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/bx;
    .locals 4

    .line 12500
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Landroid/content/Intent;

    .line 12501
    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4x;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/bx;

    .line 12502
    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/50;
    .locals 0

    .line 12503
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    return-object p0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/M8;
    .locals 5

    .line 12504
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/ab;

    invoke-direct {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/ab;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/SY;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/SY;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;)V

    return-object v0
.end method

.method private A03()Lcom/facebook/ads/redexgen/X/M8;
    .locals 9

    .line 12505
    new-instance v2, Lcom/facebook/ads/redexgen/X/Rb;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    const/4 v0, 0x0

    new-instance v5, Lcom/facebook/ads/redexgen/X/ab;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/ab;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    .line 12506
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A00()Lcom/facebook/ads/redexgen/X/bx;

    move-result-object v6

    new-instance v7, Lcom/facebook/ads/redexgen/X/SH;

    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/SH;-><init>()V

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Rb;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/MZ;I)V

    .line 12507
    return-object v2
.end method

.method private A04()Lcom/facebook/ads/redexgen/X/M8;
    .locals 9

    .line 12508
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Landroid/content/Intent;

    .line 12509
    const/16 v2, 0xe

    const/16 v1, 0x19

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4x;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/bt;

    .line 12510
    .local p0, "dataBundle":Lcom/facebook/ads/redexgen/X/bt;
    new-instance v2, Lcom/facebook/ads/redexgen/X/Rb;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    const/4 v0, 0x0

    new-instance v5, Lcom/facebook/ads/redexgen/X/ab;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/ab;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    new-instance v7, Lcom/facebook/ads/redexgen/X/SG;

    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/SG;-><init>()V

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Rb;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/MZ;I)V

    return-object v2
.end method

.method private A05()Lcom/facebook/ads/redexgen/X/M8;
    .locals 8

    .line 12511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1m(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 12512
    new-instance v2, Lcom/facebook/ads/redexgen/X/84;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v5, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v5, v3}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    new-instance v6, Lcom/facebook/ads/redexgen/X/ab;

    invoke-direct {v6, v0, v1}, Lcom/facebook/ads/redexgen/X/ab;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    .line 12513
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A00()Lcom/facebook/ads/redexgen/X/bx;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/84;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/bx;)V

    .line 12514
    return-object v2

    .line 12515
    :cond_0
    new-instance v2, Lcom/facebook/ads/redexgen/X/83;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v5, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v5, v3}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    new-instance v6, Lcom/facebook/ads/redexgen/X/ab;

    invoke-direct {v6, v0, v1}, Lcom/facebook/ads/redexgen/X/ab;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    .line 12516
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A00()Lcom/facebook/ads/redexgen/X/bx;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/83;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/bx;)V

    .line 12517
    return-object v2
.end method

.method private A06()Lcom/facebook/ads/redexgen/X/M8;
    .locals 9

    .line 12518
    new-instance v2, Lcom/facebook/ads/redexgen/X/8s;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v4, Lcom/facebook/ads/redexgen/X/SH;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/SH;-><init>()V

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    .line 12519
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A00()Lcom/facebook/ads/redexgen/X/bx;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v7, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    const/4 v0, 0x0

    new-instance v8, Lcom/facebook/ads/redexgen/X/ab;

    invoke-direct {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/ab;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/8s;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/MZ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/M7;)V

    .line 12520
    return-object v2
.end method

.method private A07()Lcom/facebook/ads/redexgen/X/M8;
    .locals 9

    .line 12521
    new-instance v2, Lcom/facebook/ads/redexgen/X/SK;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    const/4 v0, 0x0

    new-instance v5, Lcom/facebook/ads/redexgen/X/ab;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/ab;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    .line 12522
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A00()Lcom/facebook/ads/redexgen/X/bx;

    move-result-object v6

    new-instance v8, Lcom/facebook/ads/redexgen/X/SH;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/SH;-><init>()V

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/SK;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/16;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MZ;)V

    .line 12523
    return-object v2
.end method

.method private A08()Lcom/facebook/ads/redexgen/X/M8;
    .locals 9

    .line 12524
    new-instance v2, Lcom/facebook/ads/redexgen/X/86;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v4, Lcom/facebook/ads/redexgen/X/SH;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/SH;-><init>()V

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    .line 12525
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A00()Lcom/facebook/ads/redexgen/X/bx;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v7, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    const/4 v0, 0x0

    new-instance v8, Lcom/facebook/ads/redexgen/X/ab;

    invoke-direct {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/ab;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/86;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/MZ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/M7;)V

    .line 12526
    return-object v2
.end method

.method private A09()Lcom/facebook/ads/redexgen/X/M8;
    .locals 9

    .line 12527
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Landroid/content/Intent;

    .line 12528
    const/16 v2, 0xe

    const/16 v1, 0x19

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4x;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/bt;

    .line 12529
    .local p0, "dataBundle":Lcom/facebook/ads/redexgen/X/bt;
    new-instance v2, Lcom/facebook/ads/redexgen/X/86;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v4, Lcom/facebook/ads/redexgen/X/SG;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/SG;-><init>()V

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v7, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    const/4 v0, 0x0

    new-instance v8, Lcom/facebook/ads/redexgen/X/Eh;

    invoke-direct {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/Eh;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/86;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/MZ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/M7;)V

    return-object v2
.end method

.method private A0A()Lcom/facebook/ads/redexgen/X/M8;
    .locals 9

    .line 12530
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Landroid/content/Intent;

    .line 12531
    const/16 v2, 0xe

    const/16 v1, 0x19

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4x;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/bt;

    .line 12532
    .local p0, "dataBundle":Lcom/facebook/ads/redexgen/X/bt;
    new-instance v2, Lcom/facebook/ads/redexgen/X/SK;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    const/4 v0, 0x0

    new-instance v5, Lcom/facebook/ads/redexgen/X/Eh;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Eh;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    .line 12533
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/16;->A0X()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/facebook/ads/redexgen/X/SG;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/SG;-><init>()V

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/SK;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/16;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MZ;)V

    .line 12534
    return-object v2
.end method

.method private A0B(Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/M8;
    .locals 7

    .line 12535
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v5, Lcom/facebook/ads/redexgen/X/aa;

    invoke-direct {v5, p0}, Lcom/facebook/ads/redexgen/X/aa;-><init>(Lcom/facebook/ads/redexgen/X/4x;)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/50;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/ab;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/ab;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    new-instance v4, Lcom/facebook/ads/redexgen/X/SI;

    invoke-direct {v4, v6, v5, v3, v0}, Lcom/facebook/ads/redexgen/X/SI;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;)V

    .line 12536
    .local p0, "videoInterstitialView":Lcom/facebook/ads/redexgen/X/SI;
    invoke-virtual {v4, p1}, Lcom/facebook/ads/redexgen/X/SI;->A05(Landroid/view/View;)V

    .line 12537
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Landroid/content/Intent;

    .line 12538
    const/16 v2, 0x27

    const/16 v1, 0x1b

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4x;->A0M(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xc8

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 12539
    .local p1, "videoProgressReportIntervalMs":I
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/SI;->A04(I)V

    .line 12540
    const/high16 v0, -0x1000000

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 12541
    return-object v4
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/M8;
    .locals 0

    .line 12542
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A07()Lcom/facebook/ads/redexgen/X/M8;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/M8;
    .locals 0

    .line 12543
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A03()Lcom/facebook/ads/redexgen/X/M8;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/M8;
    .locals 0

    .line 12544
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A04()Lcom/facebook/ads/redexgen/X/M8;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/M8;
    .locals 0

    .line 12545
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A09()Lcom/facebook/ads/redexgen/X/M8;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/M8;
    .locals 0

    .line 12546
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A0A()Lcom/facebook/ads/redexgen/X/M8;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/M8;
    .locals 0

    .line 12547
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A02()Lcom/facebook/ads/redexgen/X/M8;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/M8;
    .locals 0

    .line 12548
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A08()Lcom/facebook/ads/redexgen/X/M8;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/M8;
    .locals 0

    .line 12549
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A06()Lcom/facebook/ads/redexgen/X/M8;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/M8;
    .locals 0

    .line 12550
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A05()Lcom/facebook/ads/redexgen/X/M8;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/4x;Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/M8;
    .locals 0

    .line 12551
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4x;->A0B(Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/M8;

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

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x21

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
        -0xet
        -0xbt
        -0x10t
        -0xbt
        -0xet
        0x5t
        -0xet
        -0x10t
        -0xdt
        0x6t
        -0x1t
        -0xbt
        -0x3t
        -0xat
        -0x3at
        -0x47t
        -0x35t
        -0x4bt
        -0x3at
        -0x48t
        -0x47t
        -0x48t
        -0x56t
        -0x43t
        -0x48t
        -0x47t
        -0x3dt
        -0x6bt
        -0x48t
        -0x68t
        -0x4bt
        -0x38t
        -0x4bt
        -0x6at
        -0x37t
        -0x3et
        -0x48t
        -0x40t
        -0x47t
        -0x44t
        -0x51t
        -0x56t
        -0x55t
        -0x4bt
        -0x5bt
        -0x46t
        -0x51t
        -0x4dt
        -0x55t
        -0x5bt
        -0x4at
        -0x4bt
        -0x4et
        -0x4et
        -0x51t
        -0x4ct
        -0x53t
        -0x5bt
        -0x51t
        -0x4ct
        -0x46t
        -0x55t
        -0x48t
        -0x44t
        -0x59t
        -0x4et
    .end array-data
.end method
