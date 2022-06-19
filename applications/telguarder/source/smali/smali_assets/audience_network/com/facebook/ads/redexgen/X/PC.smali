.class public final Lcom/facebook/ads/redexgen/X/PC;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Oj;->AC8(Lcom/facebook/ads/redexgen/X/Q6;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Oj;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/Q6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Oj;Lcom/facebook/ads/redexgen/X/Q6;II)V
    .locals 0

    .line 47940
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/PC;->A03:Lcom/facebook/ads/redexgen/X/Q6;

    iput p3, p0, Lcom/facebook/ads/redexgen/X/PC;->A01:I

    iput p4, p0, Lcom/facebook/ads/redexgen/X/PC;->A00:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 47941
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PC;->A03:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A07:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_1

    .line 47942
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0n:Lcom/facebook/ads/redexgen/X/JJ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0M(Lcom/facebook/ads/redexgen/X/Oj;Lcom/facebook/ads/redexgen/X/JJ;)V

    .line 47943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A09(Lcom/facebook/ads/redexgen/X/Oj;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2w()V

    .line 47944
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0A(Lcom/facebook/ads/redexgen/X/Oj;)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oj;->A0D()Lcom/facebook/ads/redexgen/X/KL;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A02(Lcom/facebook/ads/redexgen/X/9E;)V

    .line 47945
    :cond_0
    :goto_0
    return-void

    .line 47946
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PC;->A03:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A03:Lcom/facebook/ads/redexgen/X/Q6;

    const/4 v3, 0x1

    if-ne v1, v0, :cond_2

    .line 47947
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0i:Lcom/facebook/ads/redexgen/X/JJ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0M(Lcom/facebook/ads/redexgen/X/Oj;Lcom/facebook/ads/redexgen/X/JJ;)V

    .line 47948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Oj;->A0S(Lcom/facebook/ads/redexgen/X/Oj;Z)Z

    .line 47949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0A(Lcom/facebook/ads/redexgen/X/Oj;)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oj;->A0B()Lcom/facebook/ads/redexgen/X/Kl;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A02(Lcom/facebook/ads/redexgen/X/9E;)V

    goto :goto_0

    .line 47950
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PC;->A03:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A06:Lcom/facebook/ads/redexgen/X/Q6;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_3

    .line 47951
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0h:Lcom/facebook/ads/redexgen/X/JJ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0M(Lcom/facebook/ads/redexgen/X/Oj;Lcom/facebook/ads/redexgen/X/JJ;)V

    .line 47952
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A09(Lcom/facebook/ads/redexgen/X/Oj;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2o()V

    .line 47953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Oj;->A0S(Lcom/facebook/ads/redexgen/X/Oj;Z)Z

    .line 47954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A08(Lcom/facebook/ads/redexgen/X/Oj;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 47955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0A(Lcom/facebook/ads/redexgen/X/Oj;)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/PC;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/7w;-><init>(II)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/9F;->A02(Lcom/facebook/ads/redexgen/X/9E;)V

    goto :goto_0

    .line 47956
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PC;->A03:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A0A:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_5

    .line 47957
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A09(Lcom/facebook/ads/redexgen/X/Oj;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47958
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WN;->A02()Lcom/facebook/ads/redexgen/X/WN;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    .line 47959
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A09(Lcom/facebook/ads/redexgen/X/Oj;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A78(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/JO;

    .line 47960
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0l:Lcom/facebook/ads/redexgen/X/JJ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0M(Lcom/facebook/ads/redexgen/X/Oj;Lcom/facebook/ads/redexgen/X/JJ;)V

    .line 47961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A09(Lcom/facebook/ads/redexgen/X/Oj;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A33()V

    .line 47962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0A(Lcom/facebook/ads/redexgen/X/Oj;)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oj;->A0C()Lcom/facebook/ads/redexgen/X/KP;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A02(Lcom/facebook/ads/redexgen/X/9E;)V

    .line 47963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A08(Lcom/facebook/ads/redexgen/X/Oj;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 47964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0L(Lcom/facebook/ads/redexgen/X/Oj;)V

    goto/16 :goto_0

    .line 47965
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PC;->A03:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A05:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_6

    .line 47966
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0k:Lcom/facebook/ads/redexgen/X/JJ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0M(Lcom/facebook/ads/redexgen/X/Oj;Lcom/facebook/ads/redexgen/X/JJ;)V

    .line 47967
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A09(Lcom/facebook/ads/redexgen/X/Oj;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2s()V

    .line 47968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0A(Lcom/facebook/ads/redexgen/X/Oj;)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/PC;->A00:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/7v;-><init>(I)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/9F;->A02(Lcom/facebook/ads/redexgen/X/9E;)V

    .line 47969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A08(Lcom/facebook/ads/redexgen/X/Oj;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 47970
    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PC;->A03:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_7

    .line 47971
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0j:Lcom/facebook/ads/redexgen/X/JJ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0M(Lcom/facebook/ads/redexgen/X/Oj;Lcom/facebook/ads/redexgen/X/JJ;)V

    .line 47972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A09(Lcom/facebook/ads/redexgen/X/Oj;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2p()V

    .line 47973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0A(Lcom/facebook/ads/redexgen/X/Oj;)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oj;->A0F()Lcom/facebook/ads/redexgen/X/K5;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A02(Lcom/facebook/ads/redexgen/X/9E;)V

    .line 47974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A08(Lcom/facebook/ads/redexgen/X/Oj;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 47975
    :cond_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PC;->A03:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A09:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_0

    .line 47976
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0h:Lcom/facebook/ads/redexgen/X/JJ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0M(Lcom/facebook/ads/redexgen/X/Oj;Lcom/facebook/ads/redexgen/X/JJ;)V

    .line 47977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A09(Lcom/facebook/ads/redexgen/X/Oj;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2y()V

    .line 47978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Oj;->A0S(Lcom/facebook/ads/redexgen/X/Oj;Z)Z

    .line 47979
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A08(Lcom/facebook/ads/redexgen/X/Oj;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 47980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PC;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0A(Lcom/facebook/ads/redexgen/X/Oj;)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/PC;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/PC;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/7w;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/9F;->A02(Lcom/facebook/ads/redexgen/X/9E;)V

    goto/16 :goto_0
.end method
