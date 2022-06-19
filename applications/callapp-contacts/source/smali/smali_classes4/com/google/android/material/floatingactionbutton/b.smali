.class abstract Lcom/google/android/material/floatingactionbutton/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/floatingactionbutton/f;


# instance fields
.field final a:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/material/floatingactionbutton/a;

.field private e:Lcom/google/android/material/a/h;

.field private f:Lcom/google/android/material/a/h;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Ljava/util/ArrayList;

    .line 51
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->a:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 52
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->b:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/b;->d:Lcom/google/android/material/floatingactionbutton/a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/material/a/h;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->f:Lcom/google/android/material/a/h;

    if-eqz v0, :cond_0

    return-object v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->e:Lcom/google/android/material/a/h;

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/b;->g()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->e:Lcom/google/android/material/a/h;

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->e:Lcom/google/android/material/a/h;

    invoke-static {v0}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/a/h;

    return-object v0
.end method

.method public a(Landroid/animation/Animator;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->d:Lcom/google/android/material/floatingactionbutton/a;

    .line 1033
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/a;->a:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 1034
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/a;->a:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1029
    :cond_0
    iput-object p1, v0, Lcom/google/android/material/floatingactionbutton/a;->a:Landroid/animation/Animator;

    return-void
.end method

.method public final a(Lcom/google/android/material/a/h;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->f:Lcom/google/android/material/a/h;

    return-void
.end method

.method final b(Lcom/google/android/material/a/h;)Landroid/animation/AnimatorSet;
    .locals 6

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "opacity"

    .line 123
    invoke-virtual {p1, v1}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/b;->a:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/material/a/h;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "scale"

    .line 127
    invoke-virtual {p1, v1}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/b;->a:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/material/a/h;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/b;->a:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/material/a/h;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "width"

    .line 132
    invoke-virtual {p1, v1}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/b;->a:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->g:Landroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/material/a/h;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "height"

    .line 136
    invoke-virtual {p1, v1}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/b;->a:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->h:Landroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/material/a/h;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "paddingStart"

    .line 140
    invoke-virtual {p1, v1}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 141
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/b;->a:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->i:Landroid/util/Property;

    .line 142
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/material/a/h;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 141
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v1, "paddingEnd"

    .line 145
    invoke-virtual {p1, v1}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 146
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/b;->a:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->j:Landroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/material/a/h;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v1, "labelOpacity"

    .line 149
    invoke-virtual {p1, v1}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 151
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/b;->a:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    new-instance v3, Lcom/google/android/material/floatingactionbutton/b$1;

    const-class v4, Ljava/lang/Float;

    const-string v5, "LABEL_OPACITY_PROPERTY"

    invoke-direct {v3, p0, v4, v5}, Lcom/google/android/material/floatingactionbutton/b$1;-><init>(Lcom/google/android/material/floatingactionbutton/b;Ljava/lang/Class;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/material/a/h;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 202
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_6
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 206
    invoke-static {p1, v0}, Lcom/google/android/material/a/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p1
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->d:Lcom/google/android/material/floatingactionbutton/a;

    const/4 v1, 0x0

    .line 1039
    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/a;->a:Landroid/animation/Animator;

    return-void
.end method

.method public d()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->d:Lcom/google/android/material/floatingactionbutton/a;

    const/4 v1, 0x0

    .line 2039
    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/a;->a:Landroid/animation/Animator;

    return-void
.end method

.method public e()Landroid/animation/AnimatorSet;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/b;->a()Lcom/google/android/material/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/b;->b(Lcom/google/android/material/a/h;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method
