.class public Lcom/explorestack/iab/mraid/MraidView;
.super Lcom/explorestack/iab/mraid/CloseableLayout;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/mraid/CloseableLayout$c;
.implements Lcom/explorestack/iab/utils/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/mraid/MraidView$a;,
        Lcom/explorestack/iab/mraid/MraidView$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MRAIDView"


# instance fields
.field private final baseUrl:Ljava/lang/String;

.field private final closeStyle:Lcom/explorestack/iab/utils/h;

.field private final closeTimeSec:F

.field private final contextWrapper:Landroid/content/MutableContextWrapper;

.field private final countDownStyle:Lcom/explorestack/iab/utils/h;

.field private currentOpenRunnable:Ljava/lang/Runnable;

.field private final durationSec:F

.field private expandedContainer:Lcom/explorestack/iab/mraid/CloseableLayout;

.field private final forceUseNativeCloseButton:Z

.field private isOpenNotified:Z

.field private isReadyNotified:Z

.field private isShownNotified:Z

.field private final isTag:Z

.field private isUseCustomCloseCalled:Z

.field private lastInteractedActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/explorestack/iab/mraid/MraidViewListener;

.field private final loadingStyle:Lcom/explorestack/iab/utils/h;

.field private loadingWrapper:Lcom/explorestack/iab/utils/j;

.field private final nativeFeatureManager:Lcom/explorestack/iab/mraid/a;

.field private pendingHtmlData:Ljava/lang/String;

.field private final placement:Lcom/explorestack/iab/mraid/c;

.field private final preload:Z

.field private final primaryController:Lcom/explorestack/iab/mraid/h;

.field private final productLink:Ljava/lang/String;

.field private progressHelper:Lcom/explorestack/iab/utils/n;

.field private final progressStyle:Lcom/explorestack/iab/utils/h;

.field private progressWrapper:Lcom/explorestack/iab/utils/l;

.field private final r1:Z

.field private final r2:Z

.field private resizedContainer:Lcom/explorestack/iab/mraid/CloseableLayout;

.field private final screenMetrics:Lcom/explorestack/iab/mraid/e;

.field private final scrollPreventGestureDetector:Landroid/view/GestureDetector;

.field private secondaryController:Lcom/explorestack/iab/mraid/h;

.field private state:Lcom/explorestack/iab/mraid/g;

.field private storedOrientation:Ljava/lang/Integer;

