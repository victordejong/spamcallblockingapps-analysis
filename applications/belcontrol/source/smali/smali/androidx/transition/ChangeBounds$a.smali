.class public Landroidx/transition/ChangeBounds$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Lx20;Lx20;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/graphics/drawable/BitmapDrawable;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:F


# direct methods
.method public constructor <init>(Landroidx/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .locals 0

    iput-object p2, p0, Landroidx/transition/ChangeBounds$a;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/transition/ChangeBounds$a;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Landroidx/transition/ChangeBounds$a;->c:Landroid/view/View;

    iput p5, p0, Landroidx/transition/ChangeBounds$a;->d:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/transition/ChangeBounds$a;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Li30;->b(Landroid/view/View;)Lh30;

    move-result-object p1

    iget-object v0, p0, Landroidx/transition/ChangeBounds$a;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {p1, v0}, Lh30;->remove(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/transition/ChangeBounds$a;->c:Landroid/view/View;

    iget v0, p0, Landroidx/transition/ChangeBounds$a;->d:F

    invoke-static {p1, v0}, Li30;->h(Landroid/view/View;F)V

    return-void
.end method
