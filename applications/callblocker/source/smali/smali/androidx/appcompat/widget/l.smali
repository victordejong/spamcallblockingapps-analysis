.class public Landroidx/appcompat/widget/l;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "AppCompatMultiAutoCompleteTextView.java"

# interfaces
.implements Landroidx/core/h/t;


# static fields
.field private static final a:[I


# instance fields
.field private final b:Landroidx/appcompat/widget/f;

.field private final c:Landroidx/appcompat/widget/t;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010176

    aput v2, v0, v1

    sput-object v0, Landroidx/appcompat/widget/l;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 67
    sget v0, Landroidx/appcompat/a$a;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-static {p1}, Landroidx/appcompat/widget/am;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    invoke-virtual {p0}, Landroidx/appcompat/widget/l;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/widget/l;->a:[I

    invoke-static {v0, p2, v1, p3, v2}, Landroidx/appcompat/widget/ap;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ap;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ap;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/l;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/ap;->a()V

    .line 80
    new-instance v0, Landroidx/appcompat/widget/f;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/f;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/f;

    .line 81
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/f;

    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/widget/f;->a(Landroid/util/AttributeSet;I)V

    .line 83
    new-instance v0, Landroidx/appcompat/widget/t;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/t;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/l;->c:Landroidx/appcompat/widget/t;

    .line 84
    iget-object v0, p0, Landroidx/appcompat/widget/l;->c:Landroidx/appcompat/widget/t;

    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/widget/t;->a(Landroid/util/AttributeSet;I)V

    .line 85
    iget-object v0, p0, Landroidx/appcompat/widget/l;->c:Landroidx/appcompat/widget/t;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->b()V

    .line 86
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->drawableStateChanged()V

    .line 168
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/f;

    invoke-virtual {v0}, Landroidx/appcompat/widget/f;->c()V

    .line 171
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/l;->c:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Landroidx/appcompat/widget/l;->c:Landroidx/appcompat/widget/t;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->b()V

    .line 174
    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/f;

    .line 134
    invoke-virtual {v0}, Landroidx/appcompat/widget/f;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/f;

    .line 162
    invoke-virtual {v0}, Landroidx/appcompat/widget/f;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    .line 162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Landroidx/appcompat/widget/j;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/f;->a(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setBackgroundResource(I)V

    .line 96
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/f;->a(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Landroidx/appcompat/widget/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/l;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/f;->a(Landroid/content/res/ColorStateList;)V

    .line 121
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/f;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 149
    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 179
    iget-object v0, p0, Landroidx/appcompat/widget/l;->c:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Landroidx/appcompat/widget/l;->c:Landroidx/appcompat/widget/t;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/t;->a(Landroid/content/Context;I)V

    .line 182
    :cond_0
    return-void
.end method
