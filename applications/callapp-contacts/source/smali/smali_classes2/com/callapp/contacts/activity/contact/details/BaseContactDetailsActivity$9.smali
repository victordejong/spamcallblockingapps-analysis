.class Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->setHoldContactData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;Z)V
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$9;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$9;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    .line 677
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 678
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$9;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    const-class v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    if-eqz p1, :cond_2

    .line 680
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result v1

    if-eq v1, v0, :cond_1

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isAllCallsInConference()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 683
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->c()V

    goto :goto_1

    .line 681
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$9;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/content/Context;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic lambda$XBjuBX6g1qjYzDSloPVToO-UBkg(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$9;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$9;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 658
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$9;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    const v1, 0x7f0a01ab

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 659
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$9;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    const v2, 0x7f0a01aa

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    const v4, 0x7f060244

    invoke-static {v3, v4}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 660
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$9;->a:Z

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 661
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$9;->a:Z

    if-eqz v1, :cond_4

    .line 662
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getAllHoldContactData()Ljava/util/List;

    move-result-object v1

    const v2, 0x7f0a01c3

    .line 663
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a01a9

    .line 664
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f1204f9

    .line 665
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    .line 667
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/model/contact/ContactData;

    .line 668
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/callapp/contacts/manager/IncognitoCallManager;->get()Lcom/callapp/contacts/manager/IncognitoCallManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/callapp/contacts/manager/IncognitoCallManager;->isIncognito(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 671
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1

    .line 669
    :cond_1
    :goto_0
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1

    .line 673
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_3

    .line 674
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$9;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    const v3, 0x7f120222

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 676
    :cond_3
    :goto_1
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$BaseContactDetailsActivity$9$XBjuBX6g1qjYzDSloPVToO-UBkg;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$BaseContactDetailsActivity$9$XBjuBX6g1qjYzDSloPVToO-UBkg;-><init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$9;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method
