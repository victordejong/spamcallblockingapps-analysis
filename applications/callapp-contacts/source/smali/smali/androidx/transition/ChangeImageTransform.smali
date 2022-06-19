.class public Landroidx/transition/ChangeImageTransform;
.super Landroidx/transition/Transition;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final k:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/widget/ImageView;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android:changeImageTransform:matrix"

    const-string v1, "android:changeImageTransform:bounds"

    .line 50
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ChangeImageTransform;->a:[Ljava/lang/String;

    .line 55
    new-instance v0, Landroidx/transition/ChangeImageTransform$1;

    invoke-direct {v0}, Landroidx/transition/ChangeImageTransform$1;-><init>()V

    sput-object v0, Landroidx/transition/ChangeImageTransform;->k:Landroid/animation/TypeEvaluator;

    .line 62
    new-instance v0, Landroidx/transition/ChangeImageTransform$2;

    const-class v1, Landroid/graphics/Matrix;

    const-string v2, "animatedTransform"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeImageTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeImageTransform;->l:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static d(Landroidx/transition/x;)V
    .locals 6

    .line 83
    iget-object v0, p0, Landroidx/transition/x;->b:Landroid/view/View;

    .line 84
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 87
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    .line 88
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 92
    :cond_1
    iget-object p0, p0, Landroidx/transition/x;->a:Ljava/util/Map;

    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 99
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v0, "android:changeImageTransform:bounds"

    .line 100
    invoke-interface {p0, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1191
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_4

    .line 1192
    sget-object v0, Landroidx/transition/ChangeImageTransform$3;->a:[I

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 1198
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1222
    :cond_2
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1223
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1224
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v2, v2

    div-float v4, v3, v2

    .line 1227
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1228
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v5, v1, v0

    .line 1231
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v2, v2, v4

    mul-float v0, v0, v4

    sub-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v3, v2

    .line 1235
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-float/2addr v1, v0

    div-float/2addr v1, v2

    .line 1236
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1238
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1239
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v2, v3

    int-to-float v0, v0

    .line 1240
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object v0, v1

    goto :goto_0

    .line 1209
    :cond_3
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1210
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1212
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1213
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 1211
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, v2

    goto :goto_0

    .line 1201
    :cond_4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    :goto_0
    const-string v1, "android:changeImageTransform:matrix"

    .line 101
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroidx/transition/x;Landroidx/transition/x;)Landroid/animation/Animator;
    .locals 6

    const/4 p1, 0x0

    if-eqz p2, :cond_a

    if-nez p3, :cond_0

    goto/16 :goto_2

    .line 138
    :cond_0
    iget-object v0, p2, Landroidx/transition/x;->a:Ljava/util/Map;

    const-string v1, "android:changeImageTransform:bounds"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 139
    iget-object v2, p3, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 144
    :cond_1
    iget-object p2, p2, Landroidx/transition/x;->a:Ljava/util/Map;

    const-string v2, "android:changeImageTransform:matrix"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Matrix;

    .line 145
    iget-object v3, p3, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz p2, :cond_4

    .line 148
    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    .line 150
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v5, :cond_5

    return-object p1

    .line 154
    :cond_5
    iget-object p1, p3, Landroidx/transition/x;->b:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageView;

    .line 155
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 156
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 157
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    const/4 v1, 0x2

    if-lez v0, :cond_9

    if-gtz p3, :cond_6

    goto :goto_1

    :cond_6
    if-nez p2, :cond_7

    .line 164
    sget-object p2, Landroidx/transition/k;->a:Landroid/graphics/Matrix;

    :cond_7
    if-nez v2, :cond_8

    .line 167
    sget-object v2, Landroidx/transition/k;->a:Landroid/graphics/Matrix;

    .line 169
    :cond_8
    sget-object p3, Landroidx/transition/ChangeImageTransform;->l:Landroid/util/Property;

    invoke-virtual {p3, p1, p2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2184
    new-instance v0, Landroidx/transition/w$a;

    invoke-direct {v0}, Landroidx/transition/w$a;-><init>()V

    new-array v1, v1, [Landroid/graphics/Matrix;

    aput-object p2, v1, v4

    aput-object v2, v1, v3

    invoke-static {p1, p3, v0, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_2

    .line 2178
    :cond_9
    :goto_1
    sget-object p2, Landroidx/transition/ChangeImageTransform;->l:Landroid/util/Property;

    sget-object p3, Landroidx/transition/ChangeImageTransform;->k:Landroid/animation/TypeEvaluator;

    new-array v0, v1, [Landroid/graphics/Matrix;

    sget-object v1, Landroidx/transition/k;->a:Landroid/graphics/Matrix;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/transition/k;->a:Landroid/graphics/Matrix;

    aput-object v1, v0, v3

    invoke-static {p1, p2, p3, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :cond_a
    :goto_2
    return-object p1
.end method

.method public final a(Landroidx/transition/x;)V
    .locals 0

    .line 106
    invoke-static {p1}, Landroidx/transition/ChangeImageTransform;->d(Landroidx/transition/x;)V

    return-void
.end method

.method public final a()[Ljava/lang/String;
    .locals 1

    .line 117
    sget-object v0, Landroidx/transition/ChangeImageTransform;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public final b(Landroidx/transition/x;)V
    .locals 0

    .line 111
    invoke-static {p1}, Landroidx/transition/ChangeImageTransform;->d(Landroidx/transition/x;)V

    return-void
.end method