.field private final viewOnScreenObserver:Lcom/explorestack/iab/mraid/i;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/explorestack/iab/mraid/MraidView$a;)V
    .locals 5

    .line 121
    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/CloseableLayout;-><init>(Landroid/content/Context;)V

    .line 51
    sget-object v0, Lcom/explorestack/iab/mraid/g;->LOADING:Lcom/explorestack/iab/mraid/g;

    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->state:Lcom/explorestack/iab/mraid/g;

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->isReadyNotified:Z

    .line 99
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->isShownNotified:Z

    .line 100
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->isOpenNotified:Z

    .line 101
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->isUseCustomCloseCalled:Z

    .line 122
    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->contextWrapper:Landroid/content/MutableContextWrapper;

    .line 124
    iget-object v1, p2, Lcom/explorestack/iab/mraid/MraidView$a;->e:Lcom/explorestack/iab/mraid/MraidViewListener;

    iput-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->listener:Lcom/explorestack/iab/mraid/MraidViewListener;

    .line 1883
    iget-object v1, p2, Lcom/explorestack/iab/mraid/MraidView$a;->a:Lcom/explorestack/iab/mraid/c;

    .line 125
    iput-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->placement:Lcom/explorestack/iab/mraid/c;

    .line 2883
    iget-object v1, p2, Lcom/explorestack/iab/mraid/MraidView$a;->b:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->baseUrl:Ljava/lang/String;

    .line 3883
    iget-object v1, p2, Lcom/explorestack/iab/mraid/MraidView$a;->c:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->productLink:Ljava/lang/String;

    .line 4883
    iget v1, p2, Lcom/explorestack/iab/mraid/MraidView$a;->j:F

    .line 128
    iput v1, p0, Lcom/explorestack/iab/mraid/MraidView;->closeTimeSec:F

    .line 5883
    iget v1, p2, Lcom/explorestack/iab/mraid/MraidView$a;->k:F

    .line 129
    iput v1, p0, Lcom/explorestack/iab/mraid/MraidView;->durationSec:F

    .line 6883
    iget-boolean v2, p2, Lcom/explorestack/iab/mraid/MraidView$a;->l:Z

    .line 130
    iput-boolean v2, p0, Lcom/explorestack/iab/mraid/MraidView;->isTag:Z

    .line 7883
    iget-boolean v2, p2, Lcom/explorestack/iab/mraid/MraidView$a;->m:Z

    .line 131
    iput-boolean v2, p0, Lcom/explorestack/iab/mraid/MraidView;->preload:Z

    .line 8883
    iget-boolean v2, p2, Lcom/explorestack/iab/mraid/MraidView$a;->n:Z

    .line 132
    iput-boolean v2, p0, Lcom/explorestack/iab/mraid/MraidView;->forceUseNativeCloseButton:Z

    .line 9883
    iget-boolean v2, p2, Lcom/explorestack/iab/mraid/MraidView$a;->o:Z

    .line 133
    iput-boolean v2, p0, Lcom/explorestack/iab/mraid/MraidView;->r1:Z

    .line 10883
    iget-boolean v2, p2, Lcom/explorestack/iab/mraid/MraidView$a;->p:Z

    .line 134
    iput-boolean v2, p0, Lcom/explorestack/iab/mraid/MraidView;->r2:Z

    .line 11883
    iget-object v2, p2, Lcom/explorestack/iab/mraid/MraidView$a;->f:Lcom/explorestack/iab/utils/h;

    .line 136
    iput-object v2, p0, Lcom/explorestack/iab/mraid/MraidView;->closeStyle:Lcom/explorestack/iab/utils/h;

    .line 12883
    iget-object v2, p2, Lcom/explorestack/iab/mraid/MraidView$a;->g:Lcom/explorestack/iab/utils/h;

    .line 137
    iput-object v2, p0, Lcom/explorestack/iab/mraid/MraidView;->countDownStyle:Lcom/explorestack/iab/utils/h;

    .line 13883
    iget-object v2, p2, Lcom/explorestack/iab/mraid/MraidView$a;->h:Lcom/explorestack/iab/utils/h;

    .line 138
    iput-object v2, p0, Lcom/explorestack/iab/mraid/MraidView;->loadingStyle:Lcom/explorestack/iab/utils/h;

    .line 14883
    iget-object v2, p2, Lcom/explorestack/iab/mraid/MraidView$a;->i:Lcom/explorestack/iab/utils/h;

    .line 139
    iput-object v2, p0, Lcom/explorestack/iab/mraid/MraidView;->progressStyle:Lcom/explorestack/iab/utils/h;

    .line 141
    new-instance v3, Lcom/explorestack/iab/mraid/a;

    .line 15883
    iget-object p2, p2, Lcom/explorestack/iab/mraid/MraidView$a;->d:[Ljava/lang/String;

    .line 141
    invoke-direct {v3, p2}, Lcom/explorestack/iab/mraid/a;-><init>([Ljava/lang/String;)V

    iput-object v3, p0, Lcom/explorestack/iab/mraid/MraidView;->nativeFeatureManager:Lcom/explorestack/iab/mraid/a;

    .line 143
    new-instance p2, Lcom/explorestack/iab/mraid/e;

    invoke-direct {p2, p1}, Lcom/explorestack/iab/mraid/e;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/explorestack/iab/mraid/MraidView;->screenMetrics:Lcom/explorestack/iab/mraid/e;

    .line 144
    new-instance p2, Lcom/explorestack/iab/mraid/i;

    invoke-direct {p2}, Lcom/explorestack/iab/mraid/i;-><init>()V

    iput-object p2, p0, Lcom/explorestack/iab/mraid/MraidView;->viewOnScreenObserver:Lcom/explorestack/iab/mraid/i;

    .line 147
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/explorestack/iab/mraid/MraidView$1;

    invoke-direct {v3, p0}, Lcom/explorestack/iab/mraid/MraidView$1;-><init>(Lcom/explorestack/iab/mraid/MraidView;)V

    invoke-direct {p2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/explorestack/iab/mraid/MraidView;->scrollPreventGestureDetector:Landroid/view/GestureDetector;

    .line 155
    new-instance p2, Lcom/explorestack/iab/mraid/h;

    new-instance v3, Lcom/explorestack/iab/mraid/MraidView$2;

    invoke-direct {v3, p0}, Lcom/explorestack/iab/mraid/MraidView$2;-><init>(Lcom/explorestack/iab/mraid/MraidView;)V

    invoke-direct {p2, v0, v3}, Lcom/explorestack/iab/mraid/h;-><init>(Landroid/content/Context;Lcom/explorestack/iab/mraid/h$a;)V

    iput-object p2, p0, Lcom/explorestack/iab/mraid/MraidView;->primaryController:Lcom/explorestack/iab/mraid/h;

    .line 16095
    iget-object p2, p2, Lcom/explorestack/iab/mraid/h;->b:Lcom/explorestack/iab/mraid/MraidWebView;

    .line 186
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0x11

    invoke-direct {v0, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p2, v0}, Lcom/explorestack/iab/mraid/MraidView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p2, 0x0

    cmpl-float p2, v1, p2

    if-lez p2, :cond_0

    .line 190
    new-instance p2, Lcom/explorestack/iab/utils/l;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/explorestack/iab/utils/l;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Lcom/explorestack/iab/mraid/MraidView;->progressWrapper:Lcom/explorestack/iab/utils/l;

    .line 191
    invoke-virtual {p2, p1, p0, v2}, Lcom/explorestack/iab/utils/l;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/h;)V

    .line 192
    new-instance p1, Lcom/explorestack/iab/mraid/MraidView$3;

    invoke-direct {p1, p0}, Lcom/explorestack/iab/mraid/MraidView$3;-><init>(Lcom/explorestack/iab/mraid/MraidView;)V

    .line 208
    new-instance p2, Lcom/explorestack/iab/utils/n;

    invoke-direct {p2, p0, p1}, Lcom/explorestack/iab/utils/n;-><init>(Landroid/view/View;Lcom/explorestack/iab/utils/n$a;)V

    iput-object p2, p0, Lcom/explorestack/iab/mraid/MraidView;->progressHelper:Lcom/explorestack/iab/utils/n;

    .line 17041
    iget p1, p2, Lcom/explorestack/iab/utils/n;->c:F

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_0

    .line 17044
    iput v1, p2, Lcom/explorestack/iab/utils/n;->c:F

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float v1, v1, p1

    float-to-long v0, v1

    .line 17045
    iput-wide v0, p2, Lcom/explorestack/iab/utils/n;->d:J

    .line 17046
    invoke-virtual {p2}, Lcom/explorestack/iab/utils/n;->a()V

    .line 212
    :cond_0
    invoke-virtual {p0, p0}, Lcom/explorestack/iab/mraid/MraidView;->setCloseClickListener(Lcom/explorestack/iab/mraid/CloseableLayout$c;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/explorestack/iab/mraid/MraidView$a;Lcom/explorestack/iab/mraid/MraidView$1;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/explorestack/iab/mraid/MraidView;-><init>(Landroid/content/Context;Lcom/explorestack/iab/mraid/MraidView$a;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->handlePageLoaded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/explorestack/iab/mraid/MraidView;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/explorestack/iab/mraid/MraidView;->forceUseNativeCloseButton:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/explorestack/iab/mraid/MraidView;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/explorestack/iab/mraid/MraidView;->isUseCustomCloseCalled:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/explorestack/iab/mraid/MraidView;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/explorestack/iab/mraid/MraidView;->isUseCustomCloseCalled:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/h;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/explorestack/iab/mraid/MraidView;->primaryController:Lcom/explorestack/iab/mraid/h;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/explorestack/iab/mraid/MraidView;Lcom/explorestack/iab/mraid/h;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->syncCustomClose(Lcom/explorestack/iab/mraid/h;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/MraidView;->notifyReady()V

    return-void
.end method

.method static synthetic access$2200(Lcom/explorestack/iab/mraid/MraidView;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/explorestack/iab/mraid/MraidView;->isShownNotified:Z

    return p0
.end method

.method static synthetic access$2202(Lcom/explorestack/iab/mraid/MraidView;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/explorestack/iab/mraid/MraidView;->isShownNotified:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/MraidViewListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/explorestack/iab/mraid/MraidView;->listener:Lcom/explorestack/iab/mraid/MraidViewListener;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/utils/l;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/explorestack/iab/mraid/MraidView;->progressWrapper:Lcom/explorestack/iab/utils/l;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/explorestack/iab/mraid/MraidView;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/explorestack/iab/mraid/MraidView;->isOpenNotified:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/explorestack/iab/mraid/MraidView;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/explorestack/iab/mraid/MraidView;->r2:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/explorestack/iab/mraid/MraidView;)F
    .locals 0

    .line 44
    iget p0, p0, Lcom/explorestack/iab/mraid/MraidView;->durationSec:F

    return p0
.end method

.method static synthetic access$2800(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/MraidView;->handleRedirect()V

    return-void
.end method

.method static synthetic access$2900(Lcom/explorestack/iab/mraid/MraidView;Lcom/explorestack/iab/mraid/d;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->handleResize(Lcom/explorestack/iab/mraid/d;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/explorestack/iab/mraid/MraidView;)Z
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/MraidView;->isInterstitial()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->handleExpand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/g;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/explorestack/iab/mraid/MraidView;->state:Lcom/explorestack/iab/mraid/g;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/explorestack/iab/mraid/MraidView;Lcom/explorestack/iab/mraid/b;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->applyOrientation(Lcom/explorestack/iab/mraid/b;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/MraidView;->closeResized()V

    return-void
.end method

.method static synthetic access$3500(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/MraidView;->closeExpanded()V

    return-void
.end method

.method static synthetic access$3600(Lcom/explorestack/iab/mraid/MraidView;Lcom/explorestack/iab/mraid/g;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->setViewState(Lcom/explorestack/iab/mraid/g;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/utils/h;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/explorestack/iab/mraid/MraidView;->closeStyle:Lcom/explorestack/iab/utils/h;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/e;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/explorestack/iab/mraid/MraidView;->screenMetrics:Lcom/explorestack/iab/mraid/e;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/MraidView;->handleOpenProductLink()V

    return-void
.end method

.method static synthetic access$4000(Lcom/explorestack/iab/mraid/MraidView;IILcom/explorestack/iab/mraid/h;Ljava/lang/Runnable;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/explorestack/iab/mraid/MraidView;->handleScriptClick(IILcom/explorestack/iab/mraid/h;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/explorestack/iab/mraid/MraidView;IILcom/explorestack/iab/mraid/h;Ljava/lang/Runnable;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/explorestack/iab/mraid/MraidView;->handleMotionClick(IILcom/explorestack/iab/mraid/h;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/MraidView;->handlePartTwoLoaded()V

    return-void
.end method

.method static synthetic access$4300(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/h;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/explorestack/iab/mraid/MraidView;->secondaryController:Lcom/explorestack/iab/mraid/h;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/Runnable;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->updateMetrics(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/a;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/explorestack/iab/mraid/MraidView;->nativeFeatureManager:Lcom/explorestack/iab/mraid/a;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/c;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/explorestack/iab/mraid/MraidView;->placement:Lcom/explorestack/iab/mraid/c;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/explorestack/iab/mraid/MraidView;Landroid/view/View;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->syncScreenMetrics(Landroid/view/View;)V

    return-void
.end method

.method private applyOrientation(Lcom/explorestack/iab/mraid/b;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 735
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->peekActivity()Landroid/app/Activity;

    move-result-object v0

    .line 736
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "applyOrientation: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MRAIDView"

    invoke-static {v2, v1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    const-string p1, "no any interacted activities"

    .line 738
    invoke-static {v2, p1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 741
    :cond_1
    invoke-direct {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->storeOrientation(Landroid/app/Activity;)V

    .line 25050
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 25053
    :goto_0
    iget v4, p1, Lcom/explorestack/iab/mraid/b;->b:I

    if-nez v4, :cond_3

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    .line 25055
    :cond_3
    iget v4, p1, Lcom/explorestack/iab/mraid/b;->b:I

    if-eq v4, v3, :cond_5

    .line 25057
    iget-boolean p1, p1, Lcom/explorestack/iab/mraid/b;->a:Z

    if-eqz p1, :cond_4

    const/4 v2, -0x1

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    goto :goto_1

    .line 743
    :cond_5
    :goto_2
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method private closeExpanded()V
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->expandedContainer:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-direct {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->detachContainer(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 610
    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->expandedContainer:Lcom/explorestack/iab/mraid/CloseableLayout;

    .line 612
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->peekActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 614
    invoke-direct {p0, v1}, Lcom/explorestack/iab/mraid/MraidView;->restoreOrientation(Landroid/app/Activity;)V

    .line 617
    :cond_0
    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->secondaryController:Lcom/explorestack/iab/mraid/h;

    if-eqz v1, :cond_1

    .line 618
    invoke-virtual {v1}, Lcom/explorestack/iab/mraid/h;->a()V

    .line 619
    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->secondaryController:Lcom/explorestack/iab/mraid/h;

    goto :goto_0

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->primaryController:Lcom/explorestack/iab/mraid/h;

    .line 24095
    iget-object v0, v0, Lcom/explorestack/iab/mraid/h;->b:Lcom/explorestack/iab/mraid/MraidWebView;

    .line 622
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->addView(Landroid/view/View;)V

    .line 625
    :goto_0
    sget-object v0, Lcom/explorestack/iab/mraid/g;->DEFAULT:Lcom/explorestack/iab/mraid/g;

    invoke-direct {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->setViewState(Lcom/explorestack/iab/mraid/g;)V

    return-void
.end method

.method private closeResized()V
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->resizedContainer:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-direct {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->detachContainer(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 531
    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->resizedContainer:Lcom/explorestack/iab/mraid/CloseableLayout;

    .line 533
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->primaryController:Lcom/explorestack/iab/mraid/h;

    .line 21095
    iget-object v0, v0, Lcom/explorestack/iab/mraid/h;->b:Lcom/explorestack/iab/mraid/MraidWebView;

    .line 534
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->addView(Landroid/view/View;)V

    .line 536
    sget-object v0, Lcom/explorestack/iab/mraid/g;->DEFAULT:Lcom/explorestack/iab/mraid/g;

    invoke-direct {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->setViewState(Lcom/explorestack/iab/mraid/g;)V

    return-void
.end method

.method private detachContainer(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 282
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 283
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 285
    :cond_1
    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->b(Landroid/view/View;)V

    return-void
.end method

.method private handleExpand(Ljava/lang/String;)V
    .locals 3

    .line 540
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/MraidView;->isInterstitial()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->state:Lcom/explorestack/iab/mraid/g;

    sget-object v1, Lcom/explorestack/iab/mraid/g;->DEFAULT:Lcom/explorestack/iab/mraid/g;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->state:Lcom/explorestack/iab/mraid/g;

    sget-object v1, Lcom/explorestack/iab/mraid/g;->RESIZED:Lcom/explorestack/iab/mraid/g;

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 548
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->primaryController:Lcom/explorestack/iab/mraid/h;

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v0, "UTF-8"

    .line 551
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "http://"

    .line 557
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 560
    :cond_3
    new-instance v0, Lcom/explorestack/iab/mraid/MraidView$6;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/mraid/MraidView$6;-><init>(Lcom/explorestack/iab/mraid/MraidView;)V

    .line 578
    new-instance v1, Lcom/explorestack/iab/mraid/h;

    iget-object v2, p0, Lcom/explorestack/iab/mraid/MraidView;->contextWrapper:Landroid/content/MutableContextWrapper;

    invoke-direct {v1, v2, v0}, Lcom/explorestack/iab/mraid/h;-><init>(Landroid/content/Context;Lcom/explorestack/iab/mraid/h$a;)V

    iput-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->secondaryController:Lcom/explorestack/iab/mraid/h;

    const/4 v0, 0x0

    .line 22084
    iput-boolean v0, v1, Lcom/explorestack/iab/mraid/h;->c:Z

    .line 22095
    iget-object v0, v1, Lcom/explorestack/iab/mraid/h;->b:Lcom/explorestack/iab/mraid/MraidWebView;

    .line 22085
    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidWebView;->loadUrl(Ljava/lang/String;)V

    move-object p1, v1

    .line 583
    :goto_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->expandedContainer:Lcom/explorestack/iab/mraid/CloseableLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/CloseableLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_6

    .line 584
    :cond_4
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/MraidView;->peekContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/explorestack/iab/mraid/f;->b(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 585
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_5

    const-string p1, "MRAIDView"

    const-string v0, "Can\'t add resized view because can\'t find required parent"

    .line 586
    invoke-static {p1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 589
    :cond_5
    new-instance v1, Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/explorestack/iab/mraid/CloseableLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->expandedContainer:Lcom/explorestack/iab/mraid/CloseableLayout;

    .line 590
    invoke-virtual {v1, p0}, Lcom/explorestack/iab/mraid/CloseableLayout;->setCloseClickListener(Lcom/explorestack/iab/mraid/CloseableLayout$c;)V

    .line 591
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->expandedContainer:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 23095
    :cond_6
    iget-object v0, p1, Lcom/explorestack/iab/mraid/h;->b:Lcom/explorestack/iab/mraid/MraidWebView;

    .line 595
    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->b(Landroid/view/View;)V

    .line 596
    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->expandedContainer:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-virtual {v1, v0}, Lcom/explorestack/iab/mraid/CloseableLayout;->addView(Landroid/view/View;)V

    .line 598
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->expandedContainer:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-direct {p0, v0, p1}, Lcom/explorestack/iab/mraid/MraidView;->prepareFullscreenBehavior(Lcom/explorestack/iab/mraid/CloseableLayout;Lcom/explorestack/iab/mraid/h;)V

    .line 23100
    iget-object p1, p1, Lcom/explorestack/iab/mraid/h;->f:Lcom/explorestack/iab/mraid/b;

    .line 599
    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->applyOrientation(Lcom/explorestack/iab/mraid/b;)V

    .line 601
    sget-object p1, Lcom/explorestack/iab/mraid/g;->EXPANDED:Lcom/explorestack/iab/mraid/g;

    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->setViewState(Lcom/explorestack/iab/mraid/g;)V

    .line 602
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->listener:Lcom/explorestack/iab/mraid/MraidViewListener;

    if-eqz p1, :cond_7

    .line 603
    invoke-interface {p1, p0}, Lcom/explorestack/iab/mraid/MraidViewListener;->onExpand(Lcom/explorestack/iab/mraid/MraidView;)V

    :catch_0
    :cond_7
    return-void
.end method

.method private handleMotionClick(IILcom/explorestack/iab/mraid/h;Ljava/lang/Runnable;)V
    .locals 1

    .line 472
    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->isOpenNotified:Z

    if-nez v0, :cond_0

    .line 19095
    iget-object p3, p3, Lcom/explorestack/iab/mraid/h;->b:Lcom/explorestack/iab/mraid/MraidWebView;

    .line 473
    invoke-direct {p0, p3, p1, p2}, Lcom/explorestack/iab/mraid/MraidView;->handleMotionClick(Lcom/explorestack/iab/mraid/MraidWebView;II)V

    .line 474
    iput-object p4, p0, Lcom/explorestack/iab/mraid/MraidView;->currentOpenRunnable:Ljava/lang/Runnable;

    const-wide/16 p1, 0x96

    .line 475
    invoke-virtual {p0, p4, p1, p2}, Lcom/explorestack/iab/mraid/MraidView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private handleMotionClick(Lcom/explorestack/iab/mraid/MraidWebView;II)V
    .locals 1

    const/4 v0, 0x0

    .line 480
    invoke-direct {p0, v0, p2, p3}, Lcom/explorestack/iab/mraid/MraidView;->obtainMotionEvent(III)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/mraid/MraidWebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    .line 481
    invoke-direct {p0, v0, p2, p3}, Lcom/explorestack/iab/mraid/MraidView;->obtainMotionEvent(III)Landroid/view/MotionEvent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/explorestack/iab/mraid/MraidWebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private handleOpenProductLink()V
    .locals 1

    .line 452
    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->isOpenNotified:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->productLink:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->productLink:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->handleOpen(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handlePageLoaded(Ljava/lang/String;)V
    .locals 2

    .line 798
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->state:Lcom/explorestack/iab/mraid/g;

    sget-object v1, Lcom/explorestack/iab/mraid/g;->LOADING:Lcom/explorestack/iab/mraid/g;

    if-eq v0, v1, :cond_0

    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->primaryController:Lcom/explorestack/iab/mraid/h;

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->nativeFeatureManager:Lcom/explorestack/iab/mraid/a;

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/h;->a(Lcom/explorestack/iab/mraid/a;)V

    .line 802
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->primaryController:Lcom/explorestack/iab/mraid/h;

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->placement:Lcom/explorestack/iab/mraid/c;

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/h;->a(Lcom/explorestack/iab/mraid/c;)V

    .line 803
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->primaryController:Lcom/explorestack/iab/mraid/h;

    .line 27108
    iget-object v1, v0, Lcom/explorestack/iab/mraid/h;->b:Lcom/explorestack/iab/mraid/MraidWebView;

    .line 28092
    iget-boolean v1, v1, Lcom/explorestack/iab/mraid/MraidWebView;->b:Z

    .line 803
    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/h;->a(Z)V

    .line 804
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->primaryController:Lcom/explorestack/iab/mraid/h;

    .line 28095
    iget-object v0, v0, Lcom/explorestack/iab/mraid/h;->b:Lcom/explorestack/iab/mraid/MraidWebView;

    .line 804
    invoke-direct {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->syncScreenMetrics(Landroid/view/View;)V

    .line 805
    sget-object v0, Lcom/explorestack/iab/mraid/g;->DEFAULT:Lcom/explorestack/iab/mraid/g;

    invoke-direct {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->setViewState(Lcom/explorestack/iab/mraid/g;)V

    .line 806
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/MraidView;->notifyReady()V

    const/4 v0, 0x0

    .line 807
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->setLoadingVisible(Z)V

    .line 808
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/MraidView;->isInterstitial()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 809
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->primaryController:Lcom/explorestack/iab/mraid/h;

    invoke-direct {p0, p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->prepareFullscreenBehavior(Lcom/explorestack/iab/mraid/CloseableLayout;Lcom/explorestack/iab/mraid/h;)V

    .line 811
    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->listener:Lcom/explorestack/iab/mraid/MraidViewListener;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->preload:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->isTag:Z

    if-nez v0, :cond_2

    const-string v0, "data:text/html,<html></html>"

    .line 813
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 814
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->listener:Lcom/explorestack/iab/mraid/MraidViewListener;

    invoke-interface {p1, p0}, Lcom/explorestack/iab/mraid/MraidViewListener;->onLoaded(Lcom/explorestack/iab/mraid/MraidView;)V

    :cond_2
    return-void
.end method

.method private handlePartTwoLoaded()V
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->secondaryController:Lcom/explorestack/iab/mraid/h;

    if-nez v0, :cond_0

    return-void

    .line 822
    :cond_0
    new-instance v0, Lcom/explorestack/iab/mraid/MraidView$8;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/mraid/MraidView$8;-><init>(Lcom/explorestack/iab/mraid/MraidView;)V

    invoke-direct {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->updateMetrics(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleRedirect()V
    .locals 4

    .line 421
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->secondaryController:Lcom/explorestack/iab/mraid/h;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->primaryController:Lcom/explorestack/iab/mraid/h;

    .line 424
    :goto_0
    new-instance v1, Lcom/explorestack/iab/mraid/MraidView$5;

    invoke-direct {v1, p0, v0}, Lcom/explorestack/iab/mraid/MraidView$5;-><init>(Lcom/explorestack/iab/mraid/MraidView;Lcom/explorestack/iab/mraid/h;)V

    .line 447
    iget-object v2, p0, Lcom/explorestack/iab/mraid/MraidView;->screenMetrics:Lcom/explorestack/iab/mraid/e;

    .line 18082
    iget-object v2, v2, Lcom/explorestack/iab/mraid/e;->b:Landroid/graphics/Rect;

    .line 447
    invoke-static {v2}, Lcom/explorestack/iab/utils/Utils;->c(Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v2

    .line 448
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/explorestack/iab/mraid/MraidView;->handleMotionClick(IILcom/explorestack/iab/mraid/h;Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleResize(Lcom/explorestack/iab/mraid/d;)V
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->state:Lcom/explorestack/iab/mraid/g;

    sget-object v1, Lcom/explorestack/iab/mraid/g;->LOADING:Lcom/explorestack/iab/mraid/g;

    const-string v2, "MRAIDView"

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->state:Lcom/explorestack/iab/mraid/g;

    sget-object v1, Lcom/explorestack/iab/mraid/g;->HIDDEN:Lcom/explorestack/iab/mraid/g;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->state:Lcom/explorestack/iab/mraid/g;

    sget-object v1, Lcom/explorestack/iab/mraid/g;->EXPANDED:Lcom/explorestack/iab/mraid/g;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->placement:Lcom/explorestack/iab/mraid/c;

    sget-object v1, Lcom/explorestack/iab/mraid/c;->INTERSTITIAL:Lcom/explorestack/iab/mraid/c;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->resizedContainer:Lcom/explorestack/iab/mraid/CloseableLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/CloseableLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 501
    :cond_1
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/MraidView;->peekContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/explorestack/iab/mraid/f;->b(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 502
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    const-string p1, "Can\'t add resized view because can\'t find required parent"

    .line 503
    invoke-static {v2, p1}, Lcom/explorestack/iab/mraid/MraidLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 507
    :cond_2
    new-instance v1, Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/explorestack/iab/mraid/CloseableLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->resizedContainer:Lcom/explorestack/iab/mraid/CloseableLayout;

    .line 508
    invoke-virtual {v1, p0}, Lcom/explorestack/iab/mraid/CloseableLayout;->setCloseClickListener(Lcom/explorestack/iab/mraid/CloseableLayout$c;)V

    .line 509
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->resizedContainer:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 513
    :cond_3
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->primaryController:Lcom/explorestack/iab/mraid/h;

    .line 20095
    iget-object v0, v0, Lcom/explorestack/iab/mraid/h;->b:Lcom/explorestack/iab/mraid/MraidWebView;

    .line 514
    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->b(Landroid/view/View;)V

    .line 515
    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->resizedContainer:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-virtual {v1, v0}, Lcom/explorestack/iab/mraid/CloseableLayout;->addView(Landroid/view/View;)V

    .line 518
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->closeStyle:Lcom/explorestack/iab/utils/h;

    invoke-static {v0, v1}, Lcom/explorestack/iab/utils/Assets;->resolveDefCloseStyle(Landroid/content/Context;Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/utils/h;

    move-result-object v0

    .line 519
    iget-object v1, p1, Lcom/explorestack/iab/mraid/d;->e:Lcom/explorestack/iab/mraid/j;

    .line 520
    invoke-virtual {v1}, Lcom/explorestack/iab/mraid/j;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 20124
    iput-object v1, v0, Lcom/explorestack/iab/utils/h;->e:Ljava/lang/Integer;

    .line 521
    iget-object v1, p1, Lcom/explorestack/iab/mraid/d;->e:Lcom/explorestack/iab/mraid/j;

    .line 522
    invoke-virtual {v1}, Lcom/explorestack/iab/mraid/j;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 20136
    iput-object v1, v0, Lcom/explorestack/iab/utils/h;->f:Ljava/lang/Integer;

    .line 523
    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->resizedContainer:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-virtual {v1, v0}, Lcom/explorestack/iab/mraid/CloseableLayout;->setCloseStyle(Lcom/explorestack/iab/utils/h;)V

    .line 524
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->resizedContainer:Lcom/explorestack/iab/mraid/CloseableLayout;

    const/4 v1, 0x0

    iget v2, p0, Lcom/explorestack/iab/mraid/MraidView;->closeTimeSec:F

    invoke-virtual {v0, v1, v2}, Lcom/explorestack/iab/mraid/CloseableLayout;->setCloseVisibility(ZF)V

    .line 525
    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->setResizedViewSizeAndPosition(Lcom/explorestack/iab/mraid/d;)V

    .line 526
    sget-object p1, Lcom/explorestack/iab/mraid/g;->RESIZED:Lcom/explorestack/iab/mraid/g;

    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->setViewState(Lcom/explorestack/iab/mraid/g;)V

    return-void

    .line 497
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Callback: onResize (invalidate state: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->state:Lcom/explorestack/iab/mraid/g;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleScriptClick(IILcom/explorestack/iab/mraid/h;Ljava/lang/Runnable;)V
    .locals 2

    .line 461
    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->isOpenNotified:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 18190
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "(function click(x, y) {var ev = new MouseEvent(\'click\', {    \'view\': window,    \'bubbles\': true,    \'cancelable\': true,    \'screenX\': x,    \'screenY\': y});var el = document.elementFromPoint(x, y);if (el !== null) {      el.dispatchEvent(ev); }})(%s, %s)"

    .line 18178
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/explorestack/iab/mraid/h;->a(Ljava/lang/String;)V

    .line 463
    iput-object p4, p0, Lcom/explorestack/iab/mraid/MraidView;->currentOpenRunnable:Ljava/lang/Runnable;

    const-wide/16 p1, 0x96

    .line 464
    invoke-virtual {p0, p4, p1, p2}, Lcom/explorestack/iab/mraid/MraidView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private isInterstitial()Z
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->placement:Lcom/explorestack/iab/mraid/c;

    sget-object v1, Lcom/explorestack/iab/mraid/c;->INTERSTITIAL:Lcom/explorestack/iab/mraid/c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private notifyReady()V
    .locals 2

    .line 762
    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->isReadyNotified:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 763
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->isReadyNotified:Z

    .line 764
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->primaryController:Lcom/explorestack/iab/mraid/h;

    const-string v1, "mraid.fireReadyEvent();"

    .line 25170
    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/h;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private obtainMotionEvent(III)Landroid/view/MotionEvent;
    .locals 8

    .line 486
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 487
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-float v5, p2

    int-to-float v6, p3

    const/4 v7, 0x0

    move v4, p1

    .line 485
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    return-object p1
.end method

.method private peekContext()Landroid/content/Context;
    .locals 1

    .line 701
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->peekActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 703
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private performLoad(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->baseUrl:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 228
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->listener:Lcom/explorestack/iab/mraid/MraidViewListener;

    if-eqz p1, :cond_0

    .line 229
    invoke-interface {p1, p0, v0}, Lcom/explorestack/iab/mraid/MraidViewListener;->onError(Lcom/explorestack/iab/mraid/MraidView;I)V

    :cond_0
    return-void

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->primaryController:Lcom/explorestack/iab/mraid/h;

    iget-object v3, p0, Lcom/explorestack/iab/mraid/MraidView;->baseUrl:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 237
    invoke-static {}, Lcom/explorestack/iab/mraid/f;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v4, 0x1

    .line 238
    invoke-static {p1}, Lcom/explorestack/iab/mraid/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "<script type=\'application/javascript\'>%s</script>%s"

    .line 235
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 17089
    iput-boolean v0, v1, Lcom/explorestack/iab/mraid/h;->c:Z

    .line 17095
    iget-object v2, v1, Lcom/explorestack/iab/mraid/h;->b:Lcom/explorestack/iab/mraid/MraidWebView;

    const/4 v7, 0x0

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    .line 17090
    invoke-virtual/range {v2 .. v7}, Lcom/explorestack/iab/mraid/MraidWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->primaryController:Lcom/explorestack/iab/mraid/h;

    invoke-static {}, Lcom/explorestack/iab/mraid/MraidLog;->a()Lcom/explorestack/iab/utils/Logger$LogLevel;

    move-result-object v0

    .line 17156
    sget-object v1, Lcom/explorestack/iab/utils/Logger$LogLevel;->debug:Lcom/explorestack/iab/utils/Logger$LogLevel;

    if-ne v0, v1, :cond_2

    const-string v0, "mraid.logLevel = mraid.LogLevelEnum.DEBUG;"

    .line 17157
    invoke-virtual {p1, v0}, Lcom/explorestack/iab/mraid/h;->a(Ljava/lang/String;)V

    return-void

    .line 17158
    :cond_2
    sget-object v1, Lcom/explorestack/iab/utils/Logger$LogLevel;->info:Lcom/explorestack/iab/utils/Logger$LogLevel;

    if-ne v0, v1, :cond_3

    const-string v0, "mraid.logLevel = mraid.LogLevelEnum.INFO;"

    .line 17159
    invoke-virtual {p1, v0}, Lcom/explorestack/iab/mraid/h;->a(Ljava/lang/String;)V

    return-void

    .line 17160
    :cond_3
    sget-object v1, Lcom/explorestack/iab/utils/Logger$LogLevel;->warning:Lcom/explorestack/iab/utils/Logger$LogLevel;

    if-ne v0, v1, :cond_4

    const-string v0, "mraid.logLevel = mraid.LogLevelEnum.WARNING;"

    .line 17161
    invoke-virtual {p1, v0}, Lcom/explorestack/iab/mraid/h;->a(Ljava/lang/String;)V

    return-void

    .line 17162
    :cond_4
    sget-object v1, Lcom/explorestack/iab/utils/Logger$LogLevel;->error:Lcom/explorestack/iab/utils/Logger$LogLevel;

    if-ne v0, v1, :cond_5

    const-string v0, "mraid.logLevel = mraid.LogLevelEnum.ERROR;"

    .line 17163
    invoke-virtual {p1, v0}, Lcom/explorestack/iab/mraid/h;->a(Ljava/lang/String;)V

    return-void

    .line 17164
    :cond_5
    sget-object v1, Lcom/explorestack/iab/utils/Logger$LogLevel;->none:Lcom/explorestack/iab/utils/Logger$LogLevel;

    if-ne v0, v1, :cond_6

    const-string v0, "mraid.logLevel = mraid.LogLevelEnum.NONE;"

    .line 17165
    invoke-virtual {p1, v0}, Lcom/explorestack/iab/mraid/h;->a(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private prepareFullscreenBehavior(Lcom/explorestack/iab/mraid/CloseableLayout;Lcom/explorestack/iab/mraid/h;)V
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->closeStyle:Lcom/explorestack/iab/utils/h;

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/mraid/CloseableLayout;->setCloseStyle(Lcom/explorestack/iab/utils/h;)V

    .line 631
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->countDownStyle:Lcom/explorestack/iab/utils/h;

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/mraid/CloseableLayout;->setCountDownStyle(Lcom/explorestack/iab/utils/h;)V

    .line 632
    invoke-direct {p0, p2}, Lcom/explorestack/iab/mraid/MraidView;->syncCustomClose(Lcom/explorestack/iab/mraid/h;)V

    return-void
.end method

.method private restoreOrientation(Landroid/app/Activity;)V
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->storedOrientation:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 p1, 0x0

    .line 727
    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->storedOrientation:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method private setResizedViewSizeAndPosition(Lcom/explorestack/iab/mraid/d;)V
    .locals 4

    .line 647
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setResizedViewSizeAndPosition: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAIDView"

    invoke-static {v1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->resizedContainer:Lcom/explorestack/iab/mraid/CloseableLayout;

    if-nez v0, :cond_0

    return-void

    .line 652
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lcom/explorestack/iab/mraid/d;->a:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v0

    .line 653
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lcom/explorestack/iab/mraid/d;->b:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v1

    .line 654
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p1, Lcom/explorestack/iab/mraid/d;->c:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v2

    .line 655
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget p1, p1, Lcom/explorestack/iab/mraid/d;->d:I

    int-to-float p1, p1

    invoke-static {v3, p1}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;F)I

    move-result p1

    .line 657
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 658
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->screenMetrics:Lcom/explorestack/iab/mraid/e;

    .line 24142
    iget-object v0, v0, Lcom/explorestack/iab/mraid/e;->g:Landroid/graphics/Rect;

    .line 659
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    .line 660
    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p1

    .line 662
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 663
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 664
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->resizedContainer:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-virtual {p1, v3}, Lcom/explorestack/iab/mraid/CloseableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setViewState(Lcom/explorestack/iab/mraid/g;)V
    .locals 1

    .line 747
    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->state:Lcom/explorestack/iab/mraid/g;

    .line 748
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->primaryController:Lcom/explorestack/iab/mraid/h;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/h;->a(Lcom/explorestack/iab/mraid/g;)V

    .line 749
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->secondaryController:Lcom/explorestack/iab/mraid/h;

    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/h;->a(Lcom/explorestack/iab/mraid/g;)V

    .line 754
    :cond_0
    sget-object v0, Lcom/explorestack/iab/mraid/g;->HIDDEN:Lcom/explorestack/iab/mraid/g;

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    .line 755
    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->updateMetrics(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private storeOrientation(Landroid/app/Activity;)V
    .locals 0

    .line 721
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->storedOrientation:Ljava/lang/Integer;

    return-void
.end method

.method private syncCustomClose(Lcom/explorestack/iab/mraid/h;)V
    .locals 2

    .line 24104
    iget-boolean p1, p1, Lcom/explorestack/iab/mraid/h;->d:Z

    if-eqz p1, :cond_1

    .line 636
    iget-boolean p1, p0, Lcom/explorestack/iab/mraid/MraidView;->forceUseNativeCloseButton:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 637
    :goto_1
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->resizedContainer:Lcom/explorestack/iab/mraid/CloseableLayout;

    if-eqz v0, :cond_2

    .line 638
    iget v1, p0, Lcom/explorestack/iab/mraid/MraidView;->closeTimeSec:F

    invoke-virtual {v0, p1, v1}, Lcom/explorestack/iab/mraid/CloseableLayout;->setCloseVisibility(ZF)V

    return-void

    .line 639
    :cond_2
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->expandedContainer:Lcom/explorestack/iab/mraid/CloseableLayout;

    if-eqz v0, :cond_3

    .line 640
    iget v1, p0, Lcom/explorestack/iab/mraid/MraidView;->closeTimeSec:F

    invoke-virtual {v0, p1, v1}, Lcom/explorestack/iab/mraid/CloseableLayout;->setCloseVisibility(ZF)V

    return-void

    .line 641
    :cond_3
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/MraidView;->isInterstitial()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 642
    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->isUseCustomCloseCalled:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/explorestack/iab/mraid/MraidView;->closeTimeSec:F

    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/iab/mraid/MraidView;->setCloseVisibility(ZF)V

    :cond_5
    return-void
.end method

.method private syncScreenMetrics(Landroid/view/View;)V
    .locals 21

    move-object/from16 v0, p0

    .line 850
    invoke-direct/range {p0 .. p0}, Lcom/explorestack/iab/mraid/MraidView;->peekContext()Landroid/content/Context;

    move-result-object v1

    .line 853
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 854
    iget-object v3, v0, Lcom/explorestack/iab/mraid/MraidView;->screenMetrics:Lcom/explorestack/iab/mraid/e;

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 32067
    iget-object v5, v3, Lcom/explorestack/iab/mraid/e;->a:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v4, :cond_0

    iget-object v5, v3, Lcom/explorestack/iab/mraid/e;->a:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq v5, v2, :cond_1

    .line 32068
    :cond_0
    iget-object v5, v3, Lcom/explorestack/iab/mraid/e;->a:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v6, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 32069
    iget-object v2, v3, Lcom/explorestack/iab/mraid/e;->a:Landroid/graphics/Rect;

    iget-object v4, v3, Lcom/explorestack/iab/mraid/e;->b:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v4}, Lcom/explorestack/iab/mraid/e;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 858
    invoke-static {v1, v0}, Lcom/explorestack/iab/mraid/f;->a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 860
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 861
    iget-object v7, v0, Lcom/explorestack/iab/mraid/MraidView;->screenMetrics:Lcom/explorestack/iab/mraid/e;

    aget v10, v2, v6

    const/4 v3, 0x1

    aget v11, v2, v3

    .line 863
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 864
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 32089
    iget-object v8, v7, Lcom/explorestack/iab/mraid/e;->c:Landroid/graphics/Rect;

    iget-object v9, v7, Lcom/explorestack/iab/mraid/e;->d:Landroid/graphics/Rect;

    invoke-virtual/range {v7 .. v13}, Lcom/explorestack/iab/mraid/e;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Z

    .line 866
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 867
    iget-object v14, v0, Lcom/explorestack/iab/mraid/MraidView;->screenMetrics:Lcom/explorestack/iab/mraid/e;

    aget v17, v2, v6

    aget v18, v2, v3

    .line 869
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v19

    .line 870
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v20

    .line 32130
    iget-object v15, v14, Lcom/explorestack/iab/mraid/e;->g:Landroid/graphics/Rect;

    iget-object v1, v14, Lcom/explorestack/iab/mraid/e;->h:Landroid/graphics/Rect;

    move-object/from16 v16, v1

    invoke-virtual/range {v14 .. v20}, Lcom/explorestack/iab/mraid/e;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Z

    move-object/from16 v1, p1

    .line 872
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 873
    iget-object v7, v0, Lcom/explorestack/iab/mraid/MraidView;->screenMetrics:Lcom/explorestack/iab/mraid/e;

    aget v10, v2, v6

    aget v11, v2, v3

    .line 875
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 876
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 33106
    iget-object v8, v7, Lcom/explorestack/iab/mraid/e;->e:Landroid/graphics/Rect;

    iget-object v9, v7, Lcom/explorestack/iab/mraid/e;->f:Landroid/graphics/Rect;

    invoke-virtual/range {v7 .. v13}, Lcom/explorestack/iab/mraid/e;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Z

    .line 877
    iget-object v1, v0, Lcom/explorestack/iab/mraid/MraidView;->primaryController:Lcom/explorestack/iab/mraid/h;

    iget-object v2, v0, Lcom/explorestack/iab/mraid/MraidView;->screenMetrics:Lcom/explorestack/iab/mraid/e;

    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/h;->a(Lcom/explorestack/iab/mraid/e;)V

    .line 878
    iget-object v1, v0, Lcom/explorestack/iab/mraid/MraidView;->secondaryController:Lcom/explorestack/iab/mraid/h;

    if-eqz v1, :cond_2

    .line 879
    iget-object v2, v0, Lcom/explorestack/iab/mraid/MraidView;->screenMetrics:Lcom/explorestack/iab/mraid/e;

    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/h;->a(Lcom/explorestack/iab/mraid/e;)V

    :cond_2
    return-void
.end method

.method private updateMetrics(Ljava/lang/Runnable;)V
    .locals 4

    .line 835
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->secondaryController:Lcom/explorestack/iab/mraid/h;

    if-eqz v0, :cond_0

    .line 29095
    iget-object v0, v0, Lcom/explorestack/iab/mraid/h;->b:Lcom/explorestack/iab/mraid/MraidWebView;

    goto :goto_0

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->primaryController:Lcom/explorestack/iab/mraid/h;

    .line 30095
    iget-object v0, v0, Lcom/explorestack/iab/mraid/h;->b:Lcom/explorestack/iab/mraid/MraidWebView;

    .line 838
    :goto_0
    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->viewOnScreenObserver:Lcom/explorestack/iab/mraid/i;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 31074
    invoke-virtual {v1}, Lcom/explorestack/iab/mraid/i;->a()V

    .line 31075
    new-instance v3, Lcom/explorestack/iab/mraid/i$a;

    invoke-direct {v3, v2}, Lcom/explorestack/iab/mraid/i$a;-><init>([Landroid/view/View;)V

    iput-object v3, v1, Lcom/explorestack/iab/mraid/i;->a:Lcom/explorestack/iab/mraid/i$a;

    .line 31076
    iget-object v1, v1, Lcom/explorestack/iab/mraid/i;->a:Lcom/explorestack/iab/mraid/i$a;

    .line 838
    new-instance v2, Lcom/explorestack/iab/mraid/MraidView$9;

    invoke-direct {v2, p0, v0, p1}, Lcom/explorestack/iab/mraid/MraidView$9;-><init>(Lcom/explorestack/iab/mraid/MraidView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 32059
    iput-object v2, v1, Lcom/explorestack/iab/mraid/i$a;->b:Ljava/lang/Runnable;

    .line 32060
    iget-object p1, v1, Lcom/explorestack/iab/mraid/i$a;->a:[Landroid/view/View;

    array-length p1, p1

    iput p1, v1, Lcom/explorestack/iab/mraid/i$a;->c:I

    .line 32061
    iget-object p1, v1, Lcom/explorestack/iab/mraid/i$a;->d:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public canBeClosed()Z
    .locals 6

    .line 770
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->getOnScreenTimeMs()J

    move-result-wide v0

    sget-wide v2, Lcom/explorestack/iab/mraid/f;->a:J

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    return v4

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->primaryController:Lcom/explorestack/iab/mraid/h;

    .line 25233
    iget-boolean v0, v0, Lcom/explorestack/iab/mraid/h;->e:Z

    if-eqz v0, :cond_1

    return v4

    .line 776
    :cond_1
    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->forceUseNativeCloseButton:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->primaryController:Lcom/explorestack/iab/mraid/h;

    .line 26104
    iget-boolean v0, v0, Lcom/explorestack/iab/mraid/h;->d:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    return v0

    .line 779
    :cond_2
    invoke-super {p0}, Lcom/explorestack/iab/mraid/CloseableLayout;->canBeClosed()Z

    move-result v0

    return v0
.end method

.method public clickHandleCanceled()V
    .locals 1

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->setLoadingVisible(Z)V

    return-void
.end method

.method public clickHandleError()V
    .locals 1

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->setLoadingVisible(Z)V

    return-void
.end method

.method public clickHandled()V
    .locals 1

    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->setLoadingVisible(Z)V

    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->listener:Lcom/explorestack/iab/mraid/MraidViewListener;

    .line 258
    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->lastInteractedActivity:Ljava/lang/ref/WeakReference;

    .line 259
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->viewOnScreenObserver:Lcom/explorestack/iab/mraid/i;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/i;->a()V

    .line 261
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->peekActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->restoreOrientation(Landroid/app/Activity;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->resizedContainer:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-direct {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->detachContainer(Landroid/view/View;)V

    .line 266
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->expandedContainer:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-direct {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->detachContainer(Landroid/view/View;)V

    .line 268
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->primaryController:Lcom/explorestack/iab/mraid/h;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/h;->a()V

    .line 269
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->secondaryController:Lcom/explorestack/iab/mraid/h;

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/h;->a()V

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->progressHelper:Lcom/explorestack/iab/utils/n;

    if-eqz v0, :cond_2

    .line 18036
    invoke-virtual {v0}, Lcom/explorestack/iab/utils/n;->b()V

    .line 18037
    iget-object v1, v0, Lcom/explorestack/iab/utils/n;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v0, v0, Lcom/explorestack/iab/utils/n;->f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    return-void
.end method

.method handleClose()V
    .locals 1

    .line 396
    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->isOpenNotified:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->r1:Z

    if-eqz v0, :cond_0

    .line 397
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/MraidView;->handleRedirect()V

    return-void

    .line 400
    :cond_0
    new-instance v0, Lcom/explorestack/iab/mraid/MraidView$4;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/mraid/MraidView$4;-><init>(Lcom/explorestack/iab/mraid/MraidView;)V

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method handleOpen(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 383
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->isOpenNotified:Z

    .line 384
    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->currentOpenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/explorestack/iab/mraid/MraidView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 385
    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->listener:Lcom/explorestack/iab/mraid/MraidViewListener;

    if-eqz v1, :cond_1

    const-string v1, "tel"

    .line 386
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->setLoadingVisible(Z)V

    .line 391
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->listener:Lcom/explorestack/iab/mraid/MraidViewListener;

    invoke-interface {v0, p0, p1, p0}, Lcom/explorestack/iab/mraid/MraidViewListener;->onOpenBrowser(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/String;Lcom/explorestack/iab/utils/c;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->preload:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->performLoad(Ljava/lang/String;)V

    return-void

    .line 219
    :cond_0
    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->pendingHtmlData:Ljava/lang/String;

    .line 220
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->listener:Lcom/explorestack/iab/mraid/MraidViewListener;

    if-eqz p1, :cond_1

    .line 221
    invoke-interface {p1, p0}, Lcom/explorestack/iab/mraid/MraidViewListener;->onLoaded(Lcom/explorestack/iab/mraid/MraidView;)V

    :cond_1
    return-void
.end method

.method public onCloseClick()V
    .locals 0

    .line 372
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->handleClose()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 669
    invoke-super {p0, p1}, Lcom/explorestack/iab/mraid/CloseableLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConfigurationChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MRAIDView"

    invoke-static {v0, p1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    new-instance p1, Lcom/explorestack/iab/mraid/MraidView$7;

    invoke-direct {p1, p0}, Lcom/explorestack/iab/mraid/MraidView$7;-><init>(Lcom/explorestack/iab/mraid/MraidView;)V

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCountDownFinish()V
    .locals 2

    .line 377
    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->isOpenNotified:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->r2:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/explorestack/iab/mraid/MraidView;->durationSec:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/MraidView;->handleRedirect()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->scrollPreventGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 251
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 253
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/iab/mraid/CloseableLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public peekActivity()Landroid/app/Activity;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->lastInteractedActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setLastInteractedActivity(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 694
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->lastInteractedActivity:Ljava/lang/ref/WeakReference;

    .line 695
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->contextWrapper:Landroid/content/MutableContextWrapper;

    invoke-virtual {v0, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setLoadingVisible(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 681
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->loadingWrapper:Lcom/explorestack/iab/utils/j;

    if-nez p1, :cond_0

    .line 682
    new-instance p1, Lcom/explorestack/iab/utils/j;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/explorestack/iab/utils/j;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->loadingWrapper:Lcom/explorestack/iab/utils/j;

    .line 683
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->loadingStyle:Lcom/explorestack/iab/utils/h;

    invoke-virtual {p1, v0, p0, v1}, Lcom/explorestack/iab/utils/j;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/h;)V

    .line 685
    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->loadingWrapper:Lcom/explorestack/iab/utils/j;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/utils/j;->a(I)V

    .line 686
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->loadingWrapper:Lcom/explorestack/iab/utils/j;

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/j;->b()V

    return-void

    .line 687
    :cond_1
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->loadingWrapper:Lcom/explorestack/iab/utils/j;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 688
    invoke-virtual {p1, v0}, Lcom/explorestack/iab/utils/j;->a(I)V

    :cond_2
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 1

    .line 783
    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->preload:Z

    if-eqz v0, :cond_1

    .line 784
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/MraidView;->isInterstitial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->primaryController:Lcom/explorestack/iab/mraid/h;

    invoke-direct {p0, p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->prepareFullscreenBehavior(Lcom/explorestack/iab/mraid/CloseableLayout;Lcom/explorestack/iab/mraid/h;)V

    .line 787
    :cond_0
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/MraidView;->notifyReady()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 789
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->setLoadingVisible(Z)V

    .line 790
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->pendingHtmlData:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->performLoad(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 791
    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->pendingHtmlData:Ljava/lang/String;

    .line 793
    :goto_0
    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->setLastInteractedActivity(Landroid/app/Activity;)V

    .line 794
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->primaryController:Lcom/explorestack/iab/mraid/h;

    .line 27100
    iget-object p1, p1, Lcom/explorestack/iab/mraid/h;->f:Lcom/explorestack/iab/mraid/b;

    .line 794
    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->applyOrientation(Lcom/explorestack/iab/mraid/b;)V

    return-void
.end method
