.class Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->updateCandidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$2;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 476
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$2;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$100(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$2;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$100(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getCandidateContactPhoto()Landroid/util/Pair;

    move-result-object v0

    .line 478
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$2;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$300(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$2;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$200(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Ljava/lang/Integer;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    .line 479
    instance-of v2, v1, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_0

    .line 481
    move-object v2, v1

    check-cast v2, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setPhotoUrl(Ljava/lang/String;)V

    .line 482
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V

    const/4 v3, 0x0

    .line 483
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setPhotoResId(I)V

    :cond_0
    if-eqz v0, :cond_1

    .line 486
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    :cond_1
    check-cast v1, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setPhotoUrl(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 489
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$2;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$400(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setPhotoResId(I)V

    :cond_2
    return-void
.end method
