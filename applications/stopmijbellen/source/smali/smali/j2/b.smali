.class public Lj2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/github/clans/fab/FloatingActionMenu;


# direct methods
.method public constructor <init>(Lcom/github/clans/fab/FloatingActionMenu;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj2/b;->d:Lcom/github/clans/fab/FloatingActionMenu;

    iput p2, p0, Lj2/b;->a:I

    iput p3, p0, Lj2/b;->b:I

    iput p4, p0, Lj2/b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, Lj2/b;->d:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, p0, Lj2/b;->a:I

    iget v2, p0, Lj2/b;->b:I

    iget v3, p0, Lj2/b;->c:I

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method
