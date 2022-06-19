.class public Lcom/rey/material/widget/RadioButton;
.super Lcom/rey/material/widget/CompoundButton;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rey/material/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rey/material/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/rey/material/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/rey/material/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/rey/material/widget/CompoundButton;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Le/g/a/a/e$b;

    invoke-direct {v0, p1, p2, p3, p4}, Le/g/a/a/e$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {v0}, Le/g/a/a/e$b;->b()Le/g/a/a/e;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isInEditMode()Z

    move-result p2

    invoke-virtual {p1, p2}, Le/g/a/a/e;->f(Z)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Le/g/a/a/e;->e(Z)V

    invoke-virtual {p0, p1}, Lcom/rey/material/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Le/g/a/a/e;->e(Z)V

    return-void
.end method

.method public setCheckedImmediately(Z)V
    .locals 2

    iget-object v0, p0, Lcom/rey/material/widget/CompoundButton;->c:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Le/g/a/a/e;

    if-eqz v1, :cond_0

    check-cast v0, Le/g/a/a/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/g/a/a/e;->e(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Le/g/a/a/e;->e(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public toggle()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/CompoundButton;->toggle()V

    :cond_0
    return-void
.end method
