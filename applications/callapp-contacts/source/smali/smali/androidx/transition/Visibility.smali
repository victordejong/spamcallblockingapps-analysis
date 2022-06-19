.class public abstract Landroidx/transition/Visibility;
.super Landroidx/transition/Transition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Visibility$a;,
        Landroidx/transition/Visibility$b;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    .line 81
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/Visibility;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x3

    .line 98
    iput v0, p0, Landroidx/transition/Visibility;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 106
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    .line 98
    iput v0, p0, Landroidx/transition/Visibility;->k:I

    .line 107
    sget-object v0, Landroidx/transition/s;->e:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 109
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v0, "transitionVisibilityMode"

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v1}, Landroidx/core/content/res/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 112
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_0

    .line 114
    invoke-virtual {p0, p2}, Landroidx/transition/Visibility;->a(I)V

    :cond_0
    return-void
.end method

.method private static b(Landroidx/transition/x;Landroidx/transition/x;)Landroidx/transition/Visibility$b;
    .locals 7

    .line 195
    new-instance v0, Landroidx/transition/Visibility$b;

    invoke-direct {v0}, Landroidx/transition/Visibility$b;-><init>()V

    const/4 v1, 0x0

    .line 196
    iput-boolean v1, v0, Landroidx/transition/Visibility$b;->a:Z

    .line 197
    iput-boolean v1, v0, Landroidx/transition/Visibility$b;->b:Z

    const-string v2, "android:visibility:parent"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string v5, "android:visibility:visibility"

    if-eqz p0, :cond_0

    .line 198
    iget-object v6, p0, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 199
    iget-object v6, p0, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Landroidx/transition/Visibility$b;->c:I

    .line 200
    iget-object v6, p0, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v0, Landroidx/transition/Visibility$b;->e:Landroid/view/ViewGroup;

    goto :goto_0

    .line 202
    :cond_0
    iput v4, v0, Landroidx/transition/Visibility$b;->c:I

    .line 203
    iput-object v3, v0, Landroidx/transition/Visibility$b;->e:Landroid/view/ViewGroup;

    :goto_0
    if-eqz p1, :cond_1

    .line 205
    iget-object v6, p1, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 206
    iget-object v3, p1, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Landroidx/transition/Visibility$b;->d:I

    .line 207
    iget-object v3, p1, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Landroidx/transition/Visibility$b;->f:Landroid/view/ViewGroup;

    goto :goto_1

    .line 209
    :cond_1
    iput v4, v0, Landroidx/transition/Visibility$b;->d:I

    .line 210
    iput-object v3, v0, Landroidx/transition/Visibility$b;->f:Landroid/view/ViewGroup;

    :goto_1
    const/4 v2, 0x1

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 213
    iget p0, v0, Landroidx/transition/Visibility$b;->c:I

    iget p1, v0, Landroidx/transition/Visibility$b;->d:I

    if-ne p0, p1, :cond_2

    iget-object p0, v0, Landroidx/transition/Visibility$b;->e:Landroid/view/ViewGroup;

    iget-object p1, v0, Landroidx/transition/Visibility$b;->f:Landroid/view/ViewGroup;

    if-ne p0, p1, :cond_2

    return-object v0

    .line 217
    :cond_2
    iget p0, v0, Landroidx/transition/Visibility$b;->c:I

    iget p1, v0, Landroidx/transition/Visibility$b;->d:I

    if-eq p0, p1, :cond_4

    .line 218
    iget p0, v0, Landroidx/transition/Visibility$b;->c:I

    if-nez p0, :cond_3

    .line 219
    iput-boolean v1, v0, Landroidx/transition/Visibility$b;->b:Z

    .line 220
    iput-boolean v2, v0, Landroidx/transition/Visibility$b;->a:Z

    goto :goto_2

    .line 221
    :cond_3
    iget p0, v0, Landroidx/transition/Visibility$b;->d:I

    if-nez p0, :cond_8

    .line 222
    iput-boolean v2, v0, Landroidx/transition/Visibility$b;->b:Z

    .line 223
    iput-boolean v2, v0, Landroidx/transition/Visibility$b;->a:Z

    goto :goto_2

    .line 227
    :cond_4
    iget-object p0, v0, Landroidx/transition/Visibility$b;->f:Landroid/view/ViewGroup;

    if-nez p0, :cond_5

    .line 228
    iput-boolean v1, v0, Landroidx/transition/Visibility$b;->b:Z

    .line 229
    iput-boolean v2, v0, Landroidx/transition/Visibility$b;->a:Z

    goto :goto_2

    .line 230
    :cond_5
    iget-object p0, v0, Landroidx/transition/Visibility$b;->e:Landroid/view/ViewGroup;

    if-nez p0, :cond_8

    .line 231
    iput-boolean v2, v0, Landroidx/transition/Visibility$b;->b:Z

    .line 232
    iput-boolean v2, v0, Landroidx/transition/Visibility$b;->a:Z

    goto :goto_2

    :cond_6
    if-nez p0, :cond_7

    .line 236
    iget p0, v0, Landroidx/transition/Visibility$b;->d:I

    if-nez p0, :cond_7

    .line 237
    iput-boolean v2, v0, Landroidx/transition/Visibility$b;->b:Z

    .line 238
    iput-boolean v2, v0, Landroidx/transition/Visibility$b;->a:Z

    goto :goto_2

    :cond_7
    if-nez p1, :cond_8

    .line 239
    iget p0, v0, Landroidx/transition/Visibility$b;->c:I

    if-nez p0, :cond_8

    .line 240
    iput-boolean v1, v0, Landroidx/transition/Visibility$b;->b:Z

    .line 241
    iput-boolean v2, v0, Landroidx/transition/Visibility$b;->a:Z

    :cond_8
    :goto_2
    return-object v0
