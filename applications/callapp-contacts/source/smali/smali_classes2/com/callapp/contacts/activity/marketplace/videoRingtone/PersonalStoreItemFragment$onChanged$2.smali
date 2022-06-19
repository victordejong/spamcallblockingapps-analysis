.class final Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 655
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 656
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 657
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemUserData()Lio/objectbox/relation/ToMany;

    move-result-object v4

    invoke-virtual {v4}, Lio/objectbox/relation/ToMany;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;

    .line 658
    new-instance v6, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v6}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    const/4 v7, 0x3

    new-array v7, v7, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v8, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v8, v7, v1

    sget-object v8, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const/4 v8, 0x2

    sget-object v9, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields([Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/loader/api/ContactLoader;->addDeviceIdAndPhotoLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/loader/api/ContactLoader;->setLoadOnlyFromCache()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v6

    .line 659
    sget-object v7, Lcom/callapp/framework/phone/Phone;->b:Lcom/callapp/framework/phone/Phone;

    const-string v8, "videoRingtoneUserData"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v5

    const-string v8, "videoRingtoneUserData.phoneOrIdKey"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v5

    .line 660
    new-instance v12, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    const-string v6, "contactData"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v7

    const-string v6, "contactData.nameOrNumber"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 662
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    new-instance v5, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2$1;

    invoke-direct {v5, p0, v2, v3}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2$1;-><init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2;ILjava/util/ArrayList;)V

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getAutoShareVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;)Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-ne v0, v1, :cond_2

    .line 667
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2$2;-><init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
