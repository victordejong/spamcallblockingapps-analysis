.class public Lcom/callapp/contacts/widget/SettingsRowCheckBox;
.super Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/SettingsRowCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method getBtn()Landroid/widget/CompoundButton;
    .locals 1

    const v0, 0x7f0a07e7

    .line 13
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/SettingsRowCheckBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    return-object v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0260

    return v0
.end method
