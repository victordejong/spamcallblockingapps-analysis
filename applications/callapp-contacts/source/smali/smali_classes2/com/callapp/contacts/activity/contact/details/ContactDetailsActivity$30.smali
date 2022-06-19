.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onSetAsDefaultAppClicked()V
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

    .line 2008
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$30;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2013
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$30;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v5}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4000(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x190

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    .line 2014
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$30;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v1, v2, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;ZLcom/callapp/contacts/manager/popup/ActivityResult;)V

    goto/16 :goto_4

    .line 2016
    :cond_0
    iget-object v3, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$30;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v4, v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    const-class v5, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-static {v3, v4}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1902(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    .line 2017
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Click "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    const-string v6, "yes"

    goto :goto_0

    :cond_1
    const-string v6, "no"

    :goto_0
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    new-array v11, v2, [Ljava/lang/String;

    const-string v6, "Permissions"

    const-string v7, "Default call screen"

    invoke-virtual/range {v5 .. v11}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 2018
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v12

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultSystemPhoneApp()Z

    move-result v3

    const-string v5, "true"

    const-string v6, "false"

    if-eqz v3, :cond_2

    move-object v15, v5

    goto :goto_1

    :cond_2
    move-object v15, v6

    :goto_1
    const-wide/16 v16, 0x0

    const-string v13, "Permissions"

    const-string v14, "Default dailer from CD"

    invoke-virtual/range {v12 .. v17}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 2019
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultSystemPhoneApp()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move-object v5, v6

    :goto_2
    const-string v6, "Permissions"

    const-string v7, "Default dialer"

    invoke-virtual {v3, v6, v7, v5}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->g()V

    .line 2021
    iget-object v3, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$30;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    move-result-object v3

    if-eqz v3, :cond_6

    if-ne v1, v4, :cond_6

    .line 2022
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$30;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    move-result-object v1

    .line 2567
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultSystemPhoneApp()Z

    move-result v3

    const/16 v4, 0x11

    if-eqz v3, :cond_5

    .line 2568
    iget-object v3, v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a:Landroid/widget/TextView;

    const v5, 0x7f1203a9

    if-eqz v3, :cond_4

    .line 2569
    iget-object v3, v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2570
    iget-object v3, v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->b:Landroid/widget/TextView;

    invoke-static {v3, v2}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;Z)V

    .line 2571
    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->c:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;Z)V

    goto :goto_3

    .line 2573
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v2

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 2576
    :cond_5
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v2

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f120437

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 2024
    :cond_6
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultSystemPhoneApp()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2025
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$30;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4102(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)Z

    .line 2028
    :cond_7
    :goto_3
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultSystemPhoneApp()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->e()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2029
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$30;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4200(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    return-void

    .line 2033
    :cond_8
    :goto_4
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$30;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4002(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;J)J

    return-void
.end method
