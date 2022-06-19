.class public Lcom/callapp/contacts/activity/NonEditableContactDetailsActivity;
.super Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;-><init>()V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;JLjava/lang/String;Z)Z
    .locals 9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "EditProfile"

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    .line 60
    invoke-static/range {v0 .. v8}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->createIntent(Landroid/content/Context;JLjava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)Landroid/content/Intent;

    move-result-object p1

    .line 61
    const-class p2, Lcom/callapp/contacts/activity/NonEditableContactDetailsActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 62
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getStoreItemAssetManager(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;
    .locals 1

    .line 52
    new-instance v0, Lcom/callapp/contacts/activity/-$$Lambda$NonEditableContactDetailsActivity$zXR8ZBgmX2cf2FN-_UCI6Hw3vD8;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/-$$Lambda$NonEditableContactDetailsActivity$zXR8ZBgmX2cf2FN-_UCI6Hw3vD8;-><init>(Lcom/callapp/contacts/activity/NonEditableContactDetailsActivity;)V

    .line 1133
    iput-object v0, p1, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->b:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    return-object p1
.end method

.method public isClickValid(Landroid/view/View;)Z
    .locals 2

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0101

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 70
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v0, 0x7f1202d3

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2111
    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$getStoreItemAssetManager$1$NonEditableContactDetailsActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/activity/-$$Lambda$NonEditableContactDetailsActivity$c-d1HXAyxFKBd6dHY9UX-r6Lqlg;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/-$$Lambda$NonEditableContactDetailsActivity$c-d1HXAyxFKBd6dHY9UX-r6Lqlg;-><init>(Lcom/callapp/contacts/activity/NonEditableContactDetailsActivity;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$null$0$NonEditableContactDetailsActivity(Ljava/lang/String;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/activity/NonEditableContactDetailsActivity;->coverImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 55
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/NonEditableContactDetailsActivity;->coverImageView:Landroid/widget/ImageView;

    invoke-direct {v0, v2, p1, p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    .line 2376
    iput-boolean v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 55
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    return-void
.end method

.method public loadNewContact(Lcom/callapp/framework/phone/Phone;J)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/framework/phone/Phone;",
            "J)",
            "Landroid/util/Pair<",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;>;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/activity/NonEditableContactDetailsActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    iget-object v1, p0, Lcom/callapp/contacts/activity/NonEditableContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 78
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v1

    sget-object v6, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->ALL:Ljava/util/EnumSet;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/callapp/contacts/manager/ContactLoaderManager;->registerForContactDetailsStackForSelfContact(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 34
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Non Editable User Profile"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/NonEditableContactDetailsActivity;->getBottomActionBar()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/NonEditableContactDetailsActivity;->getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;I)V

    .line 40
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/NonEditableContactDetailsActivity;->getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/ViewUtils;->f(Landroid/view/View;I)V

    const p1, 0x7f0a0953

    .line 41
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/NonEditableContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 46
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Non Editable User Profile"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onDestroy()V

    return-void
.end method

.method public releaseContact()V
    .locals 3

    .line 83
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/NonEditableContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/callapp/contacts/manager/ContactLoaderManager;->unRegisterForContactDetailsStack(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Z)V

    return-void
.end method
