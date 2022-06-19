.class final Landroidx/fragment/app/d$b;
.super Landroid/view/animation/AnimationSet;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Landroid/view/View;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 269
    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Landroidx/fragment/app/d$b;->e:Z

    .line 270
    iput-object p2, p0, Landroidx/fragment/app/d$b;->a:Landroid/view/ViewGroup;

    .line 271
    iput-object p3, p0, Landroidx/fragment/app/d$b;->b:Landroid/view/View;

    .line 272
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d$b;->addAnimation(Landroid/view/animation/Animation;)V

    .line 275
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 2

    const/4 v0, 0x1

    .line 280
    iput-boolean v0, p0, Landroidx/fragment/app/d$b;->e:Z

    .line 281
    iget-boolean v1, p0, Landroidx/fragment/app/d$b;->c:Z

    if-eqz v1, :cond_1

    .line 282
    iget-boolean p1, p0, Landroidx/fragment/app/d$b;->d:Z

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 284
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 286
    iput-boolean v0, p0, Landroidx/fragment/app/d$b;->c:Z

    .line 287
    iget-object p1, p0, Landroidx/fragment/app/d$b;->a:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Landroidx/core/view/s;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/s;

    :cond_2
    return v0
.end method

.method public final getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 2

    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Landroidx/fragment/app/d$b;->e:Z

    .line 296
    iget-boolean v1, p0, Landroidx/fragment/app/d$b;->c:Z

    if-eqz v1, :cond_1

    .line 297
    iget-boolean p1, p0, Landroidx/fragment/app/d$b;->d:Z

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 299
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result p1

    if-nez p1, :cond_2

    .line 301
    iput-boolean v0, p0, Landroidx/fragment/app/d$b;->c:Z

    .line 302
    iget-object p1, p0, Landroidx/fragment/app/d$b;->a:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Landroidx/core/view/s;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/s;

    :cond_2
    return v0
.end method

.method public final run()V
    .locals 2

    .line 309
    iget-boolean v0, p0, Landroidx/fragment/app/d$b;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/d$b;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 310
    iput-boolean v0, p0, Landroidx/fragment/app/d$b;->e:Z

    .line 312
    iget-object v0, p0, Landroidx/fragment/app/d$b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d$b;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/d$b;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Landroidx/fragment/app/d$b;->d:Z

    return-void
.end method
