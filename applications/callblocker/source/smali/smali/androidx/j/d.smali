.class public Landroidx/j/d;
.super Landroidx/j/aj;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/j/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Landroidx/j/aj;-><init>()V

    .line 99
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Landroidx/j/aj;-><init>()V

    .line 92
    invoke-virtual {p0, p1}, Landroidx/j/d;->a(I)V

    .line 93
    return-void
.end method

.method private static a(Landroidx/j/s;F)F
    .locals 2

    .prologue
    .line 171
    .line 172
    if-eqz p0, :cond_0

    .line 173
    iget-object v0, p0, Landroidx/j/s;->a:Ljava/util/Map;

    const-string/jumbo v1, "android:fade:transitionAlpha"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 174
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 178
    :cond_0
    return p1
.end method

.method private a(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 3

    .prologue
    .line 124
    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 143
    :goto_0
    return-object v0

    .line 127
    :cond_0
    invoke-static {p1, p2}, Landroidx/j/ac;->a(Landroid/view/View;F)V

    .line 128
    sget-object v0, Landroidx/j/ac;->a:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 133
    new-instance v1, Landroidx/j/d$a;

    invoke-direct {v1, p1}, Landroidx/j/d$a;-><init>(Landroid/view/View;)V

    .line 134
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 135
    new-instance v1, Landroidx/j/d$1;

    invoke-direct {v1, p0, p1}, Landroidx/j/d$1;-><init>(Landroidx/j/d;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroidx/j/d;->a(Landroidx/j/m$c;)Landroidx/j/m;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/s;Landroidx/j/s;)Landroid/animation/Animator;
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 155
    invoke-static {p3, v0}, Landroidx/j/d;->a(Landroidx/j/s;F)F

    move-result v1

    .line 156
    cmpl-float v2, v1, v3

    if-nez v2, :cond_0

    .line 159
    :goto_0
    invoke-direct {p0, p2, v0, v3}, Landroidx/j/d;->a(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a(Landroidx/j/s;)V
    .locals 3

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroidx/j/aj;->a(Landroidx/j/s;)V

    .line 116
    iget-object v0, p1, Landroidx/j/s;->a:Ljava/util/Map;

    const-string/jumbo v1, "android:fade:transitionAlpha"

    iget-object v2, p1, Landroidx/j/s;->b:Landroid/view/View;

    .line 117
    invoke-static {v2}, Landroidx/j/ac;->c(Landroid/view/View;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 116
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public b(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/s;Landroidx/j/s;)Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 165
    invoke-static {p2}, Landroidx/j/ac;->d(Landroid/view/View;)V

    .line 166
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, v0}, Landroidx/j/d;->a(Landroidx/j/s;F)F

    move-result v0

    .line 167
    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroidx/j/d;->a(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
