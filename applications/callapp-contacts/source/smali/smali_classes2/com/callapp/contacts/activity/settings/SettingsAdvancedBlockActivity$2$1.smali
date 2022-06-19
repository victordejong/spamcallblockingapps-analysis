.class Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2;Z)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$1;->b:Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 0

    .line 76
    new-instance p1, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$1$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$1$1;-><init>(Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$1;)V

    .line 84
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$1$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
