.class Lcom/callapp/contacts/activity/EditUserProfileActivity$13;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/EditUserProfileActivity;->uploadToS3(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field final synthetic c:Lcom/callapp/contacts/activity/EditUserProfileActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;Ljava/lang/String;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$13;->c:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$13;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$13;->b:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 520
    iget-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$13;->c:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$2202(Lcom/callapp/contacts/activity/EditUserProfileActivity;Z)Z

    .line 524
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 528
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$13;->c:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$2300(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$13;->c:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$2400(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/callapp/contacts/util/ImageUtils;->a(Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 530
    const-class v1, Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 531
    iget-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$13;->b:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    const/4 v0, 0x0

    .line 533
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/jpg"

    const-string v3, "callapp-profile-pictures"

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/util/aws/AWSUtils;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 534
    iget-object v2, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$13;->c:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$2202(Lcom/callapp/contacts/activity/EditUserProfileActivity;Z)Z

    .line 535
    iget-object v2, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$13;->c:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$2300(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->b(Ljava/io/File;)Z

    .line 536
    iget-object v2, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$13;->c:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$2500(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->b(Ljava/io/File;)Z

    .line 537
    invoke-static {v0}, Lcom/callapp/contacts/util/IoUtils;->b(Ljava/io/File;)Z

    .line 538
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "User corrected info"

    if-eqz v0, :cond_0

    .line 539
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v3, "upload profile image success"

    invoke-virtual {v0, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->userMedia:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$13;->c:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$2600(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->resetChosenPicture()V

    .line 543
    iget-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$13;->c:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$2700(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updatePhoto()V

    .line 544
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    .line 1462
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Lcom/callapp/contacts/model/contact/ContactField;)V

    goto :goto_1

    .line 547
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "upload profile image failed"

    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$13;->c:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$2800(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V

    .line 550
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$13;->b:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    return-void
.end method
