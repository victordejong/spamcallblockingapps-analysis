.class public Lcom/callapp/contacts/widget/SettingsRowSwitch;
.super Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;
.source "SourceFile"


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/SettingsRowSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0600f2

    .line 36
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/callapp/contacts/widget/SettingsRowSwitch;->a:I

    const p2, 0x7f060088

    .line 37
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/callapp/contacts/widget/SettingsRowSwitch;->b:I

    const p2, 0x7f0600f3

    .line 39
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/callapp/contacts/widget/SettingsRowSwitch;->d:I

    const p2, 0x7f06008a

    .line 40
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/widget/SettingsRowSwitch;->c:I

    .line 42
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SettingsRowSwitch;->getBtn()Landroid/widget/CompoundButton;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    .line 43
    invoke-virtual {p1}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-virtual {p1}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private a(Landroid/widget/Switch;Z)V
    .locals 3

    .line 67
    invoke-virtual {p1}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 72
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    .line 74
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v2, 0x7f0a08ce

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-eqz p2, :cond_1

    .line 78
    iget p2, p0, Lcom/callapp/contacts/widget/SettingsRowSwitch;->b:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 79
    iget p2, p0, Lcom/callapp/contacts/widget/SettingsRowSwitch;->c:I

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 81
    :cond_1
    iget p2, p0, Lcom/callapp/contacts/widget/SettingsRowSwitch;->a:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 82
    iget p2, p0, Lcom/callapp/contacts/widget/SettingsRowSwitch;->d:I

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 86
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/widget/Switch;->invalidate()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/SettingsRowSwitch;Landroid/widget/Switch;Z)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/SettingsRowSwitch;->a(Landroid/widget/Switch;Z)V

    return-void
.end method


# virtual methods
.method getBtn()Landroid/widget/CompoundButton;
    .locals 1

    const v0, 0x7f0a07e9

    .line 22
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/SettingsRowSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    return-object v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0263

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SettingsRowSwitch;->getBtn()Landroid/widget/CompoundButton;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/widget/SettingsRowSwitch;->a(Landroid/widget/Switch;Z)V

    .line 50
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;->setChecked(Z)V

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .line 55
    new-instance v0, Lcom/callapp/contacts/widget/SettingsRowSwitch$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/widget/SettingsRowSwitch$1;-><init>(Lcom/callapp/contacts/widget/SettingsRowSwitch;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-super {p0, v0}, Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
