.class public final Lcom/facebook/ads/redexgen/X/Hw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Pl;


# instance fields
.field public A00:Landroid/graphics/drawable/TransitionDrawable;

.field public A01:Landroid/graphics/drawable/TransitionDrawable;

.field public A02:Lcom/facebook/ads/redexgen/X/Pk;

.field public final A03:I

.field public final A04:Landroid/graphics/drawable/Drawable;

.field public final A05:Landroid/graphics/drawable/Drawable;

.field public final A06:Landroid/os/Handler;

.field public final A07:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 37096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37097
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A06:Landroid/os/Handler;

    .line 37098
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A05:Lcom/facebook/ads/redexgen/X/Pk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A02:Lcom/facebook/ads/redexgen/X/Pk;

    .line 37099
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Hw;->A03:I

    .line 37100
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hw;->A07:Landroid/view/View;

    .line 37101
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Hw;->A05:Landroid/graphics/drawable/Drawable;

    .line 37102
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Hw;->A04:Landroid/graphics/drawable/Drawable;

    .line 37103
    const/4 v4, 0x2

    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object p3, v1, v3

    const/4 v2, 0x1

    aput-object p4, v1, v2

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A01:Landroid/graphics/drawable/TransitionDrawable;

    .line 37104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 37105
    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    aput-object p4, v1, v3

    aput-object p3, v1, v2

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A00:Landroid/graphics/drawable/TransitionDrawable;

    .line 37106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A00:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 37107
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hw;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0X(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 37108
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Hw;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 37109
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A04:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Hw;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 37110
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A05:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Hw;)Landroid/view/View;
    .locals 0

    .line 37111
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A07:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Hw;Lcom/facebook/ads/redexgen/X/Pk;)Lcom/facebook/ads/redexgen/X/Pk;
    .locals 0

    .line 37112
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hw;->A02:Lcom/facebook/ads/redexgen/X/Pk;

    return-object p1
.end method

.method private A04(Z)V
    .locals 4

    .line 37113
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hw;->A06:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 37114
    if-eqz p1, :cond_0

    .line 37115
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A06:Lcom/facebook/ads/redexgen/X/Pk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A02:Lcom/facebook/ads/redexgen/X/Pk;

    .line 37116
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hw;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A00:Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0X(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 37117
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hw;->A00:Landroid/graphics/drawable/TransitionDrawable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A03:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 37118
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Hw;->A06:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/I6;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/I6;-><init>(Lcom/facebook/ads/redexgen/X/Hw;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A03:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37119
    :goto_0
    return-void

    .line 37120
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hw;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A05:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0X(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 37121
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A05:Lcom/facebook/ads/redexgen/X/Pk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A02:Lcom/facebook/ads/redexgen/X/Pk;

    goto :goto_0
.end method

.method private A05(Z)V
    .locals 4

    .line 37122
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hw;->A06:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 37123
    if-eqz p1, :cond_0

    .line 37124
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A04:Lcom/facebook/ads/redexgen/X/Pk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A02:Lcom/facebook/ads/redexgen/X/Pk;

    .line 37125
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hw;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0X(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 37126
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hw;->A01:Landroid/graphics/drawable/TransitionDrawable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A03:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 37127
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Hw;->A06:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/I8;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/I8;-><init>(Lcom/facebook/ads/redexgen/X/Hw;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A03:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37128
    :goto_0
    return-void

    .line 37129
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hw;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A04:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0X(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 37130
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A03:Lcom/facebook/ads/redexgen/X/Pk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A02:Lcom/facebook/ads/redexgen/X/Pk;

    goto :goto_0
.end method


# virtual methods
.method public final A3P(ZZ)V
    .locals 0

    .line 37131
    if-eqz p2, :cond_0

    .line 37132
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hw;->A04(Z)V

    .line 37133
    :goto_0
    return-void

    .line 37134
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hw;->A05(Z)V

    goto :goto_0
.end method

.method public final A7G()Lcom/facebook/ads/redexgen/X/Pk;
    .locals 1

    .line 37135
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A02:Lcom/facebook/ads/redexgen/X/Pk;

    return-object v0
.end method

.method public final cancel()V
    .locals 2

    .line 37136
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hw;->A06:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 37137
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 37138
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A00:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 37139
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hw;->A02:Lcom/facebook/ads/redexgen/X/Pk;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A04:Lcom/facebook/ads/redexgen/X/Pk;

    if-ne v1, v0, :cond_0

    .line 37140
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A05:Lcom/facebook/ads/redexgen/X/Pk;

    .line 37141
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A02:Lcom/facebook/ads/redexgen/X/Pk;

    .line 37142
    return-void

    .line 37143
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A03:Lcom/facebook/ads/redexgen/X/Pk;

    goto :goto_0
.end method
