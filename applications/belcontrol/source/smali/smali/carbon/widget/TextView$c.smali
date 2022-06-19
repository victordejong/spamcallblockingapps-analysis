.class public Lcarbon/widget/TextView$c;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcarbon/widget/TextView;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcarbon/widget/TextView;


# direct methods
.method public constructor <init>(Lcarbon/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/TextView$c;->a:Lcarbon/widget/TextView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    iget-object p1, p0, Lcarbon/widget/TextView$c;->a:Lcarbon/widget/TextView;

    invoke-static {p1}, Lcarbon/widget/TextView;->d(Lcarbon/widget/TextView;)Lvd0;

    move-result-object p1

    invoke-static {p1}, Ld80;->v(Lvd0;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcarbon/widget/TextView$c;->a:Lcarbon/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result p1

    iget-object v1, p0, Lcarbon/widget/TextView$c;->a:Lcarbon/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    invoke-virtual {p2, v0, v0, p1, v1}, Landroid/graphics/Outline;->setRect(IIII)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcarbon/widget/TextView$c;->a:Lcarbon/widget/TextView;

    invoke-static {p1}, Lcarbon/widget/TextView;->e(Lcarbon/widget/TextView;)Lqd0;

    move-result-object p1

    iget-object v1, p0, Lcarbon/widget/TextView$c;->a:Lcarbon/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcarbon/widget/TextView$c;->a:Lcarbon/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Lcarbon/widget/TextView$c;->a:Lcarbon/widget/TextView;

    invoke-static {p1}, Lcarbon/widget/TextView;->e(Lcarbon/widget/TextView;)Lqd0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lqd0;->getOutline(Landroid/graphics/Outline;)V

    :goto_0
    return-void
.end method
