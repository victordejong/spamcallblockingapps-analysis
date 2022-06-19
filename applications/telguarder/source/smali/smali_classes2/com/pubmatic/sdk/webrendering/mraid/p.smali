.class Lcom/pubmatic/sdk/webrendering/mraid/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/webrendering/mraid/o;
.implements Lcom/pubmatic/sdk/webrendering/ui/POBAdVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/webrendering/mraid/p$i;,
        Lcom/pubmatic/sdk/webrendering/mraid/p$h;
    }
.end annotation


# instance fields
.field private final a:Lcom/pubmatic/sdk/webrendering/mraid/n;

.field private final b:Ljava/lang/String;

.field private c:Lcom/pubmatic/sdk/webrendering/mraid/n;

.field private d:Lcom/pubmatic/sdk/webrendering/mraid/p$i;

.field private e:Lcom/pubmatic/sdk/webrendering/mraid/q;

.field private f:Lcom/pubmatic/sdk/webrendering/mraid/c$a;

.field private g:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private h:Landroid/view/ViewGroup;

.field private i:Lcom/pubmatic/sdk/webrendering/mraid/t;

.field private j:Z

.field private k:Z

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:I

.field private o:I

.field private p:F

.field private q:Landroid/content/Context;

.field private r:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

.field private s:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/pubmatic/sdk/common/utility/POBLocationDetector;

.field private u:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/pubmatic/sdk/webrendering/mraid/n;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iput-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iput p4, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->u:I

    iput-object p3, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->b:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/o;)V

    iget-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iget-object p2, p2, Lcom/pubmatic/sdk/webrendering/mraid/n;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->j:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->q:Landroid/content/Context;

    invoke-static {p1}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getLocationDetector(Landroid/content/Context;)Lcom/pubmatic/sdk/common/utility/POBLocationDetector;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->t:Lcom/pubmatic/sdk/common/utility/POBLocationDetector;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->l:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/webrendering/mraid/p;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->q:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/pubmatic/sdk/webrendering/mraid/p;Lcom/pubmatic/sdk/webrendering/mraid/n;)Lcom/pubmatic/sdk/webrendering/mraid/n;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    return-object p1
.end method

