.class Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;
.super Lcom/amazon/device/ads/DTBAdMRAIDController;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "DTBAdMRAIDExpandedController"


# instance fields
.field j:Lcom/amazon/device/ads/DTBAdMRAIDBannerController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/DTBAdView;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;-><init>(Lcom/amazon/device/ads/DTBAdView;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 63
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;->g()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$_L67EhajiEKAq0V7Boxr7nApdRY(Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected final a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p1, "resize"

    const-string v0, "Expanded View does not allow resize"

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final b(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p1, "expand"

    const-string v0, "Expanded View does not allow expand"

    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final c()V
    .locals 3

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;->o()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected final e()V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;->g()V

    return-void
.end method

.method protected final g()V
    .locals 4

    .line 3094
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 95
    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdUtil;->a(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/DTBAdActivity;

    .line 96
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    const-string v3, "cntrl_index"

    .line 98
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 99
    invoke-static {v1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(I)Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->g()V

    .line 104
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdActivity;->a()V

    return-void
.end method

.method final h()V
    .locals 5

    .line 62
    new-instance v0, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDExpandedController$_L67EhajiEKAq0V7Boxr7nApdRY;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDExpandedController$_L67EhajiEKAq0V7Boxr7nApdRY;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;)V

    .line 1085
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;->s()V

    .line 2094
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 2074
    invoke-static {v1}, Lcom/amazon/device/ads/DTBAdUtil;->b(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 2076
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x32

    invoke-static {v3}, Lcom/amazon/device/ads/DTBAdUtil;->a(I)I

    move-result v4

    invoke-static {v3}, Lcom/amazon/device/ads/DTBAdUtil;->a(I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v3, 0x800035

    .line 2077
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v3, 0x0

    .line 2078
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2079
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2080
    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1087
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;->a(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected final j()V
    .locals 0

    return-void
.end method

.method protected final p()Lcom/amazon/device/ads/MraidStateType;
    .locals 1

    .line 48
    sget-object v0, Lcom/amazon/device/ads/MraidStateType;->EXPANDED:Lcom/amazon/device/ads/MraidStateType;

    return-object v0
.end method
