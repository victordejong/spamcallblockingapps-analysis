.class public Lcom/callapp/contacts/widget/CallAppRadioButton;
.super Landroidx/appcompat/widget/AppCompatRadioButton;
.source "SourceFile"


# static fields
.field private static b:I

.field private static c:I


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060088

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/callapp/contacts/widget/CallAppRadioButton;->b:I

    .line 22
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f0600f2

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/callapp/contacts/widget/CallAppRadioButton;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppRadioButton;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/CallAppRadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/callapp/contacts/widget/CallAppRadioButton;->b:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/callapp/contacts/widget/CallAppRadioButton;->c:I

    :goto_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/widget/CallAppRadioButton;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setChecked(Z)V

    .line 52
    invoke-direct {p0}, Lcom/callapp/contacts/widget/CallAppRadioButton;->a()V

    return-void
.end method

.method public toggle()V
    .locals 0

    .line 45
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatRadioButton;->toggle()V

    .line 46
    invoke-direct {p0}, Lcom/callapp/contacts/widget/CallAppRadioButton;->a()V

    return-void
.end method
