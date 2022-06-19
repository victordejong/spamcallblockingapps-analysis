.class public final Lcom/facebook/ads/redexgen/X/PT;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/PD;->AC8(Lcom/facebook/ads/redexgen/X/QB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/PD;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/QB;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/PT;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PD;Lcom/facebook/ads/redexgen/X/QB;II)V
    .locals 0

    .line 48096
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/PT;->A03:Lcom/facebook/ads/redexgen/X/QB;

    iput p3, p0, Lcom/facebook/ads/redexgen/X/PT;->A01:I

    iput p4, p0, Lcom/facebook/ads/redexgen/X/PT;->A00:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pUIboC8CwdUMtM1tPR8iEtPz8p"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ladzvmq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gZiIZXhhpFNWaRiPv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vQtAVDGFp8M"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7j30UYRlUEXcM4Kd2wK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XchzO9Mtzl1GyvdPdWlZd1J0iwZmFx3H"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VTwPVxpRcW0"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YPnzN72MuP4y3lnuBhqZ0NoSyY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/PT;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 7

    .line 48097
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A03:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A07:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_1

    .line 48098
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A0m:Lcom/facebook/ads/redexgen/X/JI;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0L(Lcom/facebook/ads/redexgen/X/PD;Lcom/facebook/ads/redexgen/X/JI;)V

    .line 48099
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A08(Lcom/facebook/ads/redexgen/X/PD;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A30()V

    .line 48100
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A09(Lcom/facebook/ads/redexgen/X/PD;)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/PD;->A0C()Lcom/facebook/ads/redexgen/X/KN;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A03(Lcom/facebook/ads/redexgen/X/9E;)V

    .line 48101
    :cond_0
    :goto_0
    return-void

    .line 48102
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A03:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A03:Lcom/facebook/ads/redexgen/X/QB;

    const/4 v3, 0x1

    if-ne v1, v0, :cond_2

    .line 48103
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A0h:Lcom/facebook/ads/redexgen/X/JI;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0L(Lcom/facebook/ads/redexgen/X/PD;Lcom/facebook/ads/redexgen/X/JI;)V

    .line 48104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/PD;->A0R(Lcom/facebook/ads/redexgen/X/PD;Z)Z

    .line 48105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A09(Lcom/facebook/ads/redexgen/X/PD;)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/PD;->A0A()Lcom/facebook/ads/redexgen/X/Lb;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A03(Lcom/facebook/ads/redexgen/X/9E;)V

    goto :goto_0

    .line 48106
    :cond_2
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/PT;->A03:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v5, Lcom/facebook/ads/redexgen/X/QB;->A06:Lcom/facebook/ads/redexgen/X/QB;

    const/4 v2, 0x0

    sget-object v4, Lcom/facebook/ads/redexgen/X/PT;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v4, v0

    const/4 v0, 0x7

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/PT;->A04:[Ljava/lang/String;

    const-string v1, "Wlqb3PCyph61UkVVxo7ng7VZa1hYfmo4"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    if-ne v6, v5, :cond_4

    .line 48107
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A0g:Lcom/facebook/ads/redexgen/X/JI;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0L(Lcom/facebook/ads/redexgen/X/PD;Lcom/facebook/ads/redexgen/X/JI;)V

    .line 48108
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A08(Lcom/facebook/ads/redexgen/X/PD;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2s()V

    .line 48109
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/PD;->A0R(Lcom/facebook/ads/redexgen/X/PD;Z)Z

    .line 48110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A07(Lcom/facebook/ads/redexgen/X/PD;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 48111
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A09(Lcom/facebook/ads/redexgen/X/PD;)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/7w;-><init>(II)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/9F;->A03(Lcom/facebook/ads/redexgen/X/9E;)V

    goto :goto_0

    .line 48112
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A03:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A0A:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_5

    .line 48113
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A0k:Lcom/facebook/ads/redexgen/X/JI;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0L(Lcom/facebook/ads/redexgen/X/PD;Lcom/facebook/ads/redexgen/X/JI;)V

    .line 48114
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A08(Lcom/facebook/ads/redexgen/X/PD;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A37()V

    .line 48115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A09(Lcom/facebook/ads/redexgen/X/PD;)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/PD;->A0B()Lcom/facebook/ads/redexgen/X/KU;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A03(Lcom/facebook/ads/redexgen/X/9E;)V

    .line 48116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A07(Lcom/facebook/ads/redexgen/X/PD;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 48117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A0K(Lcom/facebook/ads/redexgen/X/PD;)V

    goto/16 :goto_0

    .line 48118
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A03:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A05:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_6

    .line 48119
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A0j:Lcom/facebook/ads/redexgen/X/JI;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0L(Lcom/facebook/ads/redexgen/X/PD;Lcom/facebook/ads/redexgen/X/JI;)V

    .line 48120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A08(Lcom/facebook/ads/redexgen/X/PD;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2w()V

    .line 48121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A09(Lcom/facebook/ads/redexgen/X/PD;)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A00:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/7v;-><init>(I)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/9F;->A03(Lcom/facebook/ads/redexgen/X/9E;)V

    .line 48122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A07(Lcom/facebook/ads/redexgen/X/PD;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 48123
    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A03:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_7

    .line 48124
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A0i:Lcom/facebook/ads/redexgen/X/JI;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0L(Lcom/facebook/ads/redexgen/X/PD;Lcom/facebook/ads/redexgen/X/JI;)V

    .line 48125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A08(Lcom/facebook/ads/redexgen/X/PD;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2t()V

    .line 48126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A09(Lcom/facebook/ads/redexgen/X/PD;)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/PD;->A0E()Lcom/facebook/ads/redexgen/X/K5;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A03(Lcom/facebook/ads/redexgen/X/9E;)V

    .line 48127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A07(Lcom/facebook/ads/redexgen/X/PD;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 48128
    :cond_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A03:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A09:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_0

    .line 48129
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A0g:Lcom/facebook/ads/redexgen/X/JI;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0L(Lcom/facebook/ads/redexgen/X/PD;Lcom/facebook/ads/redexgen/X/JI;)V

    .line 48130
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A08(Lcom/facebook/ads/redexgen/X/PD;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A32()V

    .line 48131
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/PD;->A0R(Lcom/facebook/ads/redexgen/X/PD;Z)Z

    .line 48132
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A07(Lcom/facebook/ads/redexgen/X/PD;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 48133
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A09(Lcom/facebook/ads/redexgen/X/PD;)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/PT;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/7w;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/9F;->A03(Lcom/facebook/ads/redexgen/X/9E;)V

    goto/16 :goto_0
.end method
