.class public abstract Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;
.super Lcom/callapp/contacts/widget/SettingsRowView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/CompoundButton;

.field private b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/SettingsRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;->getBtn()Landroid/widget/CompoundButton;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;->a:Landroid/widget/CompoundButton;

    .line 27
    invoke-super {p0, p0}, Lcom/callapp/contacts/widget/SettingsRowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method abstract getBtn()Landroid/widget/CompoundButton;
.end method

.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0263

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;->a:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;->getBtn()Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;->b:Landroid/view/View$OnClickListener;

    return-void
.end method
