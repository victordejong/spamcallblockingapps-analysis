.class final Landroidx/fragment/app/b$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/b;->a(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Z

.field final synthetic d:Landroidx/fragment/app/z$b;

.field final synthetic e:Landroidx/fragment/app/b$a;

.field final synthetic f:Landroidx/fragment/app/b;


# direct methods
.method constructor <init>(Landroidx/fragment/app/b;Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/z$b;Landroidx/fragment/app/b$a;)V
    .locals 0

    .line 181
    iput-object p1, p0, Landroidx/fragment/app/b$3;->f:Landroidx/fragment/app/b;

    iput-object p2, p0, Landroidx/fragment/app/b$3;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/fragment/app/b$3;->b:Landroid/view/View;

    iput-boolean p4, p0, Landroidx/fragment/app/b$3;->c:Z

    iput-object p5, p0, Landroidx/fragment/app/b$3;->d:Landroidx/fragment/app/z$b;

    iput-object p6, p0, Landroidx/fragment/app/b$3;->e:Landroidx/fragment/app/b$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 184
    iget-object p1, p0, Landroidx/fragment/app/b$3;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/b$3;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 185
    iget-boolean p1, p0, Landroidx/fragment/app/b$3;->c:Z

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Landroidx/fragment/app/b$3;->d:Landroidx/fragment/app/z$b;

    .line 1539
    iget-object p1, p1, Landroidx/fragment/app/z$b;->a:Landroidx/fragment/app/z$b$b;

    .line 188
    iget-object v0, p0, Landroidx/fragment/app/b$3;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/z$b$b;->applyState(Landroid/view/View;)V

    .line 190
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/b$3;->e:Landroidx/fragment/app/b$a;

    invoke-virtual {p1}, Landroidx/fragment/app/b$a;->b()V

    return-void
.end method
