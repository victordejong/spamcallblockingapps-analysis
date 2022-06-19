.class public final Lcom/facebook/ads/redexgen/X/Hq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Pg;


# instance fields
.field public A00:Landroid/graphics/drawable/TransitionDrawable;

.field public A01:Landroid/graphics/drawable/TransitionDrawable;

.field public A02:Lcom/facebook/ads/redexgen/X/Pf;

.field public final A03:I

.field public final A04:Landroid/graphics/drawable/Drawable;

.field public final A05:Landroid/graphics/drawable/Drawable;

.field public final A06:Landroid/os/Handler;

.field public final A07:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 37141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37142
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A06:Landroid/os/Handler;

    .line 37143
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A04:Lcom/facebook/ads/redexgen/X/Pf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    .line 37144
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Hq;->A03:I

    .line 37145
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hq;->A07:Landroid/view/View;

    .line 37146
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Hq;->A05:Landroid/graphics/drawable/Drawable;

    .line 37147
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Hq;->A04:Landroid/graphics/drawable/Drawable;

    .line 37148
    const/4 v4, 0x2

    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object p3, v1, v3

    const/4 v2, 0x1

    aput-object p4, v1, v2

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A01:Landroid/graphics/drawable/TransitionDrawable;

    .line 37149
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 37150
    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    aput-object p4, v1, v3

    aput-object p3, v1, v2

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A00:Landroid/graphics/drawable/TransitionDrawable;

    .line 37151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A00:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 37152
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hq;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0U(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 37153
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Hq;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 37154
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A04:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Hq;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 37155
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A05:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Hq;)Landroid/view/View;
    .locals 0

    .line 37156
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A07:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/Pf;)Lcom/facebook/ads/redexgen/X/Pf;
    .locals 0

    .line 37157
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hq;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    return-object p1
.end method

.method private A04(Z)V
    .locals 4

    .line 37158
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hq;->A06:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 37159
    if-eqz p1, :cond_0

    .line 37160
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A05:Lcom/facebook/ads/redexgen/X/Pf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    .line 37161
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hq;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A00:Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0U(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 37162
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hq;->A00:Landroid/graphics/drawable/TransitionDrawable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A03:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 37163
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Hq;->A06:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Hv;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/Hv;-><init>(Lcom/facebook/ads/redexgen/X/Hq;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A03:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37164
    :goto_0
    return-void

    .line 37165
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hq;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A05:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0U(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 37166
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A04:Lcom/facebook/ads/redexgen/X/Pf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    goto :goto_0
.end method

.method private A05(Z)V
    .locals 4

    .line 37167
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hq;->A06:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 37168
    if-eqz p1, :cond_0

    .line 37169
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A03:Lcom/facebook/ads/redexgen/X/Pf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    .line 37170
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hq;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0U(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 37171
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hq;->A01:Landroid/graphics/drawable/TransitionDrawable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A03:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 37172
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Hq;->A06:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Hw;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/Hw;-><init>(Lcom/facebook/ads/redexgen/X/Hq;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A03:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37173
    :goto_0
    return-void

    .line 37174
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hq;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A04:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0U(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 37175
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    goto :goto_0
.end method


# virtual methods
.method public final A3L(ZZ)V
    .locals 0

    .line 37176
    if-eqz p2, :cond_0

    .line 37177
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hq;->A04(Z)V

    .line 37178
    :goto_0
    return-void

    .line 37179
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hq;->A05(Z)V

    goto :goto_0
.end method

.method public final A7I()Lcom/facebook/ads/redexgen/X/Pf;
    .locals 1

    .line 37180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    return-object v0
.end method

.method public final cancel()V
    .locals 2

    .line 37181
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hq;->A06:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 37182
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 37183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A00:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 37184
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hq;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A03:Lcom/facebook/ads/redexgen/X/Pf;

    if-ne v1, v0, :cond_0

    .line 37185
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A04:Lcom/facebook/ads/redexgen/X/Pf;

    .line 37186
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    .line 37187
    return-void

    .line 37188
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    goto :goto_0
.end method