.end method

.method private static d(Landroidx/transition/x;)V
    .locals 3

    .line 150
    iget-object v0, p0, Landroidx/transition/x;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 151
    iget-object v1, p0, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Landroidx/transition/x;->a:Ljava/util/Map;

    iget-object v1, p0, Landroidx/transition/x;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "android:visibility:parent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 154
    iget-object v1, p0, Landroidx/transition/x;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 155
    iget-object p0, p0, Landroidx/transition/x;->a:Ljava/util/Map;

    const-string v1, "android:visibility:screenLocation"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/x;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/x;Landroidx/transition/x;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Landroid/view/ViewGroup;Landroidx/transition/x;Landroidx/transition/x;)Landroid/animation/Animator;
    .locals 11

    .line 250
    invoke-static {p2, p3}, Landroidx/transition/Visibility;->b(Landroidx/transition/x;Landroidx/transition/x;)Landroidx/transition/Visibility$b;

    move-result-object v0

    .line 251
    iget-boolean v1, v0, Landroidx/transition/Visibility$b;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    iget-object v1, v0, Landroidx/transition/Visibility$b;->e:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroidx/transition/Visibility$b;->f:Landroid/view/ViewGroup;

    if-eqz v1, :cond_13

    .line 253
    :cond_0
    iget-boolean v1, v0, Landroidx/transition/Visibility$b;->b:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    .line 1284
    iget v0, p0, Landroidx/transition/Visibility;->k:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 1288
    iget-object v0, p3, Landroidx/transition/x;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1289
    invoke-virtual {p0, v0, v3}, Landroidx/transition/Visibility;->b(Landroid/view/View;Z)Landroidx/transition/x;

    move-result-object v1

    .line 1291
    invoke-virtual {p0, v0, v3}, Landroidx/transition/Visibility;->a(Landroid/view/View;Z)Landroidx/transition/x;

    move-result-object v0

    .line 1293
    invoke-static {v1, v0}, Landroidx/transition/Visibility;->b(Landroidx/transition/x;Landroidx/transition/x;)Landroidx/transition/Visibility$b;

    move-result-object v0

    .line 1294
    iget-boolean v0, v0, Landroidx/transition/Visibility$b;->a:Z

    if-eqz v0, :cond_2

    return-object v2

    .line 1298
    :cond_2
    iget-object v0, p3, Landroidx/transition/x;->b:Landroid/view/View;

    invoke-virtual {p0, p1, v0, p2, p3}, Landroidx/transition/Visibility;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/x;Landroidx/transition/x;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v2

    .line 257
    :cond_4
    iget v0, v0, Landroidx/transition/Visibility$b;->d:I

    .line 1343
    iget v1, p0, Landroidx/transition/Visibility;->k:I

    const/4 v5, 0x2

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_13

    if-eqz p2, :cond_13

    .line 1352
    iget-object v1, p2, Landroidx/transition/x;->b:Landroid/view/View;

    if-eqz p3, :cond_5

    .line 1353
    iget-object p3, p3, Landroidx/transition/x;->b:Landroid/view/View;

    goto :goto_1

    :cond_5
    move-object p3, v2

    .line 1358
    :goto_1
    sget v6, Landroidx/transition/o$a;->save_overlay_view:I

    invoke-virtual {v1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eqz v6, :cond_6

    move-object p3, v2

    const/4 v7, 0x1

    goto/16 :goto_8

    :cond_6
    if-eqz p3, :cond_9

    .line 1368
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    const/4 v6, 0x4

    if-ne v0, v6, :cond_8

    goto :goto_2

    :cond_8
    if-ne v1, p3, :cond_a

    :goto_2
    move-object v6, p3

    move-object p3, v2

    goto :goto_4

    :cond_9
    :goto_3
    if-eqz p3, :cond_a

    move-object v6, v2

    :goto_4
    const/4 v7, 0x0

    goto :goto_5

    :cond_a
    move-object p3, v2

    move-object v6, p3

    const/4 v7, 0x1

    :goto_5
    if-eqz v7, :cond_d

    .line 1393
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_b

    goto :goto_6

    .line 1396
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/view/View;

    if-eqz v7, :cond_d

    .line 1397
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1398
    invoke-virtual {p0, v7, v4}, Landroidx/transition/Visibility;->a(Landroid/view/View;Z)Landroidx/transition/x;

    move-result-object v8

    .line 1399
    invoke-virtual {p0, v7, v4}, Landroidx/transition/Visibility;->b(Landroid/view/View;Z)Landroidx/transition/x;

    move-result-object v9

    .line 1402
    invoke-static {v8, v9}, Landroidx/transition/Visibility;->b(Landroidx/transition/x;Landroidx/transition/x;)Landroidx/transition/Visibility$b;

    move-result-object v8

    .line 1403
    iget-boolean v8, v8, Landroidx/transition/Visibility$b;->a:Z

    if-nez v8, :cond_c

    .line 1404
    invoke-static {p1, v1, v7}, Landroidx/transition/w;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object p3

    goto :goto_7

    .line 1407
    :cond_c
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    .line 1408
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_d

    const/4 v7, -0x1

    if-eq v8, v7, :cond_d

    .line 1409
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_d

    iget-boolean v7, p0, Landroidx/transition/Visibility;->h:Z

    if-eqz v7, :cond_d

    :goto_6
    move-object p3, v6

    const/4 v7, 0x0

    move-object v6, v1

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v7, 0x0

    move-object v10, v6

    move-object v6, p3

    move-object p3, v10

    :goto_8
    if-eqz v6, :cond_11

    if-nez v7, :cond_e

    .line 1424
    iget-object p3, p2, Landroidx/transition/x;->a:Ljava/util/Map;

    const-string v0, "android:visibility:screenLocation"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    .line 1425
    aget v0, p3, v3

    .line 1426
    aget p3, p3, v4

    new-array v2, v5, [I

    .line 1428
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1429
    aget v3, v2, v3

    sub-int/2addr v0, v3

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v6, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1430
    aget v0, v2, v4

    sub-int/2addr p3, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {v6, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1431
    invoke-static {p1}, Landroidx/transition/ad;->a(Landroid/view/ViewGroup;)Landroidx/transition/ac;

    move-result-object p3

    invoke-interface {p3, v6}, Landroidx/transition/ac;->a(Landroid/view/View;)V

    .line 1433
    :cond_e
    invoke-virtual {p0, p1, v6, p2}, Landroidx/transition/Visibility;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/x;)Landroid/animation/Animator;

    move-result-object p2

    if-nez v7, :cond_10

    if-nez p2, :cond_f

    .line 1436
    invoke-static {p1}, Landroidx/transition/ad;->a(Landroid/view/ViewGroup;)Landroidx/transition/ac;

    move-result-object p1

    invoke-interface {p1, v6}, Landroidx/transition/ac;->b(Landroid/view/View;)V

    goto :goto_9

    .line 1438
    :cond_f
    sget p3, Landroidx/transition/o$a;->save_overlay_view:I

    invoke-virtual {v1, p3, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1441
    new-instance p3, Landroidx/transition/Visibility$1;

    invoke-direct {p3, p0, p1, v6, v1}, Landroidx/transition/Visibility$1;-><init>(Landroidx/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, p3}, Landroidx/transition/Visibility;->a(Landroidx/transition/Transition$c;)Landroidx/transition/Transition;

    :cond_10
    :goto_9
    return-object p2

    :cond_11
    if-eqz p3, :cond_13

    .line 1470
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 1471
    invoke-static {p3, v3}, Landroidx/transition/ai;->a(Landroid/view/View;I)V

    .line 1472
    invoke-virtual {p0, p1, p3, p2}, Landroidx/transition/Visibility;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/x;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 1474
    new-instance p2, Landroidx/transition/Visibility$a;

    invoke-direct {p2, p3, v0, v4}, Landroidx/transition/Visibility$a;-><init>(Landroid/view/View;IZ)V

    .line 1476
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1477
    invoke-static {p1, p2}, Landroidx/transition/a;->a(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 1478
    invoke-virtual {p0, p2}, Landroidx/transition/Visibility;->a(Landroidx/transition/Transition$c;)Landroidx/transition/Transition;

    goto :goto_a

    .line 1480
    :cond_12
    invoke-static {p3, v1}, Landroidx/transition/ai;->a(Landroid/view/View;I)V

    :goto_a
    return-object p1

    :cond_13
    return-object v2
.end method

.method public final a(I)V
    .locals 1

    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    .line 129
    iput p1, p0, Landroidx/transition/Visibility;->k:I

    return-void

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroidx/transition/x;)V
    .locals 0

    .line 160
    invoke-static {p1}, Landroidx/transition/Visibility;->d(Landroidx/transition/x;)V

    return-void
.end method

.method public final a(Landroidx/transition/x;Landroidx/transition/x;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 515
    iget-object v1, p2, Landroidx/transition/x;->a:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    .line 516
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p1, Landroidx/transition/x;->a:Ljava/util/Map;

    .line 517
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    .line 522
    :cond_1
    invoke-static {p1, p2}, Landroidx/transition/Visibility;->b(Landroidx/transition/x;Landroidx/transition/x;)Landroidx/transition/Visibility$b;

    move-result-object p1

    .line 523
    iget-boolean p2, p1, Landroidx/transition/Visibility$b;->a:Z

    if-eqz p2, :cond_3

    iget p2, p1, Landroidx/transition/Visibility$b;->c:I

    if-eqz p2, :cond_2

    iget p1, p1, Landroidx/transition/Visibility$b;->d:I

    if-nez p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public final a()[Ljava/lang/String;
    .locals 1

    .line 146
    sget-object v0, Landroidx/transition/Visibility;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroidx/transition/x;)V
    .locals 0

    .line 165
    invoke-static {p1}, Landroidx/transition/Visibility;->d(Landroidx/transition/x;)V

    return-void
.end method

.method public final l()I
    .locals 1

    .line 140
    iget v0, p0, Landroidx/transition/Visibility;->k:I

    return v0
.end method
