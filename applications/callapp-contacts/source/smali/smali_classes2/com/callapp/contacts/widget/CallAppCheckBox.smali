.class public Lcom/callapp/contacts/widget/CallAppCheckBox;
.super Landroidx/appcompat/widget/AppCompatCheckedTextView;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/CallAppCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/CallAppCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f060088

    .line 32
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/callapp/contacts/widget/CallAppCheckBox;->b:I

    const p2, 0x7f0600f2

    .line 33
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/widget/CallAppCheckBox;->c:I

    .line 34
    invoke-direct {p0}, Lcom/callapp/contacts/widget/CallAppCheckBox;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppCheckBox;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/callapp/contacts/widget/CallAppCheckBox;->d:Z

    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/CallAppCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/callapp/contacts/widget/CallAppCheckBox;->b:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/callapp/contacts/widget/CallAppCheckBox;->c:I

    :goto_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public setChangeColorAccordingToTheme(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/CallAppCheckBox;->d:Z

    return-void
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    iput-object p1, p0, Lcom/callapp/contacts/widget/CallAppCheckBox;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setChecked(Z)V

    .line 61
    invoke-direct {p0}, Lcom/callapp/contacts/widget/CallAppCheckBox;->a()V

    return-void
.end method

.method public setfilterColor(I)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppCheckBox;->a:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public toggle()V
    .locals 0

    .line 54
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->toggle()V

    .line 55
    invoke-direct {p0}, Lcom/callapp/contacts/widget/CallAppCheckBox;->a()V

    return-void
.end method
