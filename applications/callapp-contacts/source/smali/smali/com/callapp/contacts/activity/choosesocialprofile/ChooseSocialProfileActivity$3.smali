.class Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$3;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->onPictureChecked(Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/DataSource;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$3;->c:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$3;->a:Lcom/callapp/contacts/model/contact/DataSource;

    iput-object p3, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 12

    .line 607
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$3;->a:Lcom/callapp/contacts/model/contact/DataSource;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$3;->c:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$100(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$3;->c:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$100(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$3;->a:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$3;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/loader/ChosenContactPhotoManager;->a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)V

    .line 609
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$3;->a:Lcom/callapp/contacts/model/contact/DataSource;

    iget v1, v1, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    const/4 v0, 0x0

    new-array v11, v0, [Ljava/lang/String;

    const-string v6, "Social profile"

    const-string v7, "User changed the default image of another contact"

    invoke-virtual/range {v5 .. v11}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    return-void

    .line 612
    :cond_0
    const-class v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    const-string v1, "Data source is null - Not added default image to DB"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
