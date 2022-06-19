.class Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->setContactProfilePicture(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;Landroid/view/View;I)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$3;->c:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;

    iput-object p2, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$3;->a:Landroid/view/View;

    iput p3, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 219
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->RECENT_CALLS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {p1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result p1

    sget v0, Lcom/callapp/contacts/model/DataChangedInfo;->POSITION_ALL:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/model/DataChangedInfo;->create(III)Lcom/callapp/contacts/model/DataChangedInfo;

    move-result-object v8

    .line 223
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$3;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->ew:[Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    iget v0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$3;->b:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->ev:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    iget v0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$3;->b:I

    aget-object p1, p1, v0

    .line 224
    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    sget-object v10, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->CALL_LOG_CONTACT_LIST:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v9, "FirstTimeExperienceCallLog"

    .line 223
    invoke-static/range {v2 .. v10}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->createIntent(Landroid/content/Context;JLjava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)Landroid/content/Intent;

    move-result-object p1

    .line 225
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eu:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    iget v1, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$3;->b:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "fullName"

    .line 226
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$3;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method
