.class public Landroidx/appcompat/widget/AppCompatCheckBox;
.super Landroid/widget/CheckBox;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/u;
.implements Landroidx/core/widget/i;


# instance fields
.field private final a:Landroidx/appcompat/widget/e;

.field private final b:Landroidx/appcompat/widget/d;

.field private final c:Landroidx/appcompat/widget/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 66
    sget v0, Landroidx/appcompat/a$a;->checkboxStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 71
    invoke-static {p1}, Landroidx/appcompat/widget/y;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/x;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 75
    new-instance p1, Landroidx/appcompat/widget/e;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/e;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/e;

    .line 76
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/e;->a(Landroid/util/AttributeSet;I)V

    .line 78
    new-instance p1, Landroidx/appcompat/widget/d;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/d;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/d;

    .line 79
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/d;->a(Landroid/util/AttributeSet;I)V

    .line 81
    new-instance p1, Landroidx/appcompat/widget/l;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/l;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->c:Landroidx/appcompat/widget/l;

    .line 82
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/l;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    .line 229
    invoke-super {p0}, Landroid/widget/CheckBox;->drawableStateChanged()V

    .line 230
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->d()V

    .line 233
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->c:Landroidx/appcompat/widget/l;

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v0}, Landroidx/appcompat/widget/l;->a()V

    :cond_1
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .line 100
    invoke-super {p0}, Landroid/widget/CheckBox;->getCompoundPaddingLeft()I

    move-result v0

    .line 101
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/e;

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/e;->a(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 179
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 207
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 126
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, v0, Landroidx/appcompat/widget/e;->a:Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 213
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/d;

    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p1}, Landroidx/appcompat/widget/d;->a()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 221
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 222
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->a(I)V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1

    .line 95
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/e;

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Landroidx/appcompat/widget/e;->a()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 164
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 192
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 113
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 138
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
