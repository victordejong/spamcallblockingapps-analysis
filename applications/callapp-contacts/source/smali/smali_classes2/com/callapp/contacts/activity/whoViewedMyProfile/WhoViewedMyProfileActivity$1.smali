.class Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogList;

.field final synthetic b:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;Lcom/callapp/contacts/popup/contact/DialogList;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$1;->b:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$1;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRowClicked(I)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$1;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/DialogList;->dismiss()V

    const v0, 0x7f120857

    if-ne p1, v0, :cond_0

    .line 241
    invoke-static {}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->f()V

    :cond_0
    const v0, 0x7f120663

    if-ne p1, v0, :cond_1

    .line 244
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$1;->b:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;

    const-class v1, Lcom/callapp/contacts/activity/settings/SettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    const-string v1, "notifications_settings"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 245
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$1;->b:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
