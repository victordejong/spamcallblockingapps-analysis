.class Landroidx/j/d$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private b:Z


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/j/d$a;->b:Z

    .line 187
    iput-object p1, p0, Landroidx/j/d$a;->a:Landroid/view/View;

    .line 188
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Landroidx/j/d$a;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/j/ac;->a(Landroid/view/View;F)V

    .line 202
    iget-boolean v0, p0, Landroidx/j/d$a;->b:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Landroidx/j/d$a;->a:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 205
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Landroidx/j/d$a;->a:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/h/u;->s(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/j/d$a;->a:Landroid/view/View;

    .line 193
    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-nez v0, :cond_0

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/j/d$a;->b:Z

    .line 195
    iget-object v0, p0, Landroidx/j/d$a;->a:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 197
    :cond_0
    return-void
.end method
