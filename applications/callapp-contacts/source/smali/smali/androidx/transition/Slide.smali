.class public Landroidx/transition/Slide;
.super Landroidx/transition/Visibility;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Slide$c;,
        Landroidx/transition/Slide$b;,
        Landroidx/transition/Slide$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/animation/TimeInterpolator;

.field private static final k:Landroid/animation/TimeInterpolator;

.field private static final n:Landroidx/transition/Slide$a;

.field private static final o:Landroidx/transition/Slide$a;

.field private static final p:Landroidx/transition/Slide$a;

.field private static final q:Landroidx/transition/Slide$a;

.field private static final r:Landroidx/transition/Slide$a;

.field private static final s:Landroidx/transition/Slide$a;


# instance fields
.field private l:Landroidx/transition/Slide$a;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->a:Landroid/animation/TimeInterpolator;

    .line 57
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->k:Landroid/animation/TimeInterpolator;

    .line 94
    new-instance v0, Landroidx/transition/Slide$1;

    invoke-direct {v0}, Landroidx/transition/Slide$1;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->n:Landroidx/transition/Slide$a;

    .line 101
    new-instance v0, Landroidx/transition/Slide$2;

    invoke-direct {v0}, Landroidx/transition/Slide$2;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->o:Landroidx/transition/Slide$a;

    .line 116
    new-instance v0, Landroidx/transition/Slide$3;

    invoke-direct {v0}, Landroidx/transition/Slide$3;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->p:Landroidx/transition/Slide$a;

    .line 123
    new-instance v0, Landroidx/transition/Slide$4;

    invoke-direct {v0}, Landroidx/transition/Slide$4;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->q:Landroidx/transition/Slide$a;

    .line 130
    new-instance v0, Landroidx/transition/Slide$5;

    invoke-direct {v0}, Landroidx/transition/Slide$5;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->r:Landroidx/transition/Slide$a;

    .line 145
    new-instance v0, Landroidx/transition/Slide$6;

    invoke-direct {v0}, Landroidx/transition/Slide$6;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->s:Landroidx/transition/Slide$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    .line 59
    sget-object v0, Landroidx/transition/Slide;->s:Landroidx/transition/Slide$a;

    iput-object v0, p0, Landroidx/transition/Slide;->l:Landroidx/transition/Slide$a;

    const/16 v0, 0x50

    .line 60
    iput v0, p0, Landroidx/transition/Slide;->m:I

    .line 157
    invoke-direct {p0, v0}, Landroidx/transition/Slide;->b(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 163
    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    .line 59
    sget-object v0, Landroidx/transition/Slide;->s:Landroidx/transition/Slide$a;

    iput-object v0, p0, Landroidx/transition/Slide;->l:Landroidx/transition/Slide$a;

    const/16 v0, 0x50

    .line 60
    iput v0, p0, Landroidx/transition/Slide;->m:I

    .line 164
    invoke-direct {p0, p1}, Landroidx/transition/Slide;->b(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 170
    invoke-direct {p0, p1, p2}, Landroidx/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    sget-object v0, Landroidx/transition/Slide;->s:Landroidx/transition/Slide$a;

    iput-object v0, p0, Landroidx/transition/Slide;->l:Landroidx/transition/Slide$a;

    const/16 v0, 0x50

    .line 60
    iput v0, p0, Landroidx/transition/Slide;->m:I

    .line 171
    sget-object v1, Landroidx/transition/s;->h:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 172
    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "slideEdge"

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Landroidx/core/content/res/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 174
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    invoke-direct {p0, p2}, Landroidx/transition/Slide;->b(I)V

    return-void
.end method

.method private b(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/16 v0, 0x30

    if-eq p1, v0, :cond_3

    const/16 v0, 0x50

    if-eq p1, v0, :cond_2

    const v0, 0x800003

    if-eq p1, v0, :cond_1

    const v0, 0x800005

    if-ne p1, v0, :cond_0

    .line 224
    sget-object v0, Landroidx/transition/Slide;->r:Landroidx/transition/Slide$a;

    iput-object v0, p0, Landroidx/transition/Slide;->l:Landroidx/transition/Slide$a;

    goto :goto_0

    .line 227
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid slide direction"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 221
    :cond_1
    sget-object v0, Landroidx/transition/Slide;->o:Landroidx/transition/Slide$a;

    iput-object v0, p0, Landroidx/transition/Slide;->l:Landroidx/transition/Slide$a;

    goto :goto_0

    .line 218
    :cond_2
    sget-object v0, Landroidx/transition/Slide;->s:Landroidx/transition/Slide$a;

    iput-object v0, p0, Landroidx/transition/Slide;->l:Landroidx/transition/Slide$a;

    goto :goto_0

    .line 212
    :cond_3
    sget-object v0, Landroidx/transition/Slide;->p:Landroidx/transition/Slide$a;

    iput-object v0, p0, Landroidx/transition/Slide;->l:Landroidx/transition/Slide$a;

    goto :goto_0

    .line 215
    :cond_4
    sget-object v0, Landroidx/transition/Slide;->q:Landroidx/transition/Slide$a;

    iput-object v0, p0, Landroidx/transition/Slide;->l:Landroidx/transition/Slide$a;

    goto :goto_0

    .line 209
    :cond_5
    sget-object v0, Landroidx/transition/Slide;->n:Landroidx/transition/Slide$a;

    iput-object v0, p0, Landroidx/transition/Slide;->l:Landroidx/transition/Slide$a;

    .line 229
    :goto_0
    iput p1, p0, Landroidx/transition/Slide;->m:I

    .line 230
    new-instance v0, Landroidx/transition/r;

    invoke-direct {v0}, Landroidx/transition/r;-><init>()V

    .line 1051
    iput p1, v0, Landroidx/transition/r;->a:I

    .line 232
    invoke-virtual {p0, v0}, Landroidx/transition/Slide;->a(Landroidx/transition/v;)V

    return-void
.end method

.method private static d(Landroidx/transition/x;)V
    .locals 2

    .line 180
    iget-object v0, p0, Landroidx/transition/x;->b:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 183
    iget-object p0, p0, Landroidx/transition/x;->a:Ljava/util/Map;

    const-string v0, "android:slide:screenPosition"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/x;)Landroid/animation/Animator;
    .locals 11

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 272
    :cond_0
    iget-object v0, p3, Landroidx/transition/x;->a:Ljava/util/Map;

    const-string v1, "android:slide:screenPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 273
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v5

    .line 274
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v6

    .line 275
    iget-object v1, p0, Landroidx/transition/Slide;->l:Landroidx/transition/Slide$a;

    invoke-interface {v1, p1, p2}, Landroidx/transition/Slide$a;->a(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v7

    .line 276
    iget-object v1, p0, Landroidx/transition/Slide;->l:Landroidx/transition/Slide$a;

    invoke-interface {v1, p1, p2}, Landroidx/transition/Slide$a;->b(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v8

    const/4 p1, 0x0

    .line 277
    aget v3, v0, p1

    const/4 p1, 0x1

    aget v4, v0, p1

    sget-object v9, Landroidx/transition/Slide;->k:Landroid/animation/TimeInterpolator;

    move-object v1, p2

    move-object v2, p3

    move-object v10, p0

    .line 278
    invoke-static/range {v1 .. v10}, Landroidx/transition/z;->a(Landroid/view/View;Landroidx/transition/x;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/x;Landroidx/transition/x;)Landroid/animation/Animator;
    .locals 10

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 255
    :cond_0
    iget-object p3, p4, Landroidx/transition/x;->a:Ljava/util/Map;

    const-string v0, "android:slide:screenPosition"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    .line 256
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v6

    .line 257
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .line 258
    iget-object v0, p0, Landroidx/transition/Slide;->l:Landroidx/transition/Slide$a;

    invoke-interface {v0, p1, p2}, Landroidx/transition/Slide$a;->a(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v4

    .line 259
    iget-object v0, p0, Landroidx/transition/Slide;->l:Landroidx/transition/Slide$a;

    invoke-interface {v0, p1, p2}, Landroidx/transition/Slide$a;->b(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v5

    const/4 p1, 0x0

    .line 260
    aget v2, p3, p1

    const/4 p1, 0x1

    aget v3, p3, p1

    sget-object v8, Landroidx/transition/Slide;->a:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p4

    move-object v9, p0

    .line 261
    invoke-static/range {v0 .. v9}, Landroidx/transition/z;->a(Landroid/view/View;Landroidx/transition/x;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroidx/transition/x;)V
    .locals 0

    .line 188
    invoke-super {p0, p1}, Landroidx/transition/Visibility;->a(Landroidx/transition/x;)V

    .line 189
    invoke-static {p1}, Landroidx/transition/Slide;->d(Landroidx/transition/x;)V

    return-void
.end method

.method public final b(Landroidx/transition/x;)V
    .locals 0

    .line 194
    invoke-super {p0, p1}, Landroidx/transition/Visibility;->b(Landroidx/transition/x;)V

    .line 195
    invoke-static {p1}, Landroidx/transition/Slide;->d(Landroidx/transition/x;)V

    return-void
.end method
