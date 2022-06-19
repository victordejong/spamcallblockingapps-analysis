.class public Landroidx/transition/Fade;
.super Landroidx/transition/Visibility;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Fade$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 92
    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    .line 93
    invoke-virtual {p0, p1}, Landroidx/transition/Fade;->a(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 105
    invoke-direct {p0, p1, p2}, Landroidx/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    sget-object v0, Landroidx/transition/s;->f:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 108
    check-cast p2, Landroid/content/res/XmlResourceParser;

    .line 109
    invoke-virtual {p0}, Landroidx/transition/Fade;->l()I

    move-result v0

    const-string v1, "fadingMode"

    const/4 v2, 0x0

    .line 108
    invoke-static {p1, p2, v1, v2, v0}, Landroidx/core/content/res/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 110
    invoke-virtual {p0, p2}, Landroidx/transition/Fade;->a(I)V

    .line 111
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static a(Landroidx/transition/x;F)F
    .locals 1

    if-eqz p0, :cond_0

    .line 176
    iget-object p0, p0, Landroidx/transition/x;->a:Ljava/util/Map;

    const-string v0, "android:fade:transitionAlpha"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_0

    .line 178
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :cond_0
    return p1
.end method

.method private a(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 2

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 128
    :cond_0
    invoke-static {p1, p2}, Landroidx/transition/ai;->a(Landroid/view/View;F)V

    .line 129
    sget-object p2, Landroidx/transition/ai;->a:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 134
    new-instance p3, Landroidx/transition/Fade$a;

    invoke-direct {p3, p1}, Landroidx/transition/Fade$a;-><init>(Landroid/view/View;)V

    .line 135
    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 136
    new-instance p3, Landroidx/transition/Fade$1;

    invoke-direct {p3, p0, p1}, Landroidx/transition/Fade$1;-><init>(Landroidx/transition/Fade;Landroid/view/View;)V

    invoke-virtual {p0, p3}, Landroidx/transition/Fade;->a(Landroidx/transition/Transition$c;)Landroidx/transition/Transition;

    return-object p2
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/x;)Landroid/animation/Animator;
    .locals 0

    .line 168
    invoke-static {p2}, Landroidx/transition/ai;->d(Landroid/view/View;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 169
    invoke-static {p3, p1}, Landroidx/transition/Fade;->a(Landroidx/transition/x;F)F

    move-result p1

    const/4 p3, 0x0

    .line 170
    invoke-direct {p0, p2, p1, p3}, Landroidx/transition/Fade;->a(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/x;Landroidx/transition/x;)Landroid/animation/Animator;
    .locals 1

    const/4 p1, 0x0

    .line 157
    invoke-static {p3, p1}, Landroidx/transition/Fade;->a(Landroidx/transition/x;F)F

    move-result p3

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float v0, p3, p4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    .line 161
    :goto_0
    invoke-direct {p0, p2, p1, p4}, Landroidx/transition/Fade;->a(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroidx/transition/x;)V
    .locals 2

    .line 116
    invoke-super {p0, p1}, Landroidx/transition/Visibility;->a(Landroidx/transition/x;)V

    .line 117
    iget-object v0, p1, Landroidx/transition/x;->a:Ljava/util/Map;

    iget-object p1, p1, Landroidx/transition/x;->b:Landroid/view/View;

    .line 118
    invoke-static {p1}, Landroidx/transition/ai;->c(Landroid/view/View;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "android:fade:transitionAlpha"

    .line 117
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
