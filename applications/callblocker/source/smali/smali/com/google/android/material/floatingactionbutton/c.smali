.class Lcom/google/android/material/floatingactionbutton/c;
.super Lcom/google/android/material/floatingactionbutton/b;
.source "FloatingActionButtonImplLollipop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/c$a;
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/p/b;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/b;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/p/b;)V

    .line 54
    return-void
.end method

.method private a(FF)Landroid/animation/Animator;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 156
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 157
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/c;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string/jumbo v2, "elevation"

    new-array v3, v4, [F

    aput p1, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/c;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v4, v4, [F

    aput p2, v4, v5

    .line 159
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x64

    .line 160
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 158
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 161
    sget-object v1, Lcom/google/android/material/floatingactionbutton/c;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 162
    return-object v0
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getElevation()F

    move-result v0

    return v0
.end method

.method a(ILandroid/content/res/ColorStateList;)Lcom/google/android/material/floatingactionbutton/a;
    .locals 6

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 217
    new-instance v2, Lcom/google/android/material/floatingactionbutton/a;

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->b:Lcom/google/android/material/q/k;

    invoke-static {v0}, Landroidx/core/g/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/q/k;

    invoke-direct {v2, v0}, Lcom/google/android/material/floatingactionbutton/a;-><init>(Lcom/google/android/material/q/k;)V

    .line 218
    sget v0, Lcom/google/android/material/a$c;->design_fab_stroke_top_outer_color:I

    .line 219
    invoke-static {v1, v0}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v0

    sget v3, Lcom/google/android/material/a$c;->design_fab_stroke_top_inner_color:I

    .line 220
    invoke-static {v1, v3}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v3

    sget v4, Lcom/google/android/material/a$c;->design_fab_stroke_end_inner_color:I

    .line 221
    invoke-static {v1, v4}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v4

    sget v5, Lcom/google/android/material/a$c;->design_fab_stroke_end_outer_color:I

    .line 222
    invoke-static {v1, v5}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v1

    .line 218
    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/google/android/material/floatingactionbutton/a;->a(IIII)V

    .line 223
    int-to-float v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/material/floatingactionbutton/a;->a(F)V

    .line 224
    invoke-virtual {v2, p2}, Lcom/google/android/material/floatingactionbutton/a;->a(Landroid/content/res/ColorStateList;)V

    .line 225
    return-object v2
.end method

.method a(FFF)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x64

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->refreshDrawableState()V

    .line 149
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->o()V

    .line 152
    :cond_0
    return-void

    .line 108
    :cond_1
    new-instance v1, Landroid/animation/StateListAnimator;

    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    .line 111
    sget-object v0, Lcom/google/android/material/floatingactionbutton/c;->m:[I

    .line 112
    invoke-direct {p0, p1, p3}, Lcom/google/android/material/floatingactionbutton/c;->a(FF)Landroid/animation/Animator;

    move-result-object v2

    .line 111
    invoke-virtual {v1, v0, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 113
    sget-object v0, Lcom/google/android/material/floatingactionbutton/c;->n:[I

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/c;->a(FF)Landroid/animation/Animator;

    move-result-object v2

    .line 113
    invoke-virtual {v1, v0, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 116
    sget-object v0, Lcom/google/android/material/floatingactionbutton/c;->o:[I

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/c;->a(FF)Landroid/animation/Animator;

    move-result-object v2

    .line 116
    invoke-virtual {v1, v0, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 119
    sget-object v0, Lcom/google/android/material/floatingactionbutton/c;->p:[I

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/c;->a(FF)Landroid/animation/Animator;

    move-result-object v2

    .line 119
    invoke-virtual {v1, v0, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 124
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/c;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string/jumbo v4, "elevation"

    new-array v5, v9, [F

    aput p1, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v3, v4, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-gt v3, v4, :cond_2

    .line 132
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/c;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v4, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v5, v9, [F

    iget-object v6, p0, Lcom/google/android/material/floatingactionbutton/c;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 133
    invoke-virtual {v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getTranslationZ()F

    move-result v6

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 134
    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 132
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_2
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/c;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v4, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v5, v9, [F

    aput v8, v5, v7

    .line 137
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 138
    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 136
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-array v3, v7, [Landroid/animation/Animator;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/animation/Animator;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 140
    sget-object v0, Lcom/google/android/material/floatingactionbutton/c;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 141
    sget-object v0, Lcom/google/android/material/floatingactionbutton/c;->q:[I

    invoke-virtual {v1, v0, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 144
    sget-object v0, Lcom/google/android/material/floatingactionbutton/c;->r:[I

    invoke-direct {p0, v8, v8}, Lcom/google/android/material/floatingactionbutton/c;->a(FF)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 146
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    goto/16 :goto_0
.end method

.method a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->u()Lcom/google/android/material/q/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->c:Lcom/google/android/material/q/g;

    .line 64
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->c:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 65
    if-eqz p2, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->c:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p2}, Lcom/google/android/material/q/g;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->c:Lcom/google/android/material/q/g;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/c;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/q/g;->a(Landroid/content/Context;)V

    .line 71
    if-lez p4, :cond_1

    .line 72
    invoke-virtual {p0, p4, p1}, Lcom/google/android/material/floatingactionbutton/c;->a(ILandroid/content/res/ColorStateList;)Lcom/google/android/material/floatingactionbutton/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->e:Lcom/google/android/material/floatingactionbutton/a;

    .line 73
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x2

    new-array v2, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->e:Lcom/google/android/material/floatingactionbutton/a;

    .line 74
    invoke-static {v0}, Landroidx/core/g/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->c:Lcom/google/android/material/q/g;

    invoke-static {v0}, Landroidx/core/g/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    .line 80
    :goto_0
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    .line 82
    invoke-static {p3}, Lcom/google/android/material/o/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v1, v2, v0, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/c;->d:Landroid/graphics/drawable/Drawable;

    .line 84
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->d:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->f:Landroid/graphics/drawable/Drawable;

    .line 85
    return-void

    .line 76
    :cond_1
    iput-object v4, p0, Lcom/google/android/material/floatingactionbutton/c;->e:Lcom/google/android/material/floatingactionbutton/a;

    .line 77
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->c:Lcom/google/android/material/q/g;

    goto :goto_0
.end method

.method a(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->t:Lcom/google/android/material/p/b;

    invoke-interface {v0}, Lcom/google/android/material/p/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-super {p0, p1}, Lcom/google/android/material/floatingactionbutton/b;->a(Landroid/graphics/Rect;)V

    .line 245
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/c;->l:I

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/c;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 241
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method a([I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/c;->i:F

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setElevation(F)V

    .line 185
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/c;->k:F

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationZ(F)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/c;->j:F

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationZ(F)V

    goto :goto_0

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationZ(F)V

    goto :goto_0

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setElevation(F)V

    .line 194
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationZ(F)V

    goto :goto_0
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->d:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->d:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 91
    invoke-static {p1}, Lcom/google/android/material/o/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/material/floatingactionbutton/b;->b(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method j()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method n()V
    .locals 0

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->o()V

    .line 173
    return-void
.end method

.method p()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->t:Lcom/google/android/material/p/b;

    invoke-interface {v0}, Lcom/google/android/material/p/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method s()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method u()Lcom/google/android/material/q/g;
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->b:Lcom/google/android/material/q/k;

    invoke-static {v0}, Landroidx/core/g/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/q/k;

    .line 232
    new-instance v1, Lcom/google/android/material/floatingactionbutton/c$a;

    invoke-direct {v1, v0}, Lcom/google/android/material/floatingactionbutton/c$a;-><init>(Lcom/google/android/material/q/k;)V

    return-object v1
.end method

.method x()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method
