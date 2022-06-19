.class Landroidx/core/h/y$2;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/h/y;->a(Landroidx/core/h/ab;)Landroidx/core/h/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/h/ab;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/core/h/y;


# direct methods
.method constructor <init>(Landroidx/core/h/y;Landroidx/core/h/ab;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 777
    iput-object p1, p0, Landroidx/core/h/y$2;->c:Landroidx/core/h/y;

    iput-object p2, p0, Landroidx/core/h/y$2;->a:Landroidx/core/h/ab;

    iput-object p3, p0, Landroidx/core/h/y$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 780
    iget-object v0, p0, Landroidx/core/h/y$2;->a:Landroidx/core/h/ab;

    iget-object v1, p0, Landroidx/core/h/y$2;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidx/core/h/ab;->a(Landroid/view/View;)V

    .line 781
    return-void
.end method
