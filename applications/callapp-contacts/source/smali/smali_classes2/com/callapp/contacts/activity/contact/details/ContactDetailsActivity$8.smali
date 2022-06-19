.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setDetailsActivityMode()V
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

    .line 658
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->INCOMING_CALL:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->setIncomingCallScreen(Z)V

    .line 663
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v0

    .line 664
    const-class v1, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 665
    const-class v2, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 666
    sget-object v5, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->a:[I

    iget-object v6, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v6}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v3, :cond_6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v0, 0x3

    if-eq v5, v0, :cond_1

    goto/16 :goto_2

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    sget-object v5, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    invoke-static {v0, v5}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1000(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;)V

    .line 696
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 697
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    new-array v5, v6, [Ljava/lang/String;

    aput-object v1, v5, v4

    aput-object v2, v5, v3

    invoke-static {v0, v5}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1800(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;[Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->setHangButton(Z)V

    goto/16 :goto_2

    .line 679
    :cond_2
    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v5}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1300(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_3

    .line 680
    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v5}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1400(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/view/ViewStub;

    move-result-object v6

    invoke-static {v6}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1302(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroid/view/View;)Landroid/view/View;

    .line 682
    :cond_3
    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-static {v5, v6}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1502(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    .line 683
    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v5}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1500(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    move-result-object v5

    if-nez v5, :cond_4

    .line 684
    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    new-instance v6, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-direct {v6}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;-><init>()V

    invoke-static {v5, v6}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1502(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    .line 686
    :cond_4
    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v5}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1500(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->isAdded()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    iget-object v6, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v6}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1500(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/callapp/contacts/util/Fragments;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const v5, 0x7f0a072e

    .line 687
    iget-object v6, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v6}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1500(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    move-result-object v6

    invoke-virtual {v0, v5, v6, v2}, Landroidx/fragment/app/s;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->e()V

    .line 689
    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->RECORDER_TEST:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    invoke-static {v0, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1000(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;)V

    .line 690
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 691
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 692
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    new-array v2, v3, [Ljava/lang/String;

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1800(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;[Ljava/lang/String;)V

    return-void

    .line 668
    :cond_6
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    sget-object v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->INCOMING_CALL:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    invoke-static {v2, v3}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1000(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;)V

    .line 669
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    invoke-static {v2, v3}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1102(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    .line 670
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1200(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1200(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 671
    :goto_1
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1100(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    move-result-object v3

    if-nez v3, :cond_8

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 672
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    invoke-static {v3, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1102(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    .line 674
    :cond_8
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1100(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1100(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/Fragments;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const v2, 0x7f0a04fa

    .line 675
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1100(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/s;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_2
    return-void

    :catch_0
    move-exception v0

    .line 702
    const-class v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void
.end method
