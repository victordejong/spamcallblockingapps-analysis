.class public Landroidx/transition/ChangeTransform;
.super Landroidx/transition/Transition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ChangeTransform$b;,
        Landroidx/transition/ChangeTransform$a;,
        Landroidx/transition/ChangeTransform$c;
    }
.end annotation


# static fields
.field private static final k:[Ljava/lang/String;

.field private static final l:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/transition/ChangeTransform$b;",
            "[F>;"
        }
    .end annotation
.end field

.field private static final m:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/transition/ChangeTransform$b;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Z


# instance fields
.field a:Z

.field private o:Z

.field private p:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android:changeTransform:matrix"

    const-string v1, "android:changeTransform:transforms"

    const-string v2, "android:changeTransform:parentMatrix"

    .line 61
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ChangeTransform;->k:[Ljava/lang/String;

    .line 70
    new-instance v0, Landroidx/transition/ChangeTransform$1;

    const-class v1, [F

    const-string v2, "nonTranslations"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeTransform$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeTransform;->l:Landroid/util/Property;

    .line 86
    new-instance v0, Landroidx/transition/ChangeTransform$2;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "translations"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeTransform;->m:Landroid/util/Property;

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroidx/transition/ChangeTransform;->n:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->a:Z

    .line 106
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->o:Z

    .line 107
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/transition/ChangeTransform;->p:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 115
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->a:Z

    .line 106
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->o:Z

    .line 107
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroidx/transition/ChangeTransform;->p:Landroid/graphics/Matrix;

    .line 116
    sget-object v1, Landroidx/transition/s;->g:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 117
    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "reparentWithOverlay"

    invoke-static {p1, p2, v1, v0, v0}, Landroidx/core/content/res/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/transition/ChangeTransform;->a:Z

    const-string v1, "reparent"

    const/4 v2, 0x0

    .line 119
    invoke-static {p1, p2, v1, v2, v0}, Landroidx/core/content/res/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/transition/ChangeTransform;->o:Z

    .line 121
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static a(Landroid/view/View;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 445
    invoke-static/range {v0 .. v8}, Landroidx/transition/ChangeTransform;->a(Landroid/view/View;FFFFFFFF)V

    return-void
.end method

.method static a(Landroid/view/View;FFFFFFFF)V
    .locals 0

    .line 452
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 453
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 454
    invoke-static {p0, p3}, Landroidx/core/view/v;->b(Landroid/view/View;F)V

    .line 455
    invoke-virtual {p0, p4}, Landroid/view/View;->setScaleX(F)V

    .line 456
    invoke-virtual {p0, p5}, Landroid/view/View;->setScaleY(F)V

    .line 457
    invoke-virtual {p0, p6}, Landroid/view/View;->setRotationX(F)V

    .line 458
    invoke-virtual {p0, p7}, Landroid/view/View;->setRotationY(F)V

    .line 459
    invoke-virtual {p0, p8}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method private b(Landroid/view/ViewGroup;Landroidx/transition/x;Landroidx/transition/x;)V
    .locals 4

    .line 392
    iget-object v0, p3, Landroidx/transition/x;->b:Landroid/view/View;

    .line 394
    iget-object v1, p3, Landroidx/transition/x;->a:Ljava/util/Map;

    const-string v2, "android:changeTransform:parentMatrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 395
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 396
    invoke-static {p1, v2}, Landroidx/transition/ai;->b(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 3032
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ne v1, v3, :cond_0

    .line 3034
    invoke-static {v0, p1, v2}, Landroidx/transition/h;->a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/f;

    move-result-object p1

    goto :goto_0

    .line 3036
    :cond_0
    invoke-static {v0, p1, v2}, Landroidx/transition/i;->a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/i;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 403
    :cond_1
    iget-object v1, p2, Landroidx/transition/x;->a:Ljava/util/Map;

    const-string v2, "android:changeTransform:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p2, Landroidx/transition/x;->b:Landroid/view/View;

    invoke-interface {p1, v1, v2}, Landroidx/transition/f;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    move-object v1, p0

    .line 407
    :goto_1
    iget-object v2, v1, Landroidx/transition/Transition;->g:Landroidx/transition/TransitionSet;

    if-eqz v2, :cond_2

    .line 408
    iget-object v1, v1, Landroidx/transition/Transition;->g:Landroidx/transition/TransitionSet;

    goto :goto_1

    .line 411
    :cond_2
    new-instance v2, Landroidx/transition/ChangeTransform$a;

    invoke-direct {v2, v0, p1}, Landroidx/transition/ChangeTransform$a;-><init>(Landroid/view/View;Landroidx/transition/f;)V

    .line 412
    invoke-virtual {v1, v2}, Landroidx/transition/Transition;->a(Landroidx/transition/Transition$c;)Landroidx/transition/Transition;

    .line 416
    sget-boolean p1, Landroidx/transition/ChangeTransform;->n:Z

    if-eqz p1, :cond_4

    .line 417
    iget-object p1, p2, Landroidx/transition/x;->b:Landroid/view/View;

    iget-object p3, p3, Landroidx/transition/x;->b:Landroid/view/View;

    if-eq p1, p3, :cond_3

    .line 418
    iget-object p1, p2, Landroidx/transition/x;->b:Landroid/view/View;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/transition/ai;->a(Landroid/view/View;F)V

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 420
    invoke-static {v0, p1}, Landroidx/transition/ai;->a(Landroid/view/View;F)V

    :cond_4
    return-void
.end method

.method private d(Landroidx/transition/x;)V
    .locals 4

    .line 199
    iget-object v0, p1, Landroidx/transition/x;->b:Landroid/view/View;

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v1, p1, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:changeTransform:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v1, Landroidx/transition/ChangeTransform$c;

    invoke-direct {v1, v0}, Landroidx/transition/ChangeTransform$c;-><init>(Landroid/view/View;)V

    .line 205
    iget-object v2, p1, Landroidx/transition/x;->a:Ljava/util/Map;

    const-string v3, "android:changeTransform:transforms"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 207
    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 210
    :cond_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 212
    :goto_1
    iget-object v1, p1, Landroidx/transition/x;->a:Ljava/util/Map;

    const-string v3, "android:changeTransform:matrix"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-boolean v1, p0, Landroidx/transition/ChangeTransform;->o:Z

    if-eqz v1, :cond_3

    .line 214
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 215
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 216
    invoke-static {v2, v1}, Landroidx/transition/ai;->a(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 217
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 218
    iget-object v2, p1, Landroidx/transition/x;->a:Ljava/util/Map;

    const-string v3, "android:changeTransform:parentMatrix"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v1, p1, Landroidx/transition/x;->a:Ljava/util/Map;

    sget v2, Landroidx/transition/o$a;->transition_transform:I

    .line 220
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "android:changeTransform:intermediateMatrix"

    .line 219
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object p1, p1, Landroidx/transition/x;->a:Ljava/util/Map;

    sget v1, Landroidx/transition/o$a;->parent_matrix:I

    .line 222
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "android:changeTransform:intermediateParentMatrix"

    .line 221
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroidx/transition/x;Landroidx/transition/x;)Landroid/animation/Animator;
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const/4 v0, 0x0

    if-eqz v8, :cond_d

    if-eqz v9, :cond_d

    .line 248
    iget-object v1, v8, Landroidx/transition/x;->a:Ljava/util/Map;

    const-string v2, "android:changeTransform:parent"

    .line 249
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v9, Landroidx/transition/x;->a:Ljava/util/Map;

    .line 250
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 254
    :cond_0
    iget-object v1, v8, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/view/ViewGroup;

    .line 255
    iget-object v1, v9, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 256
    iget-boolean v2, v7, Landroidx/transition/ChangeTransform;->o:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 1379
    invoke-virtual {v7, v10}, Landroidx/transition/ChangeTransform;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v7, v1}, Landroidx/transition/ChangeTransform;->b(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 1382
    :cond_1
    invoke-virtual {v7, v10, v3}, Landroidx/transition/ChangeTransform;->b(Landroid/view/View;Z)Landroidx/transition/x;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1384
    iget-object v2, v2, Landroidx/transition/x;->b:Landroid/view/View;

    if-ne v1, v2, :cond_2

    :goto_0
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    if-ne v10, v1, :cond_2

    goto :goto_0

    :goto_2
    if-nez v1, :cond_4

    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    .line 258
    :goto_3
    iget-object v1, v8, Landroidx/transition/x;->a:Ljava/util/Map;

    const-string v2, "android:changeTransform:intermediateMatrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    const-string v2, "android:changeTransform:matrix"

    if-eqz v1, :cond_5

    .line 260
    iget-object v5, v8, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_5
    iget-object v1, v8, Landroidx/transition/x;->a:Ljava/util/Map;

    const-string v5, "android:changeTransform:intermediateParentMatrix"

    .line 264
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    const-string v5, "android:changeTransform:parentMatrix"

    if-eqz v1, :cond_6

    .line 266
    iget-object v6, v8, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-interface {v6, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v11, :cond_8

    .line 1425
    iget-object v1, v9, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 1426
    iget-object v6, v9, Landroidx/transition/x;->b:Landroid/view/View;

    sget v12, Landroidx/transition/o$a;->parent_matrix:I

    invoke-virtual {v6, v12, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1428
    iget-object v6, v7, Landroidx/transition/ChangeTransform;->p:Landroid/graphics/Matrix;

    .line 1429
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 1430
    invoke-virtual {v1, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1432
    iget-object v1, v8, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    if-nez v1, :cond_7

    .line 1434
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1435
    iget-object v12, v8, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-interface {v12, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    :cond_7
    iget-object v12, v8, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Matrix;

    .line 1439
    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1440
    invoke-virtual {v1, v6}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 2290
    :cond_8
    iget-object v1, v8, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 2291
    iget-object v5, v9, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    if-nez v1, :cond_9

    .line 2294
    sget-object v1, Landroidx/transition/k;->a:Landroid/graphics/Matrix;

    :cond_9
    if-nez v2, :cond_a

    .line 2298
    sget-object v2, Landroidx/transition/k;->a:Landroid/graphics/Matrix;

    :cond_a
    move-object v5, v2

    .line 2301
    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_4

    .line 2305
    :cond_b
    iget-object v0, v9, Landroidx/transition/x;->a:Ljava/util/Map;

    const-string v2, "android:changeTransform:transforms"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/transition/ChangeTransform$c;

    .line 2308
    iget-object v12, v9, Landroidx/transition/x;->b:Landroid/view/View;

    .line 2309
    invoke-static {v12}, Landroidx/transition/ChangeTransform;->a(Landroid/view/View;)V

    const/16 v0, 0x9

    new-array v2, v0, [F

    .line 2312
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    new-array v1, v0, [F

    .line 2314
    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2315
    new-instance v13, Landroidx/transition/ChangeTransform$b;

    invoke-direct {v13, v12, v2}, Landroidx/transition/ChangeTransform$b;-><init>(Landroid/view/View;[F)V

    .line 2318
    sget-object v14, Landroidx/transition/ChangeTransform;->l:Landroid/util/Property;

    new-instance v15, Landroidx/transition/d;

    new-array v0, v0, [F

    invoke-direct {v15, v0}, Landroidx/transition/d;-><init>([F)V

    const/4 v0, 0x2

    new-array v9, v0, [[F

    aput-object v2, v9, v4

    aput-object v1, v9, v3

    invoke-static {v14, v15, v9}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 2321
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeTransform;->h()Landroidx/transition/PathMotion;

    move-result-object v14

    aget v15, v2, v0

    const/16 v16, 0x5

    aget v2, v2, v16

    aget v3, v1, v0

    aget v1, v1, v16

    invoke-virtual {v14, v15, v2, v3, v1}, Landroidx/transition/PathMotion;->a(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 2324
    sget-object v2, Landroidx/transition/ChangeTransform;->m:Landroid/util/Property;

    invoke-static {v2, v1}, Landroidx/transition/n;->a(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v9, v0, v4

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2326
    invoke-static {v13, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 2331
    new-instance v14, Landroidx/transition/ChangeTransform$3;

    move-object v0, v14

    move-object/from16 v1, p0

    move v2, v11

    move-object v3, v5

    move-object v4, v12

    move-object v5, v6

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Landroidx/transition/ChangeTransform$3;-><init>(Landroidx/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroidx/transition/ChangeTransform$c;Landroidx/transition/ChangeTransform$b;)V

    .line 2372
    invoke-virtual {v9, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2373
    invoke-static {v9, v14}, Landroidx/transition/a;->a(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    move-object v0, v9

    :goto_4
    if-eqz v11, :cond_c

    if-eqz v0, :cond_c

    .line 278
    iget-boolean v1, v7, Landroidx/transition/ChangeTransform;->a:Z

    if-eqz v1, :cond_c

    .line 279
    invoke-direct/range {p0 .. p3}, Landroidx/transition/ChangeTransform;->b(Landroid/view/ViewGroup;Landroidx/transition/x;Landroidx/transition/x;)V

    goto :goto_5

    .line 280
    :cond_c
    sget-boolean v1, Landroidx/transition/ChangeTransform;->n:Z

    if-nez v1, :cond_d

    .line 282
    iget-object v1, v8, Landroidx/transition/x;->b:Landroid/view/View;

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    :cond_d
    :goto_5
    return-object v0
.end method

.method public final a(Landroidx/transition/x;)V
    .locals 1

    .line 228
    invoke-direct {p0, p1}, Landroidx/transition/ChangeTransform;->d(Landroidx/transition/x;)V

    .line 229
    sget-boolean v0, Landroidx/transition/ChangeTransform;->n:Z

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p1, Landroidx/transition/x;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p1, p1, Landroidx/transition/x;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final a()[Ljava/lang/String;
    .locals 1

    .line 195
    sget-object v0, Landroidx/transition/ChangeTransform;->k:[Ljava/lang/String;

    return-object v0
.end method

.method public final b(Landroidx/transition/x;)V
    .locals 0

    .line 240
    invoke-direct {p0, p1}, Landroidx/transition/ChangeTransform;->d(Landroidx/transition/x;)V

    return-void
.end method
