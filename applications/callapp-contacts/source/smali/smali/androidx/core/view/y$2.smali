.class final Landroidx/core/view/y$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/y;->a(Landroidx/core/view/ab;)Landroidx/core/view/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/view/ab;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/core/view/y;


# direct methods
.method constructor <init>(Landroidx/core/view/y;Landroidx/core/view/ab;Landroid/view/View;)V
    .locals 0

    .line 780
    iput-object p1, p0, Landroidx/core/view/y$2;->c:Landroidx/core/view/y;

    iput-object p2, p0, Landroidx/core/view/y$2;->a:Landroidx/core/view/ab;

    iput-object p3, p0, Landroidx/core/view/y$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 783
    iget-object p1, p0, Landroidx/core/view/y$2;->a:Landroidx/core/view/ab;

    invoke-interface {p1}, Landroidx/core/view/ab;->a()V

    return-void
.end method
