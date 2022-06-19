.class Landroidx/j/aj$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/aj;->b(Landroid/view/ViewGroup;Landroidx/j/t;ILandroidx/j/t;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/j/x;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/j/aj;


# direct methods
.method constructor <init>(Landroidx/j/aj;Landroidx/j/x;Landroid/view/View;)V
    .locals 0

    .line 411
    iput-object p1, p0, Landroidx/j/aj$1;->c:Landroidx/j/aj;

    iput-object p2, p0, Landroidx/j/aj$1;->a:Landroidx/j/x;

    iput-object p3, p0, Landroidx/j/aj$1;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 414
    iget-object p1, p0, Landroidx/j/aj$1;->a:Landroidx/j/x;

    iget-object v0, p0, Landroidx/j/aj$1;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/j/x;->b(Landroid/view/View;)V

    return-void
.end method
