.class public Lcom/callapp/contacts/util/animation/CallappAnimationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/animation/CallappAnimationUtils$MultiTimesRunnable;,
        Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;,
        Lcom/callapp/contacts/util/animation/CallappAnimationUtils$AccelerateDecelerateInterpolator;
    }
.end annotation


# static fields
.field public static final a:Landroid/view/animation/Interpolator;

.field public static final b:Landroid/view/animation/Interpolator;

.field public static final c:F

.field public static final d:F

.field public static final e:F

.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/callapp/contacts/util/animation/CallappAnimationUtils$MultiTimesRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$AccelerateDecelerateInterpolator;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$AccelerateDecelerateInterpolator;-><init>(I)V

    sput-object v0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a:Landroid/view/animation/Interpolator;

    .line 50
    new-instance v0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$AccelerateDecelerateInterpolator;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$AccelerateDecelerateInterpolator;-><init>(I)V

    sput-object v0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->b:Landroid/view/animation/Interpolator;

    const/high16 v0, 0x42200000    # 40.0f

    .line 51
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    sput v0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->c:F

    const/high16 v0, 0x42f00000    # 120.0f

    .line 52
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    sput v0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->d:F

    const/high16 v0, 0x43700000    # 240.0f

    .line 53
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    sput v0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->e:F

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->f:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IIF)I
    .locals 1

    int-to-float v0, p0

    sub-int/2addr p0, p1

    int-to-float p0, p0

    mul-float p0, p0, p2

    sub-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static a(Landroid/view/View;III)Landroid/animation/ObjectAnimator;
    .locals 1

    const/4 v0, 0x0

    .line 259
    invoke-static {p0, p1, p2, p3, v0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;IIILandroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/View;IIILandroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 266
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v1, p1

    .line 267
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long p1, p2

    .line 268
    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 269
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p3, p1, :cond_1

    .line 270
    new-instance p1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$3;

    invoke-direct {p1, p4, p0, p3}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$3;-><init>(Landroid/animation/Animator$AnimatorListener;Landroid/view/View;I)V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static a(Landroid/view/View;Landroid/util/Property;III)Landroid/animation/ObjectAnimator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;III)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    int-to-float p2, p2

    const/4 v1, 0x0

    aput p2, v0, v1

    int-to-float p2, p3

    const/4 p3, 0x1

    aput p2, v0, p3

    .line 208
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p2

    const/4 p3, 0x0

    .line 210
    invoke-virtual {p0, p3}, Landroid/view/View;->setAlpha(F)V

    .line 211
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-direct {p3, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x7d0

    .line 213
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long p3, p4

    .line 214
    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 215
    new-instance p3, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$2;

    invoke-direct {p3, p0, p2}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$2;-><init>(Landroid/view/View;F)V

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method public static a(IIFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
    .locals 4

    .line 337
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 338
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->b(IIF)I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 339
    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public static a(Landroid/view/View;IIFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
    .locals 1

    .line 325
    new-instance v0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$4;

    invoke-direct {v0, p0, p4}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$4;-><init>(Landroid/view/View;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {p1, p2, p3, v0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(IIFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;
    .locals 3

    .line 433
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 526
    :pswitch_0
    new-instance p1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$17;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$17;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 517
    :pswitch_1
    new-instance p1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$16;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$16;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 509
    :pswitch_2
    new-instance p1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$15;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$15;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 500
    :pswitch_3
    new-instance p1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$14;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$14;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 492
    :pswitch_4
    new-instance p1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$13;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$13;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 483
    :pswitch_5
    new-instance p1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$12;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$12;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 475
    :pswitch_6
    new-instance p1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$11;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$11;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 467
    :pswitch_7
    new-instance p1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$10;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$10;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 459
    :pswitch_8
    new-instance p1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$9;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$9;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 445
    :pswitch_9
    new-instance p1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$8;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$8;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 437
    :pswitch_a
    new-instance p1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$7;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$7;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a()Ljava/util/HashMap;
    .locals 1

    .line 48
    sget-object v0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method public static a(Landroid/view/View;)V
    .locals 2

    .line 176
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f01002f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 177
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static a(Landroid/view/View;FFFLandroid/animation/Animator$AnimatorListener;)V
    .locals 11

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v2, 0x1

    aput p2, v0, v2

    .line 1127
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    cmpl-float v0, p2, p1

    if-lez v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 1129
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1131
    new-instance v10, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$1;

    move-object v0, v10

    move v1, p3

    move v4, p1

    move v5, p2

    move-object v7, p0

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$1;-><init>(FJFFZLandroid/view/View;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x12c

    .line 1156
    invoke-virtual {v9, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 162
    invoke-virtual {v9, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 163
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v9, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 164
    invoke-virtual {v9, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 165
    invoke-virtual {v9}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method static synthetic a(Landroid/view/View;FFI)V
    .locals 3

    .line 1409
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1411
    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    const/4 v1, 0x1

    .line 1412
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1414
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 1415
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    .line 1416
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 1417
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    invoke-virtual {v1, v2, p1}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 1421
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1423
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    new-instance p1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$6;

    invoke-direct {p1, v0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$6;-><init>(Landroid/graphics/drawable/Drawable;)V

    int-to-long p2, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method public static a(Landroid/view/View;FFII)V
    .locals 7

    if-eqz p0, :cond_0

    .line 377
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 379
    new-instance v6, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$MultiTimesRunnable;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v0, 0x190

    add-int/lit16 v2, p3, 0x190

    new-instance v4, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$5;

    const/high16 p3, 0x3f000000    # 0.5f

    invoke-direct {v4, p0, p1, p3, v0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$5;-><init>(Landroid/view/View;FFI)V

    const/4 v5, 0x0

    move-object v0, v6

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$MultiTimesRunnable;-><init>(Landroid/graphics/drawable/Drawable;IILjava/lang/Runnable;Lcom/callapp/contacts/util/animation/CallappAnimationUtils$1;)V

    .line 385
    sget-object p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->f:Ljava/util/HashMap;

    invoke-virtual {p0, p2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/callapp/contacts/CallAppApplication;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .locals 3

    .line 169
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x1f4

    .line 170
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 p1, 0x0

    .line 171
    invoke-virtual {v0, p1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 172
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static a(Landroid/view/View;II)V
    .locals 2

    sub-int v0, p2, p1

    .line 120
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    const/high16 v1, 0x44070000    # 540.0f

    div-float/2addr v0, v1

    float-to-long v0, v0

    .line 122
    invoke-static {p0, p1, p2, v0, v1}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;IIJ)V

    return-void
.end method

.method public static a(Landroid/view/View;IIJ)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    int-to-float p1, p1

    const/4 v1, 0x0

    aput p1, v0, v1

    int-to-float p1, p2

    const/4 p2, 0x1

    aput p1, v0, p2

    const-string p1, "rotation"

    .line 111
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 113
    invoke-virtual {p0, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 114
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 115
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/View;Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;I)V
    .locals 1

    .line 313
    new-instance v0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;-><init>(Landroid/view/View;Landroid/view/View;Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;I)V

    invoke-virtual {v0}, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->run()V

    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 182
    sget-object p1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v0, v3

    .line 183
    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const/4 p1, -0x1

    .line 184
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const/4 p1, 0x2

    .line 185
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const-wide/16 v0, 0x1f4

    .line 186
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 187
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 190
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 192
    invoke-virtual {p0}, Landroid/view/animation/Animation;->cancel()V

    :cond_1
    return-void
.end method

.method private static b(IIF)I
    .locals 0

    sub-int/2addr p0, p1

    int-to-float p0, p0

    div-float/2addr p0, p2

    .line 321
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float p0, p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static b(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 539
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 541
    new-instance v0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$18;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$18;-><init>(Landroid/view/View;)V

    .line 555
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0xc8

    .line 556
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v0, 0x320

    .line 557
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static b(Landroid/view/View;II)Landroid/animation/ObjectAnimator;
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v0

    const-string v0, "alpha"

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long v0, p1

    .line 245
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long p1, p2

    .line 246
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static b(Landroid/view/View;III)Landroid/animation/ValueAnimator;
    .locals 3

    if-eqz p0, :cond_0

    .line 617
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 618
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 619
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    int-to-long p1, p3

    .line 620
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 621
    new-instance p1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$21;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$21;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static b(Landroid/view/View;)V
    .locals 3

    const/high16 v0, 0x3f000000    # 0.5f

    const/16 v1, 0x5dc

    const/4 v2, 0x7

    .line 372
    invoke-static {p0, v0, v0, v1, v2}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;FFII)V

    return-void
.end method

.method public static c(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 563
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 565
    new-instance v0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$19;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$19;-><init>(Landroid/view/View;)V

    .line 579
    new-instance v1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$20;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$20;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 609
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x320

    .line 610
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static c(Landroid/view/View;II)Landroid/animation/ObjectAnimator;
    .locals 1

    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;III)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/view/View;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 393
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 394
    sget-object v1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$MultiTimesRunnable;

    if-eqz v1, :cond_0

    .line 396
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/CallAppApplication;->c(Ljava/lang/Runnable;)V

    .line 397
    sget-object v1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [I

    .line 400
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    const/4 v1, 0x1

    .line 401
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 402
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
