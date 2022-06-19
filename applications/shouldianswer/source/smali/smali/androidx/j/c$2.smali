.class Landroidx/j/c$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/c;->createAnimator(Landroid/view/ViewGroup;Landroidx/j/t;Landroidx/j/t;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:F

.field final synthetic e:Landroidx/j/c;


# direct methods
.method constructor <init>(Landroidx/j/c;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .locals 0

    .line 445
    iput-object p1, p0, Landroidx/j/c$2;->e:Landroidx/j/c;

    iput-object p2, p0, Landroidx/j/c$2;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/j/c$2;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Landroidx/j/c$2;->c:Landroid/view/View;

    iput p5, p0, Landroidx/j/c$2;->d:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 448
    iget-object p1, p0, Landroidx/j/c$2;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/j/ae;->a(Landroid/view/View;)Landroidx/j/ad;

    move-result-object p1

    iget-object v0, p0, Landroidx/j/c$2;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {p1, v0}, Landroidx/j/ad;->b(Landroid/graphics/drawable/Drawable;)V

    .line 449
    iget-object p1, p0, Landroidx/j/c$2;->c:Landroid/view/View;

    iget v0, p0, Landroidx/j/c$2;->d:F

    invoke-static {p1, v0}, Landroidx/j/ae;->a(Landroid/view/View;F)V

    return-void
.end method
