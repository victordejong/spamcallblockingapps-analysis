.class final Lcom/callapp/contacts/activity/records/CallRecordsActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 151
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->e()V

    const/4 p1, -0x1

    if-ne p3, p1, :cond_0

    .line 152
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    const-class p3, Lcom/callapp/contacts/activity/settings/SettingsActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "show_call_recorder_permission"

    const/4 p3, 0x1

    .line 154
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "call_recorder_settings"

    .line 155
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 157
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->getAllRecords()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 158
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$2;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
