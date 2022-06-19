.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$22;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 1291
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$22;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 9

    .line 1294
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$22;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$22;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 1296
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$22;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v2, "InCallAutoScroll"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$2902(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;J)J

    .line 1297
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$22;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$22;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$2900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$3002(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)Z

    .line 1299
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bZ:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v7, v0, v5

    if-gez v7, :cond_1

    .line 1301
    sget-object v7, Lcom/callapp/contacts/manager/preferences/Prefs;->bZ:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    .line 2025
    invoke-virtual {v7}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->a()Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    const-wide/16 v7, 0x1

    add-long/2addr v0, v7

    const-wide/16 v7, 0x4

    .line 1302
    rem-long/2addr v0, v7

    cmp-long v7, v0, v3

    if-nez v7, :cond_1

    .line 1303
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f120803

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x30

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 1304
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bZ:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    .line 1308
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$22;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$3100(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    return-void
.end method
