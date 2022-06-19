.class public Landroidx/appcompat/widget/AppCompatCheckBox;
.super Landroid/widget/CheckBox;
.source "AppCompatCheckBox.java"

# interfaces
.implements Landroidx/core/h/t;
.implements Landroidx/core/widget/j;


# instance fields
.field private final a:Landroidx/appcompat/widget/h;

.field private final b:Landroidx/appcompat/widget/f;

.field private final c:Landroidx/appcompat/widget/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 65
    sget v0, Landroidx/appcompat/a$a;->checkboxStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 69
    invoke-static {p1}, Landroidx/appcompat/widget/am;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v0, Landroidx/appcompat/widget/h;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/h;-><init>(Landroid/widget/CompoundButton;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/h;

    .line 71
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/h;

    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/widget/h;->a(Landroid/util/AttributeSet;I)V

    .line 73
    new-instance v0, Landroidx/appcompat/widget/f;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/f;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/f;

    .line 74
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/f;

    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/widget/f;->a(Landroid/util/AttributeSet;I)V

    .line 76
    new-instance v0, Landroidx/appcompat/widget/t;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/t;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->c:Landroidx/appcompat/widget/t;

    .line 77
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->c:Landroidx/appcompat/widget/t;

    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/widget/t;->a(Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Landroid/widget/CheckBox;->drawableStateChanged()V

    .line 225
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/f;

    invoke-virtual {v0}, Landroidx/appcompat/widget/f;->c()V

    .line 228
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->c:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->c:Landroidx/appcompat/widget/t;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->b()V

    .line 231
    :cond_1
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Landroid/widget/CheckBox;->getCompoundPaddingLeft()I

    move-result v0

    .line 96
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/h;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/h;

    .line 97
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/h;->a(I)I

    move-result v0

    .line 96
    :cond_0
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/f;

    .line 175
    invoke-virtual {v0}, Landroidx/appcompat/widget/f;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 175
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/f;

    .line 203
    invoke-virtual {v0}, Landroidx/appcompat/widget/f;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    .line 203
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/h;

    .line 122
    invoke-virtual {v0}, Landroidx/appcompat/widget/h;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/h;

    .line 147
    invoke-virtual {v0}, Landroidx/appcompat/widget/h;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/f;->a(Landroid/graphics/drawable/Drawable;)V

    .line 212
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 217
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/f;->a(I)V

    .line 220
    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/h;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/h;

    invoke-virtual {v0}, Landroidx/appcompat/widget/h;->c()V

    .line 86
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/f;->a(Landroid/content/res/ColorStateList;)V

    .line 162
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/f;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 190
    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/h;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/h;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/h;->a(Landroid/content/res/ColorStateList;)V

    .line 111
    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/h;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/h;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/h;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 136
    :cond_0
    return-void
.end method
