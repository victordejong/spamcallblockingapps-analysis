.class public Ll1/c$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public b:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ll1/c$b;->b:Z

    .line 3
    iput-object p1, p0, Ll1/c$b;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ll1/c$b;->a:Landroid/view/View;

    .line 2
    sget-object v0, Ll1/q;->a:Ly/d;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Ly/d;->l(Landroid/view/View;F)V

    .line 3
    iget-boolean p1, p0, Ll1/c$b;->b:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Ll1/c$b;->a:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ll1/c$b;->a:Landroid/view/View;

    sget-object v0, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {p1}, Lm0/v$d;->h(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Ll1/c$b;->a:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Ll1/c$b;->b:Z

    .line 6
    iget-object p1, p0, Ll1/c$b;->a:Landroid/view/View;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
