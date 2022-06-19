.class abstract Lcom/amazon/device/ads/DTBAdMRAIDController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/DTBActivityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/DTBAdMRAIDController$MraidExposure;
    }
.end annotation


# static fields
.field static final b:Ljava/lang/String; = "DTBAdMRAIDController"


# instance fields
.field private a:Landroid/graphics/Rect;

.field c:Z

.field d:Landroid/widget/LinearLayout;

.field protected e:Z

.field f:Lcom/amazon/device/ads/DTBMRAIDCloseButtonListener;

.field protected g:Lcom/amazon/device/ads/MraidStateType;

.field h:Z

.field i:Lcom/amazon/device/ads/DTBAdView;

.field private j:I

.field private k:I

.field private l:Z

.field private m:Ljava/lang/Boolean;

.field private n:Lcom/amazon/device/ads/DTBAdMRAIDController$MraidExposure;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    invoke-static {}, Lcom/amazon/device/ads/MraidOpenCommand;->b()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MraidOpenCommand;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/MraidCommand;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 71
    invoke-static {}, Lcom/amazon/device/ads/MraidCloseCommand;->b()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MraidCloseCommand;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/MraidCommand;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 72
    invoke-static {}, Lcom/amazon/device/ads/MraidUnloadCommand;->b()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MraidUnloadCommand;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/MraidCommand;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 73
    invoke-static {}, Lcom/amazon/device/ads/MraidResizeCommand;->b()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MraidResizeCommand;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/MraidCommand;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 74
    invoke-static {}, Lcom/amazon/device/ads/MraidExpandCommand;->b()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MraidExpandCommand;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/MraidCommand;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 75
    invoke-static {}, Lcom/amazon/device/ads/MraidUseCustomCloseCommand;->b()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MraidUseCustomCloseCommand;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/MraidCommand;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 76
    invoke-static {}, Lcom/amazon/device/ads/MraidJSReadyCommand;->b()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MraidJSReadyCommand;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/MraidCommand;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 77
    invoke-static {}, Lcom/amazon/device/ads/MraidFirePixelCommand;->b()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MraidFirePixelCommand;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/MraidCommand;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/DTBAdView;)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->c:Z

    .line 49
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->e:Z

    const/4 v1, -0x1

    .line 52
    iput v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->j:I

    .line 53
    iput v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->k:I

    .line 60
    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->LOADING:Lcom/amazon/device/ads/MraidStateType;

    iput-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->g:Lcom/amazon/device/ads/MraidStateType;

    .line 64
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->o:Z

    .line 66
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->h:Z

    .line 102
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    return-void
.end method

