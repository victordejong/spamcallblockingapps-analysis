.class public Lcarbon/widget/LinearLayout$a;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcarbon/widget/LinearLayout;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcarbon/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcarbon/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/LinearLayout$a;->a:Lcarbon/widget/LinearLayout;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    iget-object p1, p0, Lcarbon/widget/LinearLayout$a;->a:Lcarbon/widget/LinearLayout;

    invoke-static {p1}, Lcarbon/widget/LinearLayout;->a(Lcarbon/widget/LinearLayout;)Lvd0;

    move-result-object p1

    invoke-static {p1}, Ld80;->v(Lvd0;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcarbon/widget/LinearLayout$a;->a:Lcarbon/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    iget-object v1, p0, Lcarbon/widget/LinearLayout$a;->a:Lcarbon/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-virtual {p2, v0, v0, p1, v1}, Landroid/graphics/Outline;->setRect(IIII)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcarbon/widget/LinearLayout$a;->a:Lcarbon/widget/LinearLayout;

    invoke-static {p1}, Lcarbon/widget/LinearLayout;->b(Lcarbon/widget/LinearLayout;)Lqd0;

    move-result-object p1

    iget-object v1, p0, Lcarbon/widget/LinearLayout$a;->a:Lcarbon/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcarbon/widget/LinearLayout$a;->a:Lcarbon/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Lcarbon/widget/LinearLayout$a;->a:Lcarbon/widget/LinearLayout;

    invoke-static {p1}, Lcarbon/widget/LinearLayout;->b(Lcarbon/widget/LinearLayout;)Lqd0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lqd0;->getOutline(Landroid/graphics/Outline;)V

    :goto_0
    return-void
.end method
