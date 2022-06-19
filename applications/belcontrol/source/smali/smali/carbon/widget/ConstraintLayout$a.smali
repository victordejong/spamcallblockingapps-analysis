.class public Lcarbon/widget/ConstraintLayout$a;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcarbon/widget/ConstraintLayout;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcarbon/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Lcarbon/widget/ConstraintLayout;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/ConstraintLayout$a;->a:Lcarbon/widget/ConstraintLayout;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    iget-object p1, p0, Lcarbon/widget/ConstraintLayout$a;->a:Lcarbon/widget/ConstraintLayout;

    invoke-static {p1}, Lcarbon/widget/ConstraintLayout;->i(Lcarbon/widget/ConstraintLayout;)Lvd0;

    move-result-object p1

    invoke-static {p1}, Ld80;->v(Lvd0;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcarbon/widget/ConstraintLayout$a;->a:Lcarbon/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iget-object v1, p0, Lcarbon/widget/ConstraintLayout$a;->a:Lcarbon/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p2, v0, v0, p1, v1}, Landroid/graphics/Outline;->setRect(IIII)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcarbon/widget/ConstraintLayout$a;->a:Lcarbon/widget/ConstraintLayout;

    invoke-static {p1}, Lcarbon/widget/ConstraintLayout;->j(Lcarbon/widget/ConstraintLayout;)Lqd0;

    move-result-object p1

    iget-object v1, p0, Lcarbon/widget/ConstraintLayout$a;->a:Lcarbon/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcarbon/widget/ConstraintLayout$a;->a:Lcarbon/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Lcarbon/widget/ConstraintLayout$a;->a:Lcarbon/widget/ConstraintLayout;

    invoke-static {p1}, Lcarbon/widget/ConstraintLayout;->j(Lcarbon/widget/ConstraintLayout;)Lqd0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lqd0;->getOutline(Landroid/graphics/Outline;)V

    :goto_0
    return-void
.end method
