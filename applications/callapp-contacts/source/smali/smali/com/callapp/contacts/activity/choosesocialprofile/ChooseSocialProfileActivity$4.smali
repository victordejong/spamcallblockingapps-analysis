.class Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->handleHadSocialId(Ljava/lang/Integer;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

.field final synthetic d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Lcom/callapp/common/model/json/JSONSocialNetworkID;Ljava/lang/Integer;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->a:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    iput-object p3, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->b:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->c:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 8

    const/4 v0, 0x0

    .line 630
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->a:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    .line 634
    iget-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 635
    iget-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$100(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getGooglePlacesData()Lcom/callapp/contacts/model/contact/GooglePlacesData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 637
    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getFullName()Ljava/lang/String;

    move-result-object v3

    .line 638
    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    move-object v3, v2

    .line 642
    :goto_0
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    move-object v1, v4

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_7

    .line 648
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->a:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v0, :cond_7

    .line 649
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v0

    .line 650
    iget-object v4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->c:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    instance-of v5, v4, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    if-eqz v5, :cond_2

    .line 651
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v4

    .line 2702
    invoke-virtual {v4, v0, v6}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->d(Ljava/lang/String;Z)Lcom/callapp/common/model/json/JSONFBUserOrPage;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 653
    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getName()Ljava/lang/String;

    move-result-object v3

    .line 654
    iget-object v5, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getFqlType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$502(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 657
    :cond_2
    invoke-virtual {v4, v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 660
    :cond_3
    :goto_1
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->c:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-virtual {v4}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isLoggedIn()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 661
    iget-object v4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v4}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$600(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->b:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->findPrivateUsers(Ljava/lang/String;Ljava/lang/String;I)Lcom/callapp/contacts/model/PersonData;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 663
    invoke-virtual {v4}, Lcom/callapp/contacts/model/PersonData;->getName()Ljava/lang/String;

    move-result-object v2

    .line 664
    invoke-virtual {v4}, Lcom/callapp/contacts/model/PersonData;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    .line 668
    :cond_5
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 669
    iget-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->c:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 672
    :cond_6
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 673
    iget-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->c:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 680
    :cond_7
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 681
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$700(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->b:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/PersonData;

    if-eqz v0, :cond_8

    .line 683
    invoke-virtual {v0}, Lcom/callapp/contacts/model/PersonData;->getName()Ljava/lang/String;

    move-result-object v3

    .line 684
    invoke-virtual {v0}, Lcom/callapp/contacts/model/PersonData;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 688
    :cond_8
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->c:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 689
    :cond_9
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->b:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$800(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Ljava/lang/Integer;)V

    return-void

    .line 691
    :cond_a
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    iget-object v4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->b:Ljava/lang/Integer;

    invoke-static {v0, v1, v4}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$900(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Lcom/callapp/common/model/json/JSONSocialNetworkID;Ljava/lang/Integer;)V

    .line 692
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->b:Ljava/lang/Integer;

    invoke-static {v0, v1, v3}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$1000(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->b:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->c:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-static {v0, v1, v2, v3, v6}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$1100(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Ljava/lang/Integer;Ljava/lang/String;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Z)V

    .line 694
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$1200(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)V
    :try_end_0
    .catch Lcom/callapp/contacts/loader/social/UserNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/callapp/contacts/loader/social/QuotaReachedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 698
    :catch_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->b:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$800(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Ljava/lang/Integer;)V

    return-void
.end method