.method private a(Landroid/content/Context;)Ljava/lang/Double;
    .locals 0

    invoke-static {p1}, Lcom/pubmatic/sdk/webrendering/mraid/c;->d(Landroid/content/Context;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const-string v0, "none"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "default forceOrientation :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "POBMraidController"

    invoke-static {v0, p1, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_1
    return-void
.end method

.method private a(Landroid/app/Activity;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;IIIIZ)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->b()Lcom/pubmatic/sdk/webrendering/mraid/b;

    move-result-object v1

    sget-object v2, Lcom/pubmatic/sdk/webrendering/mraid/b;->b:Lcom/pubmatic/sdk/webrendering/mraid/b;

    const-string v3, "resize"

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->b()Lcom/pubmatic/sdk/webrendering/mraid/b;

    move-result-object v1

    sget-object v2, Lcom/pubmatic/sdk/webrendering/mraid/b;->e:Lcom/pubmatic/sdk/webrendering/mraid/b;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is already open in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-virtual {v5}, Lcom/pubmatic/sdk/webrendering/mraid/n;->b()Lcom/pubmatic/sdk/webrendering/mraid/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pubmatic/sdk/webrendering/mraid/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " state!"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "POBMraidController"

    invoke-static {v6, v1, v4}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/webrendering/mraid/n;->b()Lcom/pubmatic/sdk/webrendering/mraid/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pubmatic/sdk/webrendering/mraid/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iget-object v1, v1, Lcom/pubmatic/sdk/webrendering/mraid/n;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getViewXYPosition(Landroid/view/View;)[I

    move-result-object v1

    aget v6, v1, v4

    const/4 v2, 0x1

    aget v7, v1, v2

    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->b()Lcom/pubmatic/sdk/webrendering/mraid/b;

    move-result-object v1

    sget-object v2, Lcom/pubmatic/sdk/webrendering/mraid/b;->b:Lcom/pubmatic/sdk/webrendering/mraid/b;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iget-object v1, v1, Lcom/pubmatic/sdk/webrendering/mraid/n;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->n:I

    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iget-object v1, v1, Lcom/pubmatic/sdk/webrendering/mraid/n;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->o:I

    :cond_2
    new-instance v13, Lcom/pubmatic/sdk/webrendering/mraid/POBViewRect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v13

    move/from16 v8, p3

    move/from16 v9, p2

    invoke-direct/range {v5 .. v11}, Lcom/pubmatic/sdk/webrendering/mraid/POBViewRect;-><init>(IIIIZLjava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pubmatic/sdk/common/R$drawable;->close_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertPixelToDp(I)I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pubmatic/sdk/common/R$drawable;->close_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertPixelToDp(I)I

    move-result v15

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p6

    invoke-static/range {v8 .. v15}, Lcom/pubmatic/sdk/webrendering/mraid/m;->a(IIIIZLcom/pubmatic/sdk/webrendering/mraid/POBViewRect;II)Lcom/pubmatic/sdk/webrendering/mraid/POBViewRect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/webrendering/mraid/POBViewRect;->isStatus()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/pubmatic/sdk/webrendering/mraid/POBViewRect;->getxPosition()I

    move-result v10

    invoke-virtual {v1}, Lcom/pubmatic/sdk/webrendering/mraid/POBViewRect;->getyPosition()I

    move-result v11

    invoke-virtual {v1}, Lcom/pubmatic/sdk/webrendering/mraid/POBViewRect;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Lcom/pubmatic/sdk/webrendering/mraid/POBViewRect;->getHeight()I

    move-result v9

    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->i:Lcom/pubmatic/sdk/webrendering/mraid/t;

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iget-object v1, v1, Lcom/pubmatic/sdk/webrendering/mraid/n;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->h:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v2, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iget-object v2, v2, Lcom/pubmatic/sdk/webrendering/mraid/n;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    new-instance v1, Lcom/pubmatic/sdk/webrendering/mraid/t;

    iget-object v2, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->q:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/pubmatic/sdk/webrendering/mraid/t;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->i:Lcom/pubmatic/sdk/webrendering/mraid/t;

    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->h:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v5, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->i:Lcom/pubmatic/sdk/webrendering/mraid/t;

    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iget-object v7, v1, Lcom/pubmatic/sdk/webrendering/mraid/n;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    new-instance v12, Lcom/pubmatic/sdk/webrendering/mraid/p$d;

    invoke-direct {v12, v0}, Lcom/pubmatic/sdk/webrendering/mraid/p$d;-><init>(Lcom/pubmatic/sdk/webrendering/mraid/p;)V

    invoke-virtual/range {v5 .. v12}, Lcom/pubmatic/sdk/webrendering/mraid/t;->a(Landroid/view/ViewGroup;Lcom/pubmatic/sdk/webrendering/ui/POBWebView;IIIILcom/pubmatic/sdk/webrendering/mraid/t$d;)V

    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->i:Lcom/pubmatic/sdk/webrendering/mraid/t;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/webrendering/mraid/t;->d()V

    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->e:Lcom/pubmatic/sdk/webrendering/mraid/q;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->i:Lcom/pubmatic/sdk/webrendering/mraid/t;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/webrendering/mraid/t;->c()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->e:Lcom/pubmatic/sdk/webrendering/mraid/q;

    iget-object v2, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->i:Lcom/pubmatic/sdk/webrendering/mraid/t;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/webrendering/mraid/t;->c()Landroid/widget/ImageView;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/pubmatic/sdk/webrendering/mraid/q;->onObstructionAdded(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/pubmatic/sdk/webrendering/mraid/t;->a(IIII)V

    :cond_5
    :goto_1
    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->b()Lcom/pubmatic/sdk/webrendering/mraid/b;

    move-result-object v1

    sget-object v2, Lcom/pubmatic/sdk/webrendering/mraid/b;->b:Lcom/pubmatic/sdk/webrendering/mraid/b;

    if-ne v1, v2, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->q()V

    :cond_6
    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    sget-object v2, Lcom/pubmatic/sdk/webrendering/mraid/b;->e:Lcom/pubmatic/sdk/webrendering/mraid/b;

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/b;)V

    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-virtual {v0, v1, v4}, Lcom/pubmatic/sdk/webrendering/mraid/p;->b(Lcom/pubmatic/sdk/webrendering/mraid/n;Z)V

    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iput-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    :goto_2
    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->e:Lcom/pubmatic/sdk/webrendering/mraid/q;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->i:Lcom/pubmatic/sdk/webrendering/mraid/t;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/pubmatic/sdk/webrendering/mraid/t;->c()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->e:Lcom/pubmatic/sdk/webrendering/mraid/q;

    iget-object v2, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->i:Lcom/pubmatic/sdk/webrendering/mraid/t;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/webrendering/mraid/t;->c()Landroid/widget/ImageView;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/pubmatic/sdk/webrendering/mraid/q;->onObstructionAdded(Landroid/view/View;)V

    :cond_7
    return-void

    :cond_8
    iget-object v2, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iget-object v1, v1, Lcom/pubmatic/sdk/webrendering/mraid/POBViewRect;->b:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/webrendering/mraid/p;Ljava/lang/Double;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Ljava/lang/Double;)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/webrendering/mraid/p;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Z)V

    return-void
.end method

.method private a(Lcom/pubmatic/sdk/webrendering/ui/POBWebView;Lcom/pubmatic/sdk/webrendering/mraid/n;)V
    .locals 4

    iget v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->n:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->n:I

    :cond_0
    iget v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->o:I

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->o:I

    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    new-instance v1, Lcom/pubmatic/sdk/webrendering/mraid/p$e;

    invoke-direct {v1, p0, p1, v0}, Lcom/pubmatic/sdk/webrendering/mraid/p$e;-><init>(Lcom/pubmatic/sdk/webrendering/mraid/p;Lcom/pubmatic/sdk/webrendering/ui/POBWebView;Landroid/view/ViewGroup;)V

    new-instance v0, Lcom/pubmatic/sdk/webrendering/ui/POBMraidViewContainer;

    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->q:Landroid/content/Context;

    iget v3, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->u:I

    invoke-direct {v0, v2, p1, v3}, Lcom/pubmatic/sdk/webrendering/ui/POBMraidViewContainer;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    new-instance v2, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig;

    invoke-direct {v2, v0, v1}, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig;-><init>(Landroid/view/View;Lcom/pubmatic/sdk/common/ui/POBFullScreenActivityListener;)V

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getAdViewCacheService()Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService;

    move-result-object v1

    iget v3, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->u:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService;->storeAdView(Ljava/lang/Integer;Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->u:I

    const-string v3, "RendererIdentifier"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->l:Ljava/util/Map;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->l:Ljava/util/Map;

    const-string v3, "forceOrientation"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v3, "landscape"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    :goto_0
    const-string v3, "RequestedOrientation"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->l:Ljava/util/Map;

    const-string v3, "allowOrientationChange"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "AllowOrientation"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_5
    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->q:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->i:Lcom/pubmatic/sdk/webrendering/mraid/t;

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/webrendering/mraid/t;->a(Z)V

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->i:Lcom/pubmatic/sdk/webrendering/mraid/t;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/webrendering/mraid/t;->a()V

    :cond_6
    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->b()Lcom/pubmatic/sdk/webrendering/mraid/b;

    move-result-object v1

    sget-object v2, Lcom/pubmatic/sdk/webrendering/mraid/b;->b:Lcom/pubmatic/sdk/webrendering/mraid/b;

    if-ne v1, v2, :cond_7

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->q()V

    :cond_7
    sget-object v1, Lcom/pubmatic/sdk/webrendering/mraid/b;->d:Lcom/pubmatic/sdk/webrendering/mraid/b;

    invoke-virtual {p2, v1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/b;)V

    iget-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->e:Lcom/pubmatic/sdk/webrendering/mraid/q;

    if-eqz p2, :cond_8

    invoke-interface {p2, p1}, Lcom/pubmatic/sdk/webrendering/mraid/q;->onAdViewChanged(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/pubmatic/sdk/webrendering/ui/POBMraidViewContainer;->getCloseBtn()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->e:Lcom/pubmatic/sdk/webrendering/mraid/q;

    invoke-interface {p2, p1}, Lcom/pubmatic/sdk/webrendering/mraid/q;->onObstructionAdded(Landroid/view/View;)V

    :cond_8
    return-void
.end method

.method private a(Ljava/lang/Double;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/Double;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/Double;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->m:Z

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;->createInstance(Landroid/content/Context;)Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v2, Lcom/pubmatic/sdk/webrendering/mraid/p$i;

    invoke-direct {v2}, Lcom/pubmatic/sdk/webrendering/mraid/p$i;-><init>()V

    iput-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->d:Lcom/pubmatic/sdk/webrendering/mraid/p$i;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, v1}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Landroid/webkit/WebView;)V

    new-instance v2, Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-direct {v2, v1}, Lcom/pubmatic/sdk/webrendering/mraid/n;-><init>(Lcom/pubmatic/sdk/webrendering/ui/POBWebView;)V

    invoke-virtual {p0, v2, v0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Lcom/pubmatic/sdk/webrendering/mraid/n;Z)V

    invoke-virtual {v2, p0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/o;)V

    new-instance v0, Lcom/pubmatic/sdk/webrendering/mraid/p$f;

    invoke-direct {v0, p0, v2, v1}, Lcom/pubmatic/sdk/webrendering/mraid/p$f;-><init>(Lcom/pubmatic/sdk/webrendering/mraid/p;Lcom/pubmatic/sdk/webrendering/mraid/n;Lcom/pubmatic/sdk/webrendering/ui/POBWebView;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-direct {p0, v1, v2}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Lcom/pubmatic/sdk/webrendering/ui/POBWebView;Lcom/pubmatic/sdk/webrendering/mraid/n;)V

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "POBMraidController"

    const-string v1, "Unable to render two-part expand, as webview is not available"

    invoke-static {v0, v1, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    const-string v0, "Unable to render two-part expand."

    const-string v1, "expand"

    invoke-virtual {p1, v0, v1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Z)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {v0, v0, v0, v0}, Lcom/pubmatic/sdk/webrendering/mraid/m;->a(IIII)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iget-object v1, v1, Lcom/pubmatic/sdk/webrendering/mraid/n;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    mul-int v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iget-object v2, v2, Lcom/pubmatic/sdk/webrendering/mraid/n;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iget-object v3, v3, Lcom/pubmatic/sdk/webrendering/mraid/n;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getWidth()I

    move-result v3

    mul-int v2, v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertPixelToDp(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertPixelToDp(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertPixelToDp(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {p1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertPixelToDp(I)I

    move-result p1

    invoke-static {v2, v3, v4, p1}, Lcom/pubmatic/sdk/webrendering/mraid/m;->a(IIII)Lorg/json/JSONObject;

    move-result-object p1

    :goto_0
    iget v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->p:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iput v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->p:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visible percentage :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "POBMraidController"

    invoke-static {v2, v1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iget v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->p:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/Float;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/pubmatic/sdk/webrendering/mraid/p;)Lcom/pubmatic/sdk/webrendering/mraid/n;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    return-object p0
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getDeviceOrientation(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "sensor_landscape"

    return-object p1

    :cond_0
    const-string p1, "portrait"

    return-object p1
.end method

.method static synthetic b(Lcom/pubmatic/sdk/webrendering/mraid/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->m:Z

    return p1
.end method

.method static synthetic c(Lcom/pubmatic/sdk/webrendering/mraid/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->j()V

    return-void
.end method

.method private c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->j:Z

    return v0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->f:Lcom/pubmatic/sdk/webrendering/mraid/c$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/pubmatic/sdk/webrendering/mraid/p$b;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/webrendering/mraid/p$b;-><init>(Lcom/pubmatic/sdk/webrendering/mraid/p;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->f:Lcom/pubmatic/sdk/webrendering/mraid/c$a;

    :cond_0
    invoke-static {}, Lcom/pubmatic/sdk/webrendering/mraid/c;->a()Lcom/pubmatic/sdk/webrendering/mraid/c;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->q:Landroid/content/Context;

    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->f:Lcom/pubmatic/sdk/webrendering/mraid/c$a;

    invoke-virtual {v0, v1, v2}, Lcom/pubmatic/sdk/webrendering/mraid/c;->a(Landroid/content/Context;Lcom/pubmatic/sdk/webrendering/mraid/c$a;)V

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->t()V

    return-void
.end method

.method static synthetic d(Lcom/pubmatic/sdk/webrendering/mraid/p;)Z
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->c()Z

    move-result p0

    return p0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->g:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/pubmatic/sdk/webrendering/mraid/p$c;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/webrendering/mraid/p$c;-><init>(Lcom/pubmatic/sdk/webrendering/mraid/p;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->g:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iget-object v0, v0, Lcom/pubmatic/sdk/webrendering/mraid/n;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->g:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Z)V

    return-void
.end method

.method static synthetic e(Lcom/pubmatic/sdk/webrendering/mraid/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->n()V

    return-void
.end method

.method static synthetic f(Lcom/pubmatic/sdk/webrendering/mraid/p;)I
    .locals 0

    iget p0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->n:I

    return p0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->h:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->n:I

    iget v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->o:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->h:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iget-object v2, v2, Lcom/pubmatic/sdk/webrendering/mraid/n;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->h:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iget-object v1, v1, Lcom/pubmatic/sdk/webrendering/mraid/n;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->n:I

    iput v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->o:I

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->e:Lcom/pubmatic/sdk/webrendering/mraid/q;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/pubmatic/sdk/webrendering/mraid/q;->onObstructionRemoved(Landroid/view/View;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->e:Lcom/pubmatic/sdk/webrendering/mraid/q;

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iget-object v1, v1, Lcom/pubmatic/sdk/webrendering/mraid/n;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/webrendering/mraid/q;->onAdViewChanged(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/pubmatic/sdk/webrendering/mraid/p;)I
    .locals 0

    iget p0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->o:I

    return p0
.end method

.method private g()V
    .locals 3

    sget-object v0, Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity$ACTIONS;->POB_CLOSE:Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity$ACTIONS;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->u:I

    const-string v2, "RendererIdentifier"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->q:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private h()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.pubmatic.sdk.webrendering.mraid.POBVideoPlayerActivity.finish"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->q:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic h(Lcom/pubmatic/sdk/webrendering/mraid/p;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->m:Z

    return p0
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->r:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "POBMraidController"

    invoke-virtual {v0, v2}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->cancelRequest(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->r:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    :cond_0
    iput-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->s:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;

    return-void
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->i:Lcom/pubmatic/sdk/webrendering/mraid/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/webrendering/mraid/t;->b()V

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->i:Lcom/pubmatic/sdk/webrendering/mraid/t;

    :cond_0
    return-void
.end method

.method private l()Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/pubmatic/sdk/webrendering/mraid/p$a;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/webrendering/mraid/p$a;-><init>(Lcom/pubmatic/sdk/webrendering/mraid/p;)V

    return-object v0
.end method

.method private m()Z
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private n()V
    .locals 2

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->k()V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->l:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    sget-object v1, Lcom/pubmatic/sdk/webrendering/mraid/b;->b:Lcom/pubmatic/sdk/webrendering/mraid/b;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/b;)V

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/webrendering/mraid/p;->b(Lcom/pubmatic/sdk/webrendering/mraid/n;Z)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/o;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Lcom/pubmatic/sdk/webrendering/mraid/n;Z)V

    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iput-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->p()V

    return-void
.end method

.method private o()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->e:Lcom/pubmatic/sdk/webrendering/mraid/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/webrendering/mraid/q;->onMRAIDAdClick()V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->e:Lcom/pubmatic/sdk/webrendering/mraid/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/webrendering/mraid/q;->onAdInteractionStopped()V

    :cond_0
    return-void
.end method

.method private q()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->e:Lcom/pubmatic/sdk/webrendering/mraid/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/webrendering/mraid/q;->onAdInteractionStarted()V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 3

    invoke-static {}, Lcom/pubmatic/sdk/webrendering/mraid/c;->a()Lcom/pubmatic/sdk/webrendering/mraid/c;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->q:Landroid/content/Context;

    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->f:Lcom/pubmatic/sdk/webrendering/mraid/c$a;

    invoke-virtual {v0, v1, v2}, Lcom/pubmatic/sdk/webrendering/mraid/c;->b(Landroid/content/Context;Lcom/pubmatic/sdk/webrendering/mraid/c$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->f:Lcom/pubmatic/sdk/webrendering/mraid/c$a;

    return-void
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->g:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iget-object v0, v0, Lcom/pubmatic/sdk/webrendering/mraid/n;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->g:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->g:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    :cond_0
    return-void
.end method

.method private t()V
    .locals 1

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->q:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Landroid/content/Context;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Ljava/lang/Double;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBMraidController"

    const-string v2, "Received MRAID close event"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->b:Ljava/lang/String;

    const-string v1, "inline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->b()Lcom/pubmatic/sdk/webrendering/mraid/b;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/webrendering/mraid/p$g;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->n()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->g()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->b:Ljava/lang/String;

    const-string v1, "interstitial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->e:Lcom/pubmatic/sdk/webrendering/mraid/q;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/pubmatic/sdk/webrendering/mraid/q;->onAdInteractionStopped()V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(IIIIZZ)V
    .locals 8

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->b:Ljava/lang/String;

    const-string v1, "inline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p6, :cond_0

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->o()V

    :cond_0
    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->q:Landroid/content/Context;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Landroid/content/Context;IIIIZ)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "POBMraidController"

    const-string p3, "Can\'t resize Interstitial ad."

    invoke-static {p2, p3, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    const-string p2, "Can\'t perform resize on Interstitial ad."

    const-string p3, "resize"

    invoke-virtual {p1, p2, p3}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method a(Landroid/webkit/WebView;)V
    .locals 2

    new-instance v0, Lcom/pubmatic/sdk/webrendering/mraid/p$h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pubmatic/sdk/webrendering/mraid/p$h;-><init>(Lcom/pubmatic/sdk/webrendering/mraid/p$a;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "POBMraidController"

    const-string v0, "Not able to add inline video support to WebView, %s"

    invoke-static {p1, v0, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method a(Lcom/pubmatic/sdk/webrendering/mraid/n;Z)V
    .locals 1

    new-instance v0, Lcom/pubmatic/sdk/webrendering/mraid/i;

    invoke-direct {v0}, Lcom/pubmatic/sdk/webrendering/mraid/i;-><init>()V

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/g;)V

    new-instance v0, Lcom/pubmatic/sdk/webrendering/mraid/f;

    invoke-direct {v0}, Lcom/pubmatic/sdk/webrendering/mraid/f;-><init>()V

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/g;)V

    new-instance v0, Lcom/pubmatic/sdk/webrendering/mraid/k;

    invoke-direct {v0}, Lcom/pubmatic/sdk/webrendering/mraid/k;-><init>()V

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/g;)V

    new-instance v0, Lcom/pubmatic/sdk/webrendering/mraid/l;

    invoke-direct {v0}, Lcom/pubmatic/sdk/webrendering/mraid/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/g;)V

    new-instance v0, Lcom/pubmatic/sdk/webrendering/mraid/e;

    invoke-direct {v0}, Lcom/pubmatic/sdk/webrendering/mraid/e;-><init>()V

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/g;)V

    new-instance v0, Lcom/pubmatic/sdk/webrendering/mraid/s;

    invoke-direct {v0}, Lcom/pubmatic/sdk/webrendering/mraid/s;-><init>()V

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/g;)V

    new-instance v0, Lcom/pubmatic/sdk/webrendering/mraid/d;

    invoke-direct {v0}, Lcom/pubmatic/sdk/webrendering/mraid/d;-><init>()V

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/g;)V

    new-instance v0, Lcom/pubmatic/sdk/webrendering/mraid/u;

    invoke-direct {v0}, Lcom/pubmatic/sdk/webrendering/mraid/u;-><init>()V

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/g;)V

    if-nez p2, :cond_0

    new-instance p2, Lcom/pubmatic/sdk/webrendering/mraid/h;

    invoke-direct {p2}, Lcom/pubmatic/sdk/webrendering/mraid/h;-><init>()V

    invoke-virtual {p1, p2}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/g;)V

    new-instance p2, Lcom/pubmatic/sdk/webrendering/mraid/j;

    invoke-direct {p2}, Lcom/pubmatic/sdk/webrendering/mraid/j;-><init>()V

    invoke-virtual {p1, p2}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/g;)V

    :cond_0
    return-void
.end method

.method a(Lcom/pubmatic/sdk/webrendering/mraid/q;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->e:Lcom/pubmatic/sdk/webrendering/mraid/q;

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string v0, "POBMraidController"

    const-string v1, "Received MRAID event to open url : %s"

    invoke-static {v0, v1, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->e:Lcom/pubmatic/sdk/webrendering/mraid/q;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/pubmatic/sdk/webrendering/mraid/q;->onOpen(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;Z)V
    .locals 8

    const-string v0, "createCalendarEvent"

    const-string v1, "POBMraidController"

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->o()V

    :cond_0
    const/4 p2, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    const-string v4, "event"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/pubmatic/sdk/webrendering/mraid/m;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "calendarParams :%s"

    :try_start_1
    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p2

    invoke-static {v1, v3, v4}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "vnd.android.cursor.item/event"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/Long;

    if-eqz v7, :cond_1

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const/high16 p1, 0x10000000

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->q:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->e:Lcom/pubmatic/sdk/webrendering/mraid/q;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/pubmatic/sdk/webrendering/mraid/q;->onLeavingApplication()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    iget-object v3, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Something went wrong."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p2

    const-string p1, "Something went wrong.%s"

    invoke-static {v1, p1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception p1

    iget-object v3, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing calendar event data."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p2

    const-string p1, "Error parsing calendar event data.%s"

    invoke-static {v1, p1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception p1

    iget-object v3, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device does not have calendar app."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p2

    const-string p1, "Device does not have calendar app.%s"

    invoke-static {v1, p1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(ZLjava/lang/String;Z)V
    .locals 4

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->o()V

    :cond_0
    iget-object p3, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->l:Ljava/util/Map;

    if-eqz p3, :cond_4

    const-string p3, "portrait"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "forceOrientation"

    if-nez v0, :cond_3

    const-string v0, "landscape"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->q:Landroid/content/Context;

    invoke-static {v2}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object p3, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->l:Ljava/util/Map;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->l:Ljava/util/Map;

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p3, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->l:Ljava/util/Map;

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object p3, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "allowOrientationChange"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object p3, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-virtual {p3}, Lcom/pubmatic/sdk/webrendering/mraid/n;->b()Lcom/pubmatic/sdk/webrendering/mraid/b;

    move-result-object p3

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->b:Ljava/lang/String;

    const-string v1, "inline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "POBMraidController"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/pubmatic/sdk/webrendering/mraid/b;->d:Lcom/pubmatic/sdk/webrendering/mraid/b;

    invoke-virtual {p3, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->b:Ljava/lang/String;

    const-string v3, "interstitial"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/pubmatic/sdk/webrendering/mraid/b;->b:Lcom/pubmatic/sdk/webrendering/mraid/b;

    invoke-virtual {p3, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setOrientation : allowOrientationChange :"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", forceOrientation:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p3, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iget-object p3, p3, Lcom/pubmatic/sdk/webrendering/mraid/n;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {p3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Landroid/content/MutableContextWrapper;

    invoke-virtual {p3}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p3

    instance-of v0, p3, Landroid/app/Activity;

    if-eqz v0, :cond_8

    check-cast p3, Landroid/app/Activity;

    invoke-direct {p0, p3, p2}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {p0, p3, p1}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Landroid/app/Activity;Z)V

    goto :goto_2

    :cond_7
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/pubmatic/sdk/webrendering/mraid/b;->a()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "Can\'t perform orientation properties. invalid MRAID state: %s"

    invoke-static {v1, p2, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "interstitial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "inline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBMraidController"

    const-string v2, "Can\'t perform unload as no specific placement type found."

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->e:Lcom/pubmatic/sdk/webrendering/mraid/q;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/pubmatic/sdk/webrendering/mraid/q;->onAdUnload()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method b(Lcom/pubmatic/sdk/webrendering/mraid/n;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    iget-object v1, v9, Lcom/pubmatic/sdk/webrendering/mraid/n;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getViewXYPosition(Landroid/view/View;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v10, v2, v3

    invoke-static {v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getViewXYPosition(Landroid/view/View;)[I

    move-result-object v2

    const/4 v11, 0x1

    aget v12, v2, v11

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v2}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertPixelToDp(I)I

    move-result v13

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertPixelToDp(I)I

    move-result v14

    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertPixelToDp(I)I

    move-result v15

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertPixelToDp(I)I

    move-result v8

    if-eqz p2, :cond_0

    invoke-virtual {v9, v15, v8}, Lcom/pubmatic/sdk/webrendering/mraid/n;->b(II)V

    invoke-virtual {v9, v10, v12, v13, v14}, Lcom/pubmatic/sdk/webrendering/mraid/n;->b(IIII)V

    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->b:Ljava/lang/String;

    invoke-virtual {v9, v1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->b(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/pubmatic/sdk/webrendering/mraid/m;->a(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/16 v16, 0x0

    move-object/from16 v1, p1

    move v2, v3

    move/from16 v17, v8

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(ZZZZZZZ)V

    iget-object v1, v0, Lcom/pubmatic/sdk/webrendering/mraid/p;->t:Lcom/pubmatic/sdk/common/utility/POBLocationDetector;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getLocation(Lcom/pubmatic/sdk/common/utility/POBLocationDetector;)Lcom/pubmatic/sdk/common/models/POBLocation;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/common/models/POBLocation;)V

    invoke-virtual/range {p1 .. p1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->b()Lcom/pubmatic/sdk/webrendering/mraid/b;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->b(Lcom/pubmatic/sdk/webrendering/mraid/b;)V

    sget-object v1, Lcom/pubmatic/sdk/webrendering/mraid/a;->b:Lcom/pubmatic/sdk/webrendering/mraid/a;

    invoke-virtual {v9, v1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/a;)V

    invoke-virtual {v9, v11}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Z)V

    move/from16 v1, v17

    goto :goto_0

    :cond_0
    move v1, v8

    :goto_0
    invoke-virtual {v9, v15, v1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(II)Z

    move-result v1

    invoke-virtual {v9, v10, v12, v13, v14}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(IIII)Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v9, v13, v14}, Lcom/pubmatic/sdk/webrendering/mraid/n;->c(II)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->b()Lcom/pubmatic/sdk/webrendering/mraid/b;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->b(Lcom/pubmatic/sdk/webrendering/mraid/b;)V

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "audioVolumeChange"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->d()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->r()V

    goto :goto_0

    :cond_1
    const-string v0, "exposureChange"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->e()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->s()V

    goto :goto_0

    :cond_3
    const-string v0, "viewableChange"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->k:Z

    goto :goto_0

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Listener change not found for command "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "POBMraidController"

    invoke-static {v0, p1, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->o()V

    :cond_0
    const-string p2, "storePicture"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    const-string v0, "Missing picture url."

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->q:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->r:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    if-nez p2, :cond_2

    new-instance p2, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->q:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->r:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    :cond_2
    iget-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->s:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;

    if-nez p2, :cond_3

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->l()Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;

    move-result-object p2

    iput-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->s:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;

    :cond_3
    new-instance p2, Lcom/pubmatic/sdk/common/network/POBImageRequest;

    invoke-direct {p2}, Lcom/pubmatic/sdk/common/network/POBImageRequest;-><init>()V

    invoke-virtual {p2, p1}, Lcom/pubmatic/sdk/common/network/POBImageRequest;->setUrl(Ljava/lang/String;)V

    const/16 p1, 0x1388

    invoke-virtual {p2, p1}, Lcom/pubmatic/sdk/common/network/POBImageRequest;->setTimeout(I)V

    const-string p1, "POBMraidController"

    invoke-virtual {p2, p1}, Lcom/pubmatic/sdk/common/network/POBImageRequest;->setRequestTag(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->r:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->s:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;

    invoke-virtual {p1, p2, v0}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->sendImageRequest(Lcom/pubmatic/sdk/common/network/POBImageRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    const-string v0, "App does not have WRITE_EXTERNAL_STORAGE permission to store the picture."

    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public d(Ljava/lang/String;Z)V
    .locals 4

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->o()V

    :cond_0
    invoke-static {p1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_5

    const/4 p2, 0x0

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->b:Ljava/lang/String;

    const-string v2, "interstitial"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->q:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/pubmatic/sdk/webrendering/mraid/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->l:Ljava/util/Map;

    if-eqz v1, :cond_3

    const-string v0, "forceOrientation"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->l:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->l:Ljava/util/Map;

    const-string v1, "allowOrientationChange"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_3
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->q:Landroid/content/Context;

    const-class v3, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_4

    const-string v2, "ForceOrientation"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "AllowOrientationChange"

    invoke-virtual {v1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    const-string p2, "URL"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->q:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "POBMraidController"

    const-string v0, "Can\'t launch video player due to invalid URL"

    invoke-static {p2, v0, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->b:Ljava/lang/String;

    const-string v1, "inline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->o()V

    :cond_0
    iget-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-virtual {p2}, Lcom/pubmatic/sdk/webrendering/mraid/n;->b()Lcom/pubmatic/sdk/webrendering/mraid/b;

    move-result-object p2

    sget-object v0, Lcom/pubmatic/sdk/webrendering/mraid/b;->b:Lcom/pubmatic/sdk/webrendering/mraid/b;

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-virtual {p2}, Lcom/pubmatic/sdk/webrendering/mraid/n;->b()Lcom/pubmatic/sdk/webrendering/mraid/b;

    move-result-object p2

    sget-object v0, Lcom/pubmatic/sdk/webrendering/mraid/b;->e:Lcom/pubmatic/sdk/webrendering/mraid/b;

    if-ne p2, v0, :cond_5

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iget-object p2, p1, Lcom/pubmatic/sdk/webrendering/mraid/n;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-direct {p0, p2, p1}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Lcom/pubmatic/sdk/webrendering/ui/POBWebView;Lcom/pubmatic/sdk/webrendering/mraid/n;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "POBMraidController"

    const-string v0, "Can\'t expand interstitial ad."

    invoke-static {p2, v0, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    const-string p2, "expand"

    invoke-virtual {p1, v0, p2}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public i()V
    .locals 3

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->r()V

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->s()V

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->j()V

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->k()V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->r:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "POBMraidController"

    invoke-virtual {v0, v2}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->cancelRequest(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->r:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    :cond_0
    iput-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->s:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->h()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->k:Z

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->a:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->b()Lcom/pubmatic/sdk/webrendering/mraid/b;

    move-result-object v0

    sget-object v2, Lcom/pubmatic/sdk/webrendering/mraid/b;->d:Lcom/pubmatic/sdk/webrendering/mraid/b;

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->g()V

    :cond_1
    iput-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->t:Lcom/pubmatic/sdk/common/utility/POBLocationDetector;

    iput-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->l:Ljava/util/Map;

    return-void
.end method

.method public isUserInteracted(Z)Z
    .locals 1

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->d:Lcom/pubmatic/sdk/webrendering/mraid/p$i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/webrendering/mraid/p$i;->a()Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->e:Lcom/pubmatic/sdk/webrendering/mraid/q;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/q;->isUserInteracted(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onVisibilityChange(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->j:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->j:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MRAID Ad Visibility changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "VISIBLE"

    goto :goto_0

    :cond_0
    const-string p1, "INVISIBLE"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBMraidController"

    invoke-static {v1, p1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->g:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->j:Z

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Z)V

    :cond_1
    iget-boolean p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->k:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iget-boolean v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->j:Z

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Z)V

    :cond_2
    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p;->f:Lcom/pubmatic/sdk/webrendering/mraid/c$a;

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->t()V

    :cond_3
    return-void
.end method
