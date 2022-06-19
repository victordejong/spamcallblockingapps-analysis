.class public abstract Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$CloseButtonListener;
.implements Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest;,
        Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$CloseButtonListener;",
        "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;",
            ">;",
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field public c:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

.field private final d:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

.field private i:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

.field private j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadViewAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadViewAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private k:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;

.field private l:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager$OnItemSelectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager$OnItemSelectedListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private m:Landroid/widget/ImageView;

.field private n:Lcom/facebook/rebound/k;

.field private o:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

.field private p:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;

.field private q:Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager<",
            "TT;>.ArrangementChangeRequest;"
        }
    .end annotation
.end field

.field private r:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;)V
    .locals 5

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->a:Ljava/util/Map;

    .line 64
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->b:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->d:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;

    .line 66
    invoke-interface {p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->r:Landroid/util/DisplayMetrics;

    .line 67
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->a(Landroid/content/Context;)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v1

    .line 1313
    invoke-interface {p2, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;)V

    .line 1314
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v3, "window"

    .line 1315
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1316
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1317
    iput-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->r:Landroid/util/DisplayMetrics;

    .line 1318
    iput-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->o:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    .line 1319
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->e:Ljava/util/List;

    .line 1320
    invoke-static {}, Lcom/facebook/rebound/k;->c()Lcom/facebook/rebound/k;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->n:Lcom/facebook/rebound/k;

    .line 1321
    new-instance v2, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    iget v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->g:I

    iget v4, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->f:I

    invoke-direct {v2, p1, p0, v3, v4}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;-><init>(Landroid/content/Context;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;II)V

    iput-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->h:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    .line 1322
    new-instance v2, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    iget v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->g:I

    iget v4, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->f:I

    invoke-direct {v2, p1, p0, v3, v4}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;-><init>(Landroid/content/Context;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;II)V

    iput-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->i:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    .line 1323
    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getCloseButtonHeight()I

    move-result v2

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getCloseButtonWidth()I

    move-result v3

    const v4, 0x800033

    invoke-interface {p2, v2, v3, v4}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;->a(III)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1324
    iget-object v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->h:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    invoke-virtual {v3, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->setListener(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$CloseButtonListener;)V

    .line 1325
    iget-object v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->i:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    invoke-virtual {v3, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->setListener(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$CloseButtonListener;)V

    .line 1326
    iget-object v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->h:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    invoke-interface {p2, v3, v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1327
    iget-object v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->i:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    invoke-interface {p2, v3, v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1328
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->m:Landroid/widget/ImageView;

    .line 1329
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0x50

    invoke-interface {p2, v2, v3, v4}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;->a(III)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1330
    iget-object v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->m:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1331
    iget-object v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->m:Landroid/widget/ImageView;

    invoke-interface {p2, v3, v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1332
    const-class p2, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    new-instance v2, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;)V

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->setupOverlay(Landroid/content/Context;)V

    .line 1334
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->setConfig(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;)V

    .line 1335
    invoke-static {}, Lcom/facebook/rebound/h;->a()Lcom/facebook/rebound/h;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->c:Lcom/facebook/rebound/g;

    const-string v0, "dragging mode"

    invoke-virtual {p1, p2, v0}, Lcom/facebook/rebound/h;->a(Lcom/facebook/rebound/g;Ljava/lang/String;)Z

    .line 1336
    invoke-static {}, Lcom/facebook/rebound/h;->a()Lcom/facebook/rebound/h;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->a:Lcom/facebook/rebound/g;

    const-string v0, "not dragging mode"

    invoke-virtual {p1, p2, v0}, Lcom/facebook/rebound/h;->a(Lcom/facebook/rebound/g;Ljava/lang/String;)Z

    return-void
.end method

.method private a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;FF)D
    .locals 4

    .line 346
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->isDisappeared()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->getLeft()I

    move-result v0

    .line 350
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->getTop()I

    move-result v1

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 351
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->getChatHeadContainer()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;->a(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p2, v0

    float-to-double v2, p2

    int-to-float p2, v1

    sub-float/2addr p3, p2

    .line 352
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->getChatHeadContainer()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;->b(Landroid/view/View;)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p3, p2

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr p3, p1

    float-to-double p1, p3

    .line 353
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    return-wide p1

    :cond_1
    :goto_0
    const-wide p1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    return-wide p1
.end method

.method private a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 296
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b()V

    .line 298
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->d:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;->d(Landroid/view/View;)V

    .line 299
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->p:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;

    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getKey()Ljava/io/Serializable;

    :cond_1
    return-void
.end method

.method private static a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)[I
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 445
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->getEndValueX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->getMeasuredWidth()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getMeasuredWidth()I

    move-result v3

    div-int/2addr v3, v0

    sub-int/2addr v2, v3

    .line 446
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->getEndValueY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->getMeasuredHeight()I

    move-result p0

    div-int/2addr p0, v0

    add-int/2addr v3, p0

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getMeasuredHeight()I

    move-result p0

    div-int/2addr p0, v0

    sub-int/2addr v3, p0

    const/4 p0, 0x0

    aput v2, v1, p0

    const/4 p0, 0x1

    aput v3, v1, p0

    return-object v1
.end method

.method private setArrangementImpl(Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager<",
            "TT;>.ArrangementChangeRequest;)V"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest;->getArrangement()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

    .line 401
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 402
    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

    if-eq v2, v0, :cond_0

    const/4 v2, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 403
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_1
    move-object v3, v1

    .line 405
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

    if-eqz v1, :cond_2

    .line 406
    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;->getRetainBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 407
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;->a()V

    .line 410
    :cond_2
    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

    .line 411
    iget v4, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->f:I

    iget v5, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->g:I

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest;->isAnimated()Z

    move-result v6

    move-object v1, v0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;Landroid/os/Bundle;IIZ)V

    if-eqz v7, :cond_3

    .line 413
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->d:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;

    invoke-interface {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;)V

    :cond_3
    return-void
.end method

.method private setupOverlay(Landroid/content/Context;)V
    .locals 2

    .line 340
    new-instance v0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->k:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;

    .line 341
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->getChatHeadContainer()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;->a(III)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 342
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->getChatHeadContainer()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->k:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;

    invoke-interface {v0, v1, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a(FF)D
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->h:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    invoke-direct {p0, v0, p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;FF)D

    move-result-wide p1

    return-wide p1
.end method

.method protected a(Ljava/io/Serializable;Z)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)",
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead<",
            "TT;>;"
        }
    .end annotation

    .line 253
    new-instance p1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->n:Lcom/facebook/rebound/k;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;Lcom/facebook/rebound/k;Landroid/content/Context;Z)V

    return-object p1
.end method

.method public a(Ljava/io/Serializable;ZZ)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ZZ)",
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead<",
            "TT;>;"
        }
    .end annotation

    .line 217
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->b(Ljava/io/Serializable;)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    move-result-object v0

    if-nez v0, :cond_4

    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->a(Ljava/io/Serializable;Z)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    move-result-object v0

    .line 220
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->setKey(Ljava/io/Serializable;)V

    .line 221
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->setupPosition(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)V

    .line 222
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->e:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->d:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadHeight()I

    move-result v2

    const v3, 0x800033

    invoke-interface {p2, v1, v2, v3}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;->a(III)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 225
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->d:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;

    invoke-interface {v1, v0, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->o:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    .line 2081
    iget v1, v1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->a:I

    if-le p2, v1, :cond_0

    .line 226
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

    if-eqz p2, :cond_0

    .line 227
    invoke-virtual {p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;->c()V

    .line 2268
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadViewAdapter;

    invoke-interface {p2, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadViewAdapter;->getChatHeadView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2270
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->b(Ljava/io/Serializable;)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    move-result-object p1

    .line 2271
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->setChatHeadView(Landroid/view/View;)V

    .line 230
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

    if-eqz p1, :cond_2

    .line 231
    invoke-virtual {p1, v0, p3}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;Z)V

    .line 233
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->p:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;

    if-eqz p1, :cond_3

    .line 234
    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;->s_()V

    .line 236
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->m:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    :cond_4
    return-object v0
.end method

.method protected a(Landroid/content/Context;)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;
    .locals 1

    .line 73
    new-instance v0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadDefaultConfig;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadDefaultConfig;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->d:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;->a()V

    return-void
.end method

.method public a(DD)V
    .locals 0

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 185
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->g:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->f:I

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 188
    :goto_0
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->g:I

    .line 189
    iput p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->f:I

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->setCloseButtons(II)V

    .line 193
    iget p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->g:I

    if-lez p1, :cond_2

    iget p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->f:I

    if-lez p1, :cond_2

    .line 194
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->q:Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 195
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->setArrangementImpl(Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest;)V

    .line 196
    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->q:Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest;

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 198
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

    if-eqz p1, :cond_2

    .line 200
    new-instance v0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;Ljava/lang/Class;Landroid/os/Bundle;Z)V

    invoke-direct {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->setArrangementImpl(Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;)V

    .line 371
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->getOnCapturedViewCallback()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final a(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 387
    new-instance p2, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;Ljava/lang/Class;Landroid/os/Bundle;Z)V

    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->q:Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest;

    .line 388
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->d:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;->b()V

    return-void
.end method

.method public final a(Ljava/io/Serializable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 286
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->b(Ljava/io/Serializable;)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 289
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(FF)D
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->i:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    invoke-direct {p0, v0, p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;FF)D

    move-result-wide p1

    return-wide p1
.end method

.method public b(I)I
    .locals 0

    return p1
.end method

.method public final b(Ljava/io/Serializable;)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead<",
            "TT;>;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    .line 259
    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getKey()Ljava/io/Serializable;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead<",
            "TT;>;)Z"
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->l:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getKey()Ljava/io/Serializable;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager$OnItemSelectedListener;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c()V
    .locals 2

    .line 496
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->isCloseButtonHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->m:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)[I
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->h:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    invoke-static {v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)[I

    move-result-object p1

    return-object p1
.end method

.method public final d()V
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->m:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 504
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final d(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)[I
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->i:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    invoke-static {v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)[I

    move-result-object p1

    return-object p1
.end method

.method public final e()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    .line 279
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 280
    invoke-direct {p0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->h:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->e()V

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->i:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    if-eqz v0, :cond_1

    .line 603
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->e()V

    :cond_1
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public getActiveArrangement()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChatHeadContainer()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->d:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;

    return-object v0
.end method

.method public getChatHeads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead<",
            "TT;>;>;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->e:Ljava/util/List;

    return-object v0
.end method

.method public getCloseButtonShadow()Landroid/widget/ImageView;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->o:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->r:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getLeftCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->h:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    return-object v0
.end method

.method public getListener()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->p:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->g:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->f:I

    return v0
.end method

.method public getRightCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->i:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    return-object v0
.end method

.method public getSpringSystem()Lcom/facebook/rebound/k;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->n:Lcom/facebook/rebound/k;

    return-object v0
.end method

.method public getViewAdapter()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadViewAdapter;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadViewAdapter;

    return-object v0
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public synthetic i()Z
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager$-CC;->$default$i(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;)Z

    move-result v0

    return v0
.end method

.method protected setChatHeadToDefaultPosition$6fde7147(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)V
    .locals 4

    .line 242
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    const-wide/high16 v1, -0x3fa7000000000000L    # -100.0

    const/4 v3, 0x1

    .line 3113
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    .line 243
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    .line 4113
    invoke-virtual {p1, v1, v2, v3}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    return-void
.end method

.method protected setCloseButtons(II)V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->h:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->e()V

    .line 209
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->h:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    int-to-float p2, p2

    const v1, 0x3e99999a    # 0.3f

    mul-float v1, v1, p2

    float-to-int v1, v1

    int-to-float p1, p1

    const v2, 0x3f666666    # 0.9f

    mul-float p1, p1, v2

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->setCenter(II)V

    .line 211
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->i:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->e()V

    .line 212
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->i:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    const v1, 0x3f4ccccd    # 0.8f

    mul-float p2, p2, v1

    float-to-int p2, p2

    invoke-virtual {v0, p2, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->setCenter(II)V

    return-void
.end method

.method public setConfig(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;)V
    .locals 1

    .line 528
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->o:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    .line 529
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->h:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    if-eqz v0, :cond_1

    .line 535
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->isCloseButtonHidden()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 536
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->h:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->setVisibility(I)V

    goto :goto_0

    .line 538
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->h:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->setVisibility(I)V

    .line 541
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 542
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setListener(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->p:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager$OnItemSelectedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager$OnItemSelectedListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 464
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->l:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager$OnItemSelectedListener;

    return-void
.end method

.method public setViewAdapter(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadViewAdapter;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadViewAdapter;

    return-void
.end method

.method protected setupPosition(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead<",
            "TT;>;)V"
        }
    .end annotation

    .line 247
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getInitialPosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-double v1, v1

    const/4 v3, 0x1

    .line 5113
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    .line 248
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getInitialPosition()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    .line 6113
    invoke-virtual {p1, v0, v1, v3}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    return-void
.end method
