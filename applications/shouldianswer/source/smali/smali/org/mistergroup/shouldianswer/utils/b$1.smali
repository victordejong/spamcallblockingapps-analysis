.class public final Lorg/mistergroup/shouldianswer/utils/b$1;
.super Ljava/lang/Object;
.source "AnimationHelper.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/utils/b;-><init>(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/utils/b;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/utils/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/b$1;->a:Lorg/mistergroup/shouldianswer/utils/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/b$1;->a:Lorg/mistergroup/shouldianswer/utils/b;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/utils/b;->a(Lorg/mistergroup/shouldianswer/utils/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/b$1;->a:Lorg/mistergroup/shouldianswer/utils/b;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/utils/b;->b(Lorg/mistergroup/shouldianswer/utils/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/b$1;->a:Lorg/mistergroup/shouldianswer/utils/b;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/utils/b;->c(Lorg/mistergroup/shouldianswer/utils/b;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/mistergroup/shouldianswer/utils/b;->a(Lorg/mistergroup/shouldianswer/utils/b;I)V

    .line 28
    :cond_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/b$1;->a:Lorg/mistergroup/shouldianswer/utils/b;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/utils/b;->b(Lorg/mistergroup/shouldianswer/utils/b;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/b$1;->a:Lorg/mistergroup/shouldianswer/utils/b;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/utils/b;->c(Lorg/mistergroup/shouldianswer/utils/b;)I

    move-result v0

    if-lez v0, :cond_2

    .line 29
    :cond_1
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/b$1;->a:Lorg/mistergroup/shouldianswer/utils/b;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/utils/b;->d(Lorg/mistergroup/shouldianswer/utils/b;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
