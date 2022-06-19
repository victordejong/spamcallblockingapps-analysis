.class public Lra0;
.super Lua0;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lua0<",
        "Lbb0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    sget v0, Lm80;->carbon_bottomsheet_row:I

    invoke-direct {p0, p1, v0}, Lua0;-><init>(Landroid/view/ViewGroup;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lbb0;

    invoke-virtual {p0, p1}, Lra0;->c(Lbb0;)V

    return-void
.end method

.method public c(Lbb0;)V
    .locals 2

    invoke-super {p0, p1}, Lua0;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lua0;->b()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lgb0;

    iget-object v0, v0, Lgb0;->n:Lcarbon/widget/ImageView;

    invoke-virtual {p0}, Lua0;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbb0;->d(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcarbon/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lbb0;->e()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbb0;->e()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcarbon/widget/ImageView;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method