.method private a(IIFF)V
    .locals 2

    .line 251
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-static {p1}, Lcom/amazon/device/ads/DTBAdUtil;->b(I)I

    move-result p1

    int-to-float p1, p1

    .line 255
    invoke-static {p2}, Lcom/amazon/device/ads/DTBAdUtil;->b(I)I

    move-result p2

    int-to-float p2, p2

    float-to-int p3, p3

    .line 257
    invoke-static {p3}, Lcom/amazon/device/ads/DTBAdUtil;->b(I)I

    move-result p3

    int-to-float p3, p3

    float-to-int p4, p4

    .line 258
    invoke-static {p4}, Lcom/amazon/device/ads/DTBAdUtil;->b(I)I

    move-result p4

    int-to-float p4, p4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 261
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "window.mraidBridge.property.setCurrentPosition({\'xPos\':%.1f, \'yPos\':%.1f, \'width\': %.1f, \'height\': %.1f});"

    .line 260
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 263
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(%s);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->c(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 637
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "window.mraid.close();"

    .line 638
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/DTBAdMRAIDController;->c(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 640
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 641
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->d:Landroid/widget/LinearLayout;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private b(ILandroid/graphics/Rect;)V
    .locals 4

    .line 406
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 407
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 409
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 410
    invoke-static {p1}, Lcom/amazon/device/ads/DTBAdUtil;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    iget p1, p2, Landroid/graphics/Rect;->top:I

    .line 411
    invoke-static {p1}, Lcom/amazon/device/ads/DTBAdUtil;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    .line 412
    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdUtil;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v2, p2

    .line 413
    invoke-static {v1}, Lcom/amazon/device/ads/DTBAdUtil;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v2, p2

    const-string p1, "window.mraidBridge.event.exposureChange(%d, { x:%d, y:%d, width:%d, height: %d}, null);"

    .line 408
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 414
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .line 333
    sget-object v0, Lcom/amazon/device/ads/DTBAdMRAIDController;->b:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MRAID Evaluate JSScript:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDController$K1e_LnqXM3JRb9UwNInpoKp5zxY;

    invoke-direct {v1, p0, p1}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDController$K1e_LnqXM3JRb9UwNInpoKp5zxY;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private d(II)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 430
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "window.mraidBridge.event.sizeChange(%d, %d);"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 432
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->c(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic d(Ljava/lang/String;)V
    .locals 2

    .line 23094
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    if-eqz v0, :cond_0

    .line 336
    new-instance v1, Lcom/amazon/device/ads/DTBAdMRAIDController$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController$1;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDController;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/amazon/device/ads/DTBAdView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method private d(Z)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "window.mraidBridge.event.viewableChange(%s);"

    .line 296
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 297
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->c(Ljava/lang/String;)V

    return-void
.end method

.method private e(II)V
    .locals 5

    .line 658
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->s()V

    .line 20094
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 660
    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdUtil;->b(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 662
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->d:Landroid/widget/LinearLayout;

    const/16 v2, 0x32

    invoke-static {v2}, Lcom/amazon/device/ads/DTBAdUtil;->a(I)I

    move-result v3

    invoke-static {v2}, Lcom/amazon/device/ads/DTBAdUtil;->a(I)I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 663
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->d:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/amazon/device/ads/DTBAdUtil;->a(I)I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setX(F)V

    .line 664
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->d:Landroid/widget/LinearLayout;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setY(F)V

    const/4 p1, 0x0

    .line 666
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private h()V
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Lcom/amazon/device/ads/MraidProperty;

    .line 13349
    sget-object v2, Lcom/amazon/device/ads/DTBAdMRAIDController$2;->a:[I

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->g:Lcom/amazon/device/ads/MraidStateType;

    invoke-virtual {v3}, Lcom/amazon/device/ads/MraidStateType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 13366
    sget-object v2, Lcom/amazon/device/ads/MraidProperty;->c:Lcom/amazon/device/ads/StateProperty;

    goto :goto_0

    .line 13363
    :cond_0
    sget-object v2, Lcom/amazon/device/ads/MraidProperty;->d:Lcom/amazon/device/ads/StateProperty;

    goto :goto_0

    .line 13360
    :cond_1
    sget-object v2, Lcom/amazon/device/ads/MraidProperty;->f:Lcom/amazon/device/ads/StateProperty;

    goto :goto_0

    .line 13357
    :cond_2
    sget-object v2, Lcom/amazon/device/ads/MraidProperty;->e:Lcom/amazon/device/ads/StateProperty;

    goto :goto_0

    .line 13354
    :cond_3
    sget-object v2, Lcom/amazon/device/ads/MraidProperty;->c:Lcom/amazon/device/ads/StateProperty;

    goto :goto_0

    .line 13351
    :cond_4
    sget-object v2, Lcom/amazon/device/ads/MraidProperty;->b:Lcom/amazon/device/ads/StateProperty;

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 14187
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    :goto_1
    if-gtz v4, :cond_5

    .line 14188
    aget-object v5, v1, v3

    .line 14190
    invoke-virtual {v5, v2}, Lcom/amazon/device/ads/MraidProperty;->a(Lorg/json/JSONObject;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 375
    :cond_5
    sget-object v1, Lcom/amazon/device/ads/DTBAdMRAIDController;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "State was changed to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for controller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "window.mraidBridge.event.stateChange(%s);"

    new-array v0, v0, [Ljava/lang/Object;

    .line 376
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 379
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method public static synthetic lambda$K1e_LnqXM3JRb9UwNInpoKp5zxY(Lcom/amazon/device/ads/DTBAdMRAIDController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$Y21uLHl4QzKC-tLmWrzol7mvBCA(Lcom/amazon/device/ads/DTBAdMRAIDController;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->u()V

    return-void
.end method

.method public static synthetic lambda$YBWqDY3uPvwbGQllGWNfip05Sek(Lcom/amazon/device/ads/DTBAdMRAIDController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$fua9WpRRvzD-MvsLHDJEw8zrZR4(Lcom/amazon/device/ads/DTBAdMRAIDController;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->v()V

    return-void
.end method

.method private synthetic u()V
    .locals 2

    .line 21094
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    const-string v1, "about:blank"

    .line 482
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic v()V
    .locals 2

    .line 22094
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    const/16 v1, 0x8

    .line 469
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method final a(FF)V
    .locals 3

    .line 242
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 13094
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 246
    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/DTBAdView;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 247
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(IIFF)V

    return-void
.end method

.method final a(II)V
    .locals 1

    .line 417
    iget v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->j:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->k:I

    if-ne v0, p2, :cond_0

    return-void

    .line 420
    :cond_0
    iput p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->j:I

    .line 421
    iput p2, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->k:I

    .line 422
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->o:Z

    if-eqz v0, :cond_1

    .line 424
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/DTBAdMRAIDController;->d(II)V

    :cond_1
    return-void
.end method

.method final a(ILandroid/graphics/Rect;)V
    .locals 1

    .line 396
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 397
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 398
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->o:Z

    if-eqz v0, :cond_0

    .line 399
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/DTBAdMRAIDController;->b(ILandroid/graphics/Rect;)V

    return-void

    .line 401
    :cond_0
    new-instance v0, Lcom/amazon/device/ads/DTBAdMRAIDController$MraidExposure;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/device/ads/DTBAdMRAIDController$MraidExposure;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDController;ILandroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->n:Lcom/amazon/device/ads/DTBAdMRAIDController$MraidExposure;

    return-void
.end method

.method final a(Landroid/graphics/Rect;)V
    .locals 6

    .line 440
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->a:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 444
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 445
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 446
    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->a:Landroid/graphics/Rect;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 447
    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->a:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    .line 448
    iget-object v4, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->a:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->a:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int/2addr v2, v0

    .line 449
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v3, :cond_2

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 454
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->q()V

    if-eqz v3, :cond_3

    .line 457
    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdUtil;->b(I)I

    move-result v0

    invoke-static {v1}, Lcom/amazon/device/ads/DTBAdUtil;->b(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(II)V

    .line 459
    :cond_3
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->a:Landroid/graphics/Rect;

    return-void
.end method

.method protected final a(Landroid/view/View$OnTouchListener;)V
    .locals 5

    .line 615
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 617
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->d:Landroid/widget/LinearLayout;

    sget v2, Lcom/amazon/device/ads/R$id;->mraid_close_indicator:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 618
    new-instance v0, Landroid/widget/ImageView;

    .line 17094
    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 618
    invoke-virtual {v2}, Lcom/amazon/device/ads/DTBAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 619
    sget v2, Lcom/amazon/device/ads/R$id;->mraid_close_indicator:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 623
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x18

    invoke-static {v3}, Lcom/amazon/device/ads/DTBAdUtil;->a(I)I

    move-result v4

    invoke-static {v3}, Lcom/amazon/device/ads/DTBAdUtil;->a(I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xe

    .line 624
    invoke-static {v3}, Lcom/amazon/device/ads/DTBAdUtil;->a(I)I

    move-result v4

    invoke-static {v3}, Lcom/amazon/device/ads/DTBAdUtil;->a(I)I

    move-result v3

    invoke-virtual {v2, v4, v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 625
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18094
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 627
    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/device/ads/R$drawable;->mraid_close:I

    invoke-static {v1, v2}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 628
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 633
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    .line 636
    :cond_0
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->d:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDController$YBWqDY3uPvwbGQllGWNfip05Sek;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDController$YBWqDY3uPvwbGQllGWNfip05Sek;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDController;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method final a(Lcom/amazon/device/ads/MraidStateType;)V
    .locals 1

    .line 465
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->g:Lcom/amazon/device/ads/MraidStateType;

    .line 466
    sget-object v0, Lcom/amazon/device/ads/MraidStateType;->HIDDEN:Lcom/amazon/device/ads/MraidStateType;

    if-ne p1, v0, :cond_0

    .line 467
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 468
    new-instance v0, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDController$fua9WpRRvzD-MvsLHDJEw8zrZR4;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDController$fua9WpRRvzD-MvsLHDJEw8zrZR4;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 474
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->h()V

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "window.mraidBridge.service.acknowledgement(\'%s\');"

    .line 491
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 492
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->c(Ljava/lang/String;)V

    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "window.mraidBridge.event.error(\'%s\',\'%s\');"

    .line 311
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract a(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public final a(Z)V
    .locals 2

    .line 114
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set useCustomClose to "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 115
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->e:Z

    const-string p1, "useCustomClose"

    .line 116
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->f:Lcom/amazon/device/ads/DTBMRAIDCloseButtonListener;

    if-eqz p1, :cond_0

    .line 119
    invoke-interface {p1}, Lcom/amazon/device/ads/DTBMRAIDCloseButtonListener;->h()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method final b(II)V
    .locals 0

    .line 605
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->r()V

    .line 606
    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/ads/DTBAdMRAIDController;->c(II)V

    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 7

    const-string v0, "invalid url "

    const-string v1, "open"

    .line 499
    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    invoke-virtual {v2}, Lcom/amazon/device/ads/DTBAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 502
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 509
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "amazonmobile"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "android.intent.action.VIEW"

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string v6, "intent"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "intent="

    .line 511
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 512
    array-length v0, p1

    const/4 v2, 0x1

    if-le v0, v2, :cond_8

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 515
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_8

    .line 517
    :try_start_1
    aget-object v0, p1, v3

    const-string v4, "&"

    .line 518
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    if-ne v4, v6, :cond_0

    const/4 v4, 0x0

    .line 519
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v4, "UTF-8"

    .line 522
    invoke-static {v0, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    new-instance v4, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 15094
    iget-object v6, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 14226
    invoke-virtual {v6}, Lcom/amazon/device/ads/DTBAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 524
    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 525
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->j()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 531
    :catch_0
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    goto :goto_1

    .line 528
    :catch_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Intent:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not found."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    const-string v4, "requested activity not found"

    .line 529
    invoke-virtual {p0, v1, v4}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 536
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.amazon.mobile.shopping"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :try_start_2
    const-string v0, "com.amazon.mShop.android.shopping"

    .line 538
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 540
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 542
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 545
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "products/"

    .line 547
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://www.amazon.com/dp/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x9

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 551
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 552
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 556
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->j()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    .line 559
    :catch_2
    sget-object p1, Lcom/amazon/device/ads/DTBAdMRAIDController;->b:Ljava/lang/String;

    const-string v0, "Activity not found com.amazon.mobile.shopping"

    invoke-static {p1, v0}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mshop activity not found"

    .line 560
    invoke-virtual {p0, v1, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 562
    :cond_4
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v4, "market"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v4, "amzn"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    .line 578
    :cond_5
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    .line 579
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "https:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 582
    :cond_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 16094
    :try_start_3
    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 15226
    invoke-virtual {v3}, Lcom/amazon/device/ads/DTBAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 584
    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 585
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->j()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    .line 588
    sget-object v3, Lcom/amazon/device/ads/DTBAdMRAIDController;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/device/ads/DtbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 564
    :cond_7
    :goto_3
    :try_start_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 566
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 567
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->j()V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    .line 570
    :catch_4
    :try_start_5
    invoke-static {p0, v3}, Lcom/amazon/device/ads/DTBAdUtil;->a(Lcom/amazon/device/ads/DTBAdMRAIDController;Landroid/net/Uri;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    .line 572
    :catch_5
    sget-object p1, Lcom/amazon/device/ads/DTBAdMRAIDController;->b:Ljava/lang/String;

    const-string v0, "App stores and browsers not found"

    invoke-static {p1, v0}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app stores and browsers not found"

    .line 573
    invoke-virtual {p0, v1, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :cond_8
    :goto_4
    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(Ljava/lang/String;)V

    return-void

    .line 504
    :catch_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract b(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method final b(Z)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_2

    .line 287
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->o:Z

    if-eqz v0, :cond_1

    .line 288
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->d(Z)V

    .line 290
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->m:Ljava/lang/Boolean;

    :cond_2
    return-void
.end method

.method protected abstract c()V
.end method

.method protected final c(II)V
    .locals 0

    .line 610
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->r()V

    .line 611
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/DTBAdMRAIDController;->e(II)V

    return-void
.end method

.method final c(Z)V
    .locals 2

    .line 703
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SET MRAID Visible "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 704
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->b(Z)V

    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected abstract e()V
.end method

.method protected f()V
    .locals 2

    .line 481
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDController$Y21uLHl4QzKC-tLmWrzol7mvBCA;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDController$Y21uLHl4QzKC-tLmWrzol7mvBCA;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method g()V
    .locals 0

    return-void
.end method

.method protected i()V
    .locals 0

    return-void
.end method

.method protected abstract j()V
.end method

.method protected k()V
    .locals 1

    .line 738
    invoke-static {}, Lcom/amazon/device/ads/MraidFirePixelCommand;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(Ljava/lang/String;)V

    return-void
.end method

.method final l()V
    .locals 0

    .line 124
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->m()V

    return-void
.end method

.method protected final m()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 1558
    iget-object v0, v0, Lcom/amazon/device/ads/DTBAdView;->f:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 1562
    iget-object v1, v1, Lcom/amazon/device/ads/DTBAdView;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/amazon/device/ads/DTBMetricsProcessor;->a()Lcom/amazon/device/ads/DTBMetricsProcessor;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DTBMetricReport;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/DTBMetricsProcessor;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/amazon/device/ads/DTBMetricsProcessor;->a(Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final n()V
    .locals 6

    .line 145
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 2558
    iget-object v0, v0, Lcom/amazon/device/ads/DTBAdView;->f:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 2562
    iget-object v1, v1, Lcom/amazon/device/ads/DTBAdView;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 147
    iget-boolean v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->l:Z

    if-nez v2, :cond_0

    .line 148
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 3463
    iget-wide v4, v4, Lcom/amazon/device/ads/DTBAdView;->e:J

    sub-long/2addr v2, v4

    long-to-int v3, v2

    .line 149
    invoke-static {}, Lcom/amazon/device/ads/DTBMetricsProcessor;->a()Lcom/amazon/device/ads/DTBMetricsProcessor;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DTBMetricReport;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/DTBMetricsProcessor;->c:Ljava/lang/String;

    .line 4088
    invoke-static {v0, v1, v3}, Lcom/amazon/device/ads/DTBMetricReport;->a(Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;Ljava/lang/String;I)Lcom/amazon/device/ads/DTBMetricReport;

    move-result-object v0

    .line 4090
    invoke-virtual {v2, v0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->a(Lcom/amazon/device/ads/DTBMetricReport;)V

    .line 4091
    invoke-virtual {v2}, Lcom/amazon/device/ads/DTBMetricsProcessor;->b()V

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->l:Z

    :cond_0
    return-void
.end method

.method final o()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->n()V

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->c:Z

    .line 5094
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 4271
    invoke-static {v1}, Lcom/amazon/device/ads/DTBAdUtil;->c(Landroid/view/View;)Lcom/amazon/device/ads/SDKUtilities$SimpleSize;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 5185
    iget v4, v1, Lcom/amazon/device/ads/SDKUtilities$SimpleSize;->a:I

    .line 4273
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 5193
    iget v1, v1, Lcom/amazon/device/ads/SDKUtilities$SimpleSize;->b:I

    .line 4273
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v1, "window.mraidBridge.property.setMaxSize({\'width\':%d, \'height\':%d});"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4274
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->c(Ljava/lang/String;)V

    .line 6094
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 5278
    invoke-static {v1}, Lcom/amazon/device/ads/DTBAdUtil;->d(Landroid/view/View;)Lcom/amazon/device/ads/SDKUtilities$SimpleSize;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    .line 6185
    iget v4, v1, Lcom/amazon/device/ads/SDKUtilities$SimpleSize;->a:I

    .line 5280
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 6193
    iget v1, v1, Lcom/amazon/device/ads/SDKUtilities$SimpleSize;->b:I

    .line 5281
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v1, "window.mraidBridge.property.setScreenSize({\'width\':%d, \'height\':%d});"

    .line 5280
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5282
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->c(Ljava/lang/String;)V

    .line 7094
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 7268
    iget-boolean v1, v1, Lcom/amazon/device/ads/DTBAdView;->d:Z

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->q()V

    .line 7306
    :cond_0
    sget-object v1, Lcom/amazon/device/ads/MraidProperty;->g:Lcom/amazon/device/ads/SupportsProperty;

    .line 8106
    iget-object v1, v1, Lcom/amazon/device/ads/MraidDictionaryProperty;->a:Lorg/json/JSONObject;

    const-string v3, "window.mraidBridge.property.setSupports"

    .line 7306
    invoke-direct {p0, v3, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 8300
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 8301
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "window.mraidBridge.property.setPlacementType"

    .line 8302
    invoke-direct {p0, v3, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 9200
    invoke-static {}, Lcom/amazon/device/ads/DisplayUtils;->a()I

    move-result v1

    if-eq v1, v0, :cond_2

    if-eq v1, v2, :cond_1

    const-string v0, "unspecified"

    goto :goto_0

    :cond_1
    const-string v0, "landscape"

    goto :goto_0

    :cond_2
    const-string v0, "portrait"

    .line 9215
    :goto_0
    invoke-static {}, Lcom/amazon/device/ads/DisplayUtils;->b()Z

    move-result v1

    .line 9216
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "orientation"

    .line 9217
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "locked"

    .line 9218
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "window.mraidBridge.property.setCurrentAppOrientation"

    .line 9220
    invoke-direct {p0, v0, v2}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 168
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->p()Lcom/amazon/device/ads/MraidStateType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(Lcom/amazon/device/ads/MraidStateType;)V

    const-string v0, "window.mraidBridge.event.ready();"

    .line 9436
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->c(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "window.mraidBridge.service.debug(\'enable\');"

    .line 173
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->c(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected p()Lcom/amazon/device/ads/MraidStateType;
    .locals 1

    .line 182
    sget-object v0, Lcom/amazon/device/ads/MraidStateType;->DEFAULT:Lcom/amazon/device/ads/MraidStateType;

    return-object v0
.end method

.method final q()V
    .locals 4

    .line 230
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 10094
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 234
    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/DTBAdView;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 235
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    .line 11094
    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 235
    invoke-virtual {v2}, Lcom/amazon/device/ads/DTBAdView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 12094
    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 235
    invoke-virtual {v3}, Lcom/amazon/device/ads/DTBAdView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(IIFF)V

    return-void
.end method

.method protected final r()V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 599
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected final s()V
    .locals 2

    .line 650
    new-instance v0, Landroid/widget/LinearLayout;

    .line 19094
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 650
    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->d:Landroid/widget/LinearLayout;

    .line 651
    iget-boolean v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->e:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 652
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method final t()V
    .locals 2

    const-string v0, "jsready"

    .line 683
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 684
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->o:Z

    .line 688
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->d(Z)V

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->n:Lcom/amazon/device/ads/DTBAdMRAIDController$MraidExposure;

    if-eqz v0, :cond_1

    .line 692
    iget v0, v0, Lcom/amazon/device/ads/DTBAdMRAIDController$MraidExposure;->a:I

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->n:Lcom/amazon/device/ads/DTBAdMRAIDController$MraidExposure;

    iget-object v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDController$MraidExposure;->b:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->b(ILandroid/graphics/Rect;)V

    .line 695
    :cond_1
    iget v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->j:I

    if-lez v0, :cond_2

    iget v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->k:I

    if-lez v1, :cond_2

    .line 696
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->d(II)V

    :cond_2
    return-void
.end method
