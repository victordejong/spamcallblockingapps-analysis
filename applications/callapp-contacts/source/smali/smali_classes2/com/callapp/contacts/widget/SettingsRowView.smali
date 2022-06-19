.class public abstract Lcom/callapp/contacts/widget/SettingsRowView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/SettingsRowView$Attributes;
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/callapp/contacts/widget/SettingsRowView$Attributes;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/SettingsRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f060088

    .line 23
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/widget/SettingsRowView;->a:I

    .line 24
    new-instance v0, Lcom/callapp/contacts/widget/SettingsRowView$Attributes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/widget/SettingsRowView$Attributes;-><init>(Lcom/callapp/contacts/widget/SettingsRowView;Lcom/callapp/contacts/widget/SettingsRowView$1;)V

    iput-object v0, p0, Lcom/callapp/contacts/widget/SettingsRowView;->b:Lcom/callapp/contacts/widget/SettingsRowView$Attributes;

    .line 1047
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SettingsRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1051
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SettingsRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/callapp/contacts/R$styleable;->settingsRowSwitch:[I

    invoke-virtual {v1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    .line 1057
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/widget/SettingsRowView$Attributes;->a(Lcom/callapp/contacts/widget/SettingsRowView$Attributes;I)I

    .line 1058
    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/widget/SettingsRowView$Attributes;->b(Lcom/callapp/contacts/widget/SettingsRowView$Attributes;I)I

    .line 1060
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/SettingsRowView;->b:Lcom/callapp/contacts/widget/SettingsRowView$Attributes;

    .line 1064
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SettingsRowView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    if-eqz p2, :cond_2

    .line 1066
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SettingsRowView;->getLayoutResourceId()I

    move-result v0

    invoke-virtual {p2, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :cond_2
    const p2, 0x7f0a056b

    .line 1069
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/SettingsRowView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 1070
    invoke-static {p1}, Lcom/callapp/contacts/widget/SettingsRowView$Attributes;->a(Lcom/callapp/contacts/widget/SettingsRowView$Attributes;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 1071
    invoke-static {p1}, Lcom/callapp/contacts/widget/SettingsRowView$Attributes;->a(Lcom/callapp/contacts/widget/SettingsRowView$Attributes;)I

    move-result p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lcom/callapp/contacts/widget/SettingsRowView;->b:Lcom/callapp/contacts/widget/SettingsRowView$Attributes;

    invoke-static {v1}, Lcom/callapp/contacts/widget/SettingsRowView$Attributes;->b(Lcom/callapp/contacts/widget/SettingsRowView$Attributes;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p2, p1, v0}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    return-void

    :cond_3
    const/16 p1, 0x8

    .line 1073
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected abstract getLayoutResourceId()I
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 43
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f0a0a4c

    .line 78
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/SettingsRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 80
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    const v1, 0x7f0601cc

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    .line 83
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 p1, 0x8

    .line 85
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f0a0a4d

    .line 91
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/SettingsRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 93
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0601ec

    .line 95
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    .line 96
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 p1, 0x8

    .line 98
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method
