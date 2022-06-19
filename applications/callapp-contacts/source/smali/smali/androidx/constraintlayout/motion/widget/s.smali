.class final Landroidx/constraintlayout/motion/widget/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final v:[[F

.field private static final w:[[F


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:F

.field f:F

.field g:F

.field h:F

.field i:Z

.field j:[F

.field k:F

.field l:F

.field final m:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field n:F

.field o:F

.field p:Z

.field q:F

.field r:I

.field s:F

.field private t:I

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x7

    new-array v0, v0, [[F

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 59
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [F

    fill-array-data v2, :array_5

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [F

    fill-array-data v2, :array_6

    const/4 v8, 0x6

    aput-object v2, v0, v8

    sput-object v0, Landroidx/constraintlayout/motion/widget/s;->v:[[F

    new-array v0, v8, [[F

    new-array v2, v1, [F

    .line 68
    fill-array-data v2, :array_7

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v6

    new-array v1, v1, [F

    fill-array-data v1, :array_c

    aput-object v1, v0, v7

    sput-object v0, Landroidx/constraintlayout/motion/widget/s;->w:[[F

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_7
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_b
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Landroidx/constraintlayout/motion/widget/s;->t:I

    .line 46
    iput v0, p0, Landroidx/constraintlayout/motion/widget/s;->u:I

    .line 47
    iput v0, p0, Landroidx/constraintlayout/motion/widget/s;->a:I

    const/4 v1, -0x1

    .line 48
    iput v1, p0, Landroidx/constraintlayout/motion/widget/s;->b:I

    .line 49
    iput v1, p0, Landroidx/constraintlayout/motion/widget/s;->c:I

    .line 50
    iput v1, p0, Landroidx/constraintlayout/motion/widget/s;->d:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 51
    iput v1, p0, Landroidx/constraintlayout/motion/widget/s;->e:F

    .line 52
    iput v1, p0, Landroidx/constraintlayout/motion/widget/s;->f:F

    const/4 v1, 0x0

    .line 53
    iput v1, p0, Landroidx/constraintlayout/motion/widget/s;->g:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 54
    iput v1, p0, Landroidx/constraintlayout/motion/widget/s;->h:F

    .line 55
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/s;->i:Z

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 56
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/s;->j:[F

    const/high16 v2, 0x40800000    # 4.0f

    .line 92
    iput v2, p0, Landroidx/constraintlayout/motion/widget/s;->n:F

    const v2, 0x3f99999a    # 1.2f

    .line 93
    iput v2, p0, Landroidx/constraintlayout/motion/widget/s;->o:F

    const/4 v2, 0x1

    .line 94
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/s;->p:Z

    .line 95
    iput v1, p0, Landroidx/constraintlayout/motion/widget/s;->q:F

    .line 96
    iput v0, p0, Landroidx/constraintlayout/motion/widget/s;->r:I

    const/high16 v0, 0x41200000    # 10.0f

    .line 99
    iput v0, p0, Landroidx/constraintlayout/motion/widget/s;->s:F

    .line 102
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 103
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 1124
    sget-object p3, Landroidx/constraintlayout/widget/e$b;->OnSwipe:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1125
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/s;->a(Landroid/content/res/TypedArray;)V

    .line 1126
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 7

    .line 130
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_c

    .line 132
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 133
    sget v4, Landroidx/constraintlayout/widget/e$b;->OnSwipe_touchAnchorId:I

    if-ne v3, v4, :cond_0

    .line 134
    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->b:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->b:I

    goto/16 :goto_1

    .line 135
    :cond_0
    sget v4, Landroidx/constraintlayout/widget/e$b;->OnSwipe_touchAnchorSide:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    .line 136
    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->t:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->t:I

    .line 137
    sget-object v4, Landroidx/constraintlayout/motion/widget/s;->v:[[F

    aget-object v6, v4, v3

    aget v6, v6, v1

    iput v6, p0, Landroidx/constraintlayout/motion/widget/s;->f:F

    .line 138
    aget-object v3, v4, v3

    aget v3, v3, v5

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->e:F

    goto/16 :goto_1

    .line 139
    :cond_1
    sget v4, Landroidx/constraintlayout/widget/e$b;->OnSwipe_dragDirection:I

    if-ne v3, v4, :cond_2

    .line 140
    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->u:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->u:I

    .line 141
    sget-object v4, Landroidx/constraintlayout/motion/widget/s;->w:[[F

    aget-object v6, v4, v3

    aget v6, v6, v1

    iput v6, p0, Landroidx/constraintlayout/motion/widget/s;->g:F

    .line 142
    aget-object v3, v4, v3

    aget v3, v3, v5

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->h:F

    goto/16 :goto_1

    .line 143
    :cond_2
    sget v4, Landroidx/constraintlayout/widget/e$b;->OnSwipe_maxVelocity:I

    if-ne v3, v4, :cond_3

    .line 144
    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->n:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->n:F

    goto :goto_1

    .line 145
    :cond_3
    sget v4, Landroidx/constraintlayout/widget/e$b;->OnSwipe_maxAcceleration:I

    if-ne v3, v4, :cond_4

    .line 146
    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->o:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->o:F

    goto :goto_1

    .line 147
    :cond_4
    sget v4, Landroidx/constraintlayout/widget/e$b;->OnSwipe_moveWhenScrollAtTop:I

    if-ne v3, v4, :cond_5

    .line 148
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/s;->p:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/s;->p:Z

    goto :goto_1

    .line 149
    :cond_5
    sget v4, Landroidx/constraintlayout/widget/e$b;->OnSwipe_dragScale:I

    if-ne v3, v4, :cond_6

    .line 150
    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->q:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->q:F

    goto :goto_1

    .line 151
    :cond_6
    sget v4, Landroidx/constraintlayout/widget/e$b;->OnSwipe_dragThreshold:I

    if-ne v3, v4, :cond_7

    .line 152
    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->s:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->s:F

    goto :goto_1

    .line 153
    :cond_7
    sget v4, Landroidx/constraintlayout/widget/e$b;->OnSwipe_touchRegionId:I

    if-ne v3, v4, :cond_8

    .line 154
    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->c:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->c:I

    goto :goto_1

    .line 155
    :cond_8
    sget v4, Landroidx/constraintlayout/widget/e$b;->OnSwipe_onTouchUp:I

    if-ne v3, v4, :cond_9

    .line 156
    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->a:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->a:I

    goto :goto_1

    .line 157
    :cond_9
    sget v4, Landroidx/constraintlayout/widget/e$b;->OnSwipe_nestedScrollFlags:I

    if-ne v3, v4, :cond_a

    .line 158
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->r:I

    goto :goto_1

    .line 159
    :cond_a
    sget v4, Landroidx/constraintlayout/widget/e$b;->OnSwipe_limitBoundsTo:I

    if-ne v3, v4, :cond_b

    .line 160
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->d:I

    :cond_b
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method


# virtual methods
.method final a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    .line 501
    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->c:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 504
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 508
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p2
.end method

.method final a()V
    .locals 4

    .line 402
    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 403
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot find TouchAnchorId @id/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/motion/widget/s;->b:I

    invoke-static {v2, v3}, Landroidx/constraintlayout/motion/widget/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TouchResponse"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 408
    :cond_1
    :goto_0
    instance-of v1, v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_2

    .line 409
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 410
    new-instance v1, Landroidx/constraintlayout/motion/widget/s$1;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/motion/widget/s$1;-><init>(Landroidx/constraintlayout/motion/widget/s;)V

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 416
    new-instance v1, Landroidx/constraintlayout/motion/widget/s$2;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/motion/widget/s$2;-><init>(Landroidx/constraintlayout/motion/widget/s;)V

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$b;)V

    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 7

    const/4 v0, 0x6

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-eqz p1, :cond_0

    .line 108
    sget-object p1, Landroidx/constraintlayout/motion/widget/s;->w:[[F

    aget-object v1, p1, v1

    aput-object v1, p1, v2

    .line 109
    aget-object v1, p1, v5

    aput-object v1, p1, v4

    .line 110
    sget-object p1, Landroidx/constraintlayout/motion/widget/s;->v:[[F

    aget-object v1, p1, v5

    aput-object v1, p1, v4

    .line 111
    aget-object v1, p1, v3

    aput-object v1, p1, v0

    goto :goto_0

    .line 113
    :cond_0
    sget-object p1, Landroidx/constraintlayout/motion/widget/s;->w:[[F

    aget-object v6, p1, v5

    aput-object v6, p1, v2

    .line 114
    aget-object v1, p1, v1

    aput-object v1, p1, v4

    .line 115
    sget-object p1, Landroidx/constraintlayout/motion/widget/s;->v:[[F

    aget-object v1, p1, v3

    aput-object v1, p1, v4

    .line 116
    aget-object v1, p1, v5

    aput-object v1, p1, v0

    .line 118
    :goto_0
    sget-object p1, Landroidx/constraintlayout/motion/widget/s;->v:[[F

    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->t:I

    aget-object v1, p1, v0

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, p0, Landroidx/constraintlayout/motion/widget/s;->f:F

    .line 119
    aget-object p1, p1, v0

    aget p1, p1, v3

    iput p1, p0, Landroidx/constraintlayout/motion/widget/s;->e:F

    .line 120
    sget-object p1, Landroidx/constraintlayout/motion/widget/s;->w:[[F

    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->u:I

    aget-object v1, p1, v0

    aget v1, v1, v2

    iput v1, p0, Landroidx/constraintlayout/motion/widget/s;->g:F

    .line 121
    aget-object p1, p1, v0

    aget p1, p1, v3

    iput p1, p0, Landroidx/constraintlayout/motion/widget/s;->h:F

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/constraintlayout/motion/widget/s;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/s;->h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
