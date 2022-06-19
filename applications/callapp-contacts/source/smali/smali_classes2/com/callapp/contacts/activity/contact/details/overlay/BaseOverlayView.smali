.class public abstract Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;
    }
.end annotation


# instance fields
.field private animationContainer:Landroid/view/View;

.field protected closePusherListener:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;

.field private finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

.field private fullFrameLayout:Landroid/widget/FrameLayout;

.field private fullFrameLayoutHeight:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureOnScrollDetected:Z

.field private gestureOnScrollVerticalDetected:Z

.field private gestureOnSwipeDetected:Z

.field private final heightLocker:Ljava/lang/Object;

.field private isFinishing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final moveHorizontal:Z

.field private final moveVertical:Z

.field private screenHeight:I

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZLcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;)V
    .locals 2

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->gestureOnScrollDetected:Z

    .line 58
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->gestureOnSwipeDetected:Z

    .line 59
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->gestureOnScrollVerticalDetected:Z

    .line 64
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->heightLocker:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 65
    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->fullFrameLayout:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    .line 66
    iput v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->fullFrameLayoutHeight:I

    .line 67
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->screenHeight:I

    .line 68
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->isFinishing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    new-instance v0, Lcom/callapp/contacts/manager/MainThreadTimer;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$1;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)V

    invoke-direct {v0, v1}, Lcom/callapp/contacts/manager/MainThreadTimer;-><init>(Lcom/callapp/contacts/manager/MainThreadTimer$DelaytedTaskEvents;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    .line 81
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getThemeStyleResource()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    .line 82
    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->moveVertical:Z

    .line 83
    iput-boolean p3, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->moveHorizontal:Z

    .line 84
    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->closePusherListener:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;

    .line 85
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->windowManager:Landroid/view/WindowManager;

    .line 86
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 87
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->createLayoutForOverlay(Landroid/view/LayoutInflater;)V

    const p1, 0x7f0a00dd

    .line 88
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->animationContainer:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->screenHeight:I

    return p0
.end method

.method static synthetic access$002(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->screenHeight:I

    return p1
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->fullFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->fullFrameLayoutHeight:I

    return p0
.end method

.method static synthetic access$202(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->fullFrameLayoutHeight:I

    return p1
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->moveHorizontal:Z

    return p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->gestureOnSwipeDetected:Z

    return p0
.end method

.method static synthetic access$402(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->gestureOnSwipeDetected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->gestureOnScrollDetected:Z

    return p0
.end method

.method static synthetic access$502(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->gestureOnScrollDetected:Z

    return p1
.end method

.method static synthetic access$602(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->gestureOnScrollVerticalDetected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;ZFF)Z
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->scrollShouldBeConsumedByChildren(ZFF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->moveVertical:Z

    return p0
.end method

.method static synthetic access$900(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;Landroid/view/View;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->overlayCloseClick(Landroid/view/View;)V

    return-void
.end method

.method private isHorizontallyScrollableViewTouched(FF)Z
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getHorizontallyScrollableViews()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->isTouchedInViews(Ljava/util/List;FF)Z

    move-result p1

    return p1
.end method

.method private isTouchedInViews(Ljava/util/List;FF)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;FF)Z"
        }
    .end annotation

    .line 196
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 198
    invoke-static {v0, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isVerticallyScrollableViewTouched(FF)Z
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getVerticallyScrollableViews()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->isTouchedInViews(Ljava/util/List;FF)Z

    move-result p1

    return p1
.end method

.method private overlayCloseClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 535
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 536
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->finishViewContainer(Z)V

    .line 538
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->closePusherListener:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;

    if-eqz p1, :cond_0

    .line 539
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;->a()V

    :cond_0
    return-void
.end method

.method private scrollShouldBeConsumedByChildren(ZFF)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 207
    invoke-direct {p0, p2, p3}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->isHorizontallyScrollableViewTouched(FF)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->isVerticallyScrollableViewTouched(FF)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected addView()V
    .locals 8

    .line 328
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->setLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 331
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->needsKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->fullFrameLayout:Landroid/widget/FrameLayout;

    .line 333
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$4;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 349
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x1

    const/4 v4, -0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/16 v1, 0x7f6

    const/16 v5, 0x7f6

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d2

    const/16 v5, 0x7d2

    :goto_0
    const/16 v6, 0x20

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 360
    :goto_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/callapp/contacts/activity/base/BaseActivity;

    if-eqz v1, :cond_3

    .line 361
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->fullFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 362
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/base/BaseActivity;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->fullFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/base/BaseActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p0, v1}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 366
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->fullFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    .line 367
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v2, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected createLayoutForOverlay(Landroid/view/LayoutInflater;)V
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getLayoutResId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/MainThreadTimer;->a()Z

    .line 192
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public finishViewContainer(Z)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->isFinishing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/16 p1, 0x8

    .line 97
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->setVisibility(I)V

    .line 98
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->onDestroy()V

    return-void

    .line 100
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected finishWithDelay(I)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/callapp/contacts/manager/MainThreadTimer;->a(IZ)Z

    return-void
.end method

.method protected finishWithSlideOut(ZF)V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->animationContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getWidth()I

    move-result p1

    neg-int p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 233
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result p1

    :goto_0
    int-to-float p1, p1

    .line 235
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$3;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)V

    .line 253
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->animationContainer:Landroid/view/View;

    invoke-static {v2, v0, p1, p2, v1}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;FFFLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public getAnimationContainer()Landroid/view/View;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->animationContainer:Landroid/view/View;

    return-object v0
.end method

.method protected getHorizontallyScrollableViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getLayoutResId()I
.end method

.method protected getOverlayGestureBehaviour()Landroid/view/GestureDetector;
    .locals 5

    .line 392
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;

    sget-object v3, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;->LOW:Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v3}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;ZLcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    return-object v0
.end method

.method protected abstract getOverlayInitHeight()I
.end method

.method protected getStartYposition()I
    .locals 3

    .line 317
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070338

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07032b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method protected abstract getTrackEventCategory()Ljava/lang/String;
.end method

.method protected getVerticallyScrollableViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getWindowFlags()I
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->needsKeyboard()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x488028

    goto :goto_0

    :cond_0
    const v0, 0x688020

    :goto_0
    return v0
.end method

.method public getWindowHeight()I
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->heightLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 275
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getWindowType()I
    .locals 2

    .line 313
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v0, 0x7f6

    return v0

    :cond_0
    const/16 v0, 0x7da

    return v0
.end method

.method public getWindowY()I
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return v0
.end method

.method protected needsKeyboard()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 3

    .line 138
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getOverlayGestureBehaviour()Landroid/view/GestureDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->gestureDetector:Landroid/view/GestureDetector;

    .line 139
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->addView()V

    const v0, 0x7f0a02a6

    .line 142
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 143
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 146
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07032b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 148
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 149
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010030

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 151
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->animationContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/MainThreadTimer;->a()Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 159
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->gestureOnScrollDetected:Z

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 164
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 166
    :cond_0
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->gestureOnScrollDetected:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->gestureOnSwipeDetected:Z

    if-nez p1, :cond_4

    .line 168
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->gestureOnScrollVerticalDetected:Z

    if-eqz p1, :cond_1

    .line 169
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->onVerticalScrollEnded(I)V

    .line 171
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->animationContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    float-to-int p1, p1

    .line 172
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-le v0, v2, :cond_3

    if-gez p1, :cond_2

    const/4 v5, 0x1

    .line 174
    :cond_2
    invoke-virtual {p0, v5, v4}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->finishWithSlideOut(ZF)V

    goto :goto_0

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->animationContainer:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 177
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->animationContainer:Landroid/view/View;

    new-array v2, v3, [F

    int-to-float p1, p1

    aput p1, v2, v5

    aput v4, v2, v1

    const-string p1, "translationX"

    invoke-static {v0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v2, 0x12c

    .line 178
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 179
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4
    :goto_0
    return v1
.end method

.method protected onVerticalScrollEnded(I)V
    .locals 0

    return-void
.end method

.method protected removeView()V
    .locals 4

    .line 374
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/callapp/contacts/activity/base/BaseActivity;

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->removeAllViews()V

    return-void

    .line 378
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 379
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->fullFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 380
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 383
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getTrackEventCategory()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeView failed. e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected repositionOverlayVertically(I)V
    .locals 2

    .line 486
    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->screenHeight:I

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getWindowHeight()I

    move-result v1

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getWindowY()I

    move-result v1

    if-le v1, p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->setWindowY(I)V

    .line 493
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->updateWindowLayout()V

    return-void
.end method

.method protected setCloseButtonListenerInOverlay(IIZ)V
    .locals 5

    .line 497
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f0a0245

    .line 498
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 500
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 501
    new-instance p2, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$6;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$6;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p3, :cond_0

    .line 509
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 511
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 515
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$7;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$7;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p3, :cond_2

    .line 523
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    .line 525
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method protected setLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 9

    .line 321
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getOverlayInitHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getStartYposition()I

    move-result v4

    .line 322
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getWindowType()I

    move-result v5

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getWindowFlags()I

    move-result v6

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v7, -0x3

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const/16 v0, 0x33

    .line 323
    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object v8
.end method

.method public setWindowHeight(I)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->heightLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 281
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setWindowY(I)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method public updateWindowLayout()V
    .locals 2

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
