.class public final Lcom/facebook/ads/redexgen/X/Q2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/HK;->setFullScreen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/HK;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Q2;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HK;)V
    .locals 0

    .line 48821
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Q2;->A00:Lcom/facebook/ads/redexgen/X/HK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Bd4iK263MdiqVEckgiEcXaEaZ4uIweBG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Jp1QSGfkJ8Z9zXekFuJltl48GgKydEoc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "fEEbeUwQeH7COVlxXKNmLl1Z50afP2Mj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "r02s0ULWktGw0R0gNTqzpE9xc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "EB9Y4EIWcixhOmounHH1kGqbNZmcFzXh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JuYgfl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "oFT1QXZER3M49OH4cjLW2BEWWzLsdZXt"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "I5"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Q2;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 48822
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A00:Lcom/facebook/ads/redexgen/X/HK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HK;->A0B(Lcom/facebook/ads/redexgen/X/HK;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 48823
    return v3

    .line 48824
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A00:Lcom/facebook/ads/redexgen/X/HK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HK;->A01(Lcom/facebook/ads/redexgen/X/HK;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Q2;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Q2;->A01:[Ljava/lang/String;

    const-string v1, "zVWiAAuOepyWFcYkLQ4ZoGrmpQGPeEmc"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "wkRU6nfkZfVncc0k3MPDpaJGMcStJhoI"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_2

    .line 48825
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A00:Lcom/facebook/ads/redexgen/X/HK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HK;->A01(Lcom/facebook/ads/redexgen/X/HK;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48826
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A00:Lcom/facebook/ads/redexgen/X/HK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HK;->A01(Lcom/facebook/ads/redexgen/X/HK;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 48827
    :cond_2
    :goto_0
    return v3

    .line 48828
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A00:Lcom/facebook/ads/redexgen/X/HK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HK;->A01(Lcom/facebook/ads/redexgen/X/HK;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method
