.class Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice$1;
.super Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListenerImpel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice$1;->a:Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;

    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListenerImpel;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice$1;->a:Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;

    invoke-static {v0}, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->a(Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice$1;->a:Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;

    invoke-static {v0}, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->b(Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice$1;->a:Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;

    invoke-static {v1}, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->a(Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice$1;->a:Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;

    iget-object v0, v0, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->a:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice$1;->a:Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;

    iget-object v0, v0, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->a:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;->b(I)V

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice$1;->a:Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;

    invoke-static {v0, p1}, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->a(Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;I)I

    return-void
.end method
