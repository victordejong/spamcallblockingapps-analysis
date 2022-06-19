.class public final Lcom/facebook/ads/redexgen/X/NP;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/S1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdWebViewInterface"
.end annotation


# static fields
.field public static A07:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/0R;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/NQ;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Q9;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/S1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/NP;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/S1;Lcom/facebook/ads/redexgen/X/NQ;Lcom/facebook/ads/redexgen/X/Q9;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 2

    .line 45108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45109
    const-class v0, Lcom/facebook/ads/redexgen/X/NP;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NP;->A00:Ljava/lang/String;

    .line 45110
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NP;->A06:Ljava/lang/ref/WeakReference;

    .line 45111
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NP;->A04:Ljava/lang/ref/WeakReference;

    .line 45112
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NP;->A05:Ljava/lang/ref/WeakReference;

    .line 45113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NP;->A01:Ljava/lang/ref/WeakReference;

    .line 45114
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NP;->A02:Ljava/lang/ref/WeakReference;

    .line 45115
    invoke-virtual {p6}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NP;->A03:Ljava/lang/ref/WeakReference;

    .line 45116
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/0R;
    .locals 1

    .line 45117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NP;->A03:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/0R;

    .line 45118
    .local p0, "funnel":Lcom/facebook/ads/redexgen/X/0R;
    if-nez v0, :cond_0

    .line 45119
    new-instance v0, Lcom/facebook/ads/redexgen/X/cL;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/cL;-><init>()V

    .line 45120
    :cond_0
    return-object v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "MaUhfef1XHChQSOAsPU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "01oMUC4JT554rhL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "9TYVZPZrh7WqyaB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ShOi1FYvFM9bF84GqYiu0GZZ4HOF35Af"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "s"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YvdeaQsxQHJ3CZVDgFIjqRdATcpqYXuO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "b384kAccrLIUxrnk6NdGu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "f4PnsWwvvRSNWXAtteJ0H"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/NP;->A07:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public alert(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 45121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NP;->A00:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45122
    return-void
.end method

.method public getAnalogInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 45123
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8n;->A02()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LI;->A01(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logFunnel(ILjava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 45124
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NP;->A00()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/0R;->AEZ(ILjava/lang/String;)V

    .line 45125
    return-void
.end method

.method public onMainAssetLoaded()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 45126
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NP;->A00()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->AEa()V

    .line 45127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NP;->A06:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NP;->A01:Ljava/lang/ref/WeakReference;

    .line 45128
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NP;->A02:Ljava/lang/ref/WeakReference;

    .line 45129
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 45130
    :cond_0
    return-void

    .line 45131
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NP;->A02:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45132
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NP;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 45133
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NP;->A00()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->AEb()V

    .line 45134
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NP;->A06:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S1;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45135
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NP;->A00()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->AEc()V

    .line 45136
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NP;->A05:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/facebook/ads/redexgen/X/S3;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/S3;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 45137
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45138
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NP;->A04:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/NQ;

    .line 45139
    .local p0, "listener":Lcom/facebook/ads/redexgen/X/NQ;
    if-eqz v2, :cond_3

    .line 45140
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/NO;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/NO;-><init>(Lcom/facebook/ads/redexgen/X/NP;Lcom/facebook/ads/redexgen/X/NQ;)V

    .line 45141
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45142
    .end local p0    # "listener":Lcom/facebook/ads/redexgen/X/NQ;
    :cond_3
    return-void
.end method

.method public onPageInitialized()V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 45143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NP;->A06:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/S1;

    .line 45144
    .local p0, "webView":Lcom/facebook/ads/redexgen/X/S1;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A06()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45145
    .end local v0
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NP;->A00()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->AEd(Z)V

    .line 45146
    return-void

    .line 45147
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NP;->A04:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/NQ;

    .line 45148
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/NQ;
    if-eqz v5, :cond_2

    .line 45149
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NP;->A00()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/NP;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/NP;->A07:[Ljava/lang/String;

    const-string v1, "MExJxptNjWm815DyzsGP1"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/0R;->AEd(Z)V

    .line 45150
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/NQ;->AB0()V

    .line 45151
    :goto_0
    return-void

    .line 45152
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NP;->A00()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->AEd(Z)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
