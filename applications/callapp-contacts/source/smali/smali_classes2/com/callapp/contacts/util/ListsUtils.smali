.class public Lcom/callapp/contacts/util/ListsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;
    .locals 7

    .line 228
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    :try_start_0
    new-instance v0, Lcom/callapp/contacts/util/ListsUtils$6;

    invoke-direct {v0}, Lcom/callapp/contacts/util/ListsUtils$6;-><init>()V

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 234
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/util/ads/JSONAdUnit;

    .line 236
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdType()I

    move-result v1

    if-nez v1, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const-string p0, ""

    :goto_0
    move-object v1, p0

    .line 246
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 247
    :goto_1
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 248
    new-instance p1, Lcom/callapp/contacts/util/ListsUtils$7;

    invoke-direct {p1}, Lcom/callapp/contacts/util/ListsUtils$7;-><init>()V

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/util/ads/JSONExperiment;

    if-eqz p0, :cond_8

    .line 250
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ads/JSONExperiment;->getExperiments()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 251
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AbTestUtils;->getGroupDimension()I

    move-result p1

    .line 252
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ads/JSONExperiment;->getExperiments()Ljava/util/List;

    move-result-object p0

    .line 253
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 254
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/callapp/contacts/util/ads/JSONAdSettings;

    .line 255
    invoke-virtual {v6}, Lcom/callapp/contacts/util/ads/JSONAdSettings;->getGroup()I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 260
    invoke-virtual {v6}, Lcom/callapp/contacts/util/ads/JSONAdSettings;->getLayout()I

    move-result p0

    const/16 p1, 0xd

    const v0, 0x7f0d016d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p0, p1, :cond_7

    const/16 p1, 0xf

    if-eq p0, p1, :cond_4

    const/16 p1, 0x11

    if-eq p0, p1, :cond_6

    const/16 p1, 0x13

    if-eq p0, p1, :cond_5

    :cond_4
    const/4 p0, 0x0

    const v2, 0x7f0d016d

    :goto_2
    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const p0, 0x7f0d0086

    const/4 p0, 0x1

    const v2, 0x7f0d0086

    goto :goto_2

    :cond_6
    const p0, 0x7f0d0085

    const/4 p0, 0x1

    const v2, 0x7f0d0085

    goto :goto_2

    :cond_7
    const p0, 0x7f0d016c

    const/4 p0, 0x0

    const v2, 0x7f0d016c

    const/4 v5, 0x0

    .line 289
    :goto_3
    new-instance p1, Lcom/callapp/contacts/util/ads/AdSettings;

    const/4 v3, 0x1

    invoke-virtual {v6}, Lcom/callapp/contacts/util/ads/JSONAdSettings;->getAnimation()I

    move-result v4

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/util/ads/AdSettings;-><init>(Ljava/lang/String;IZIZ)V

    .line 290
    invoke-virtual {p1, p0}, Lcom/callapp/contacts/util/ads/AdSettings;->setTitlePrimaryColor(Z)V

    .line 291
    invoke-virtual {v6}, Lcom/callapp/contacts/util/ads/JSONAdSettings;->getLayout()I

    move-result p0

    invoke-static {p0}, Lcom/callapp/contacts/util/ads/AdUtils;->isIconImageCircleByType(I)Z

    move-result p0

    .line 5066
    iput-boolean p0, p1, Lcom/callapp/contacts/util/ads/AdSettings;->a:Z

    return-object p1

    .line 299
    :cond_8
    new-instance p0, Lcom/callapp/contacts/util/ads/AdSettings;

    const v2, 0x7f0d016d

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/util/ads/AdSettings;-><init>(Ljava/lang/String;IZIZ)V

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    .line 461
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact List"

    const-string v2, "Block by number"

    const-string v3, "Clicked"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;

    const v2, 0x7f1202ec

    .line 463
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/util/ListsUtils$15;

    invoke-direct {v3}, Lcom/callapp/contacts/util/ListsUtils$15;-><init>()V

    const-string v4, ""

    invoke-direct {v1, v2, v4, v4, v3}, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$SimpleDoneDialogListener;)V

    .line 462
    invoke-virtual {v0, p0, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public static a(Landroid/content/Context;IILcom/callapp/contacts/event/listener/Listener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Lcom/callapp/contacts/event/listener/Listener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 357
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->w:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v8, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const p1, 0x7f120878

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const p1, 0x7f1204c5

    .line 359
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/callapp/contacts/util/ListsUtils$11;

    invoke-direct {v6, p3}, Lcom/callapp/contacts/util/ListsUtils$11;-><init>(Lcom/callapp/contacts/event/listener/Listener;)V

    new-instance v7, Lcom/callapp/contacts/util/ListsUtils$12;

    invoke-direct {v7}, Lcom/callapp/contacts/util/ListsUtils$12;-><init>()V

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 358
    invoke-virtual {v0, p0, v8}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 377
    :cond_0
    new-instance p0, Lcom/callapp/contacts/util/ListsUtils$13;

    invoke-direct {p0, p3}, Lcom/callapp/contacts/util/ListsUtils$13;-><init>(Lcom/callapp/contacts/event/listener/Listener;)V

    .line 383
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ListsUtils$13;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 319
    new-instance v0, Lcom/callapp/contacts/util/ListsUtils$8;

    invoke-direct {v0, p1, p2}, Lcom/callapp/contacts/util/ListsUtils$8;-><init>(ILjava/lang/String;)V

    invoke-static {p0, v0, p1, p2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;ILjava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;Landroid/view/View;)V
    .locals 9

    .line 304
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    iget-wide v2, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->contactId:J

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v0 .. v8}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;Landroid/view/View;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Ljava/lang/String;Lcom/callapp/contacts/model/DataChangedInfo;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 80
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pressed on contact in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Contact List"

    const-string v6, "Clicked"

    invoke-virtual {v2, v5, v3, v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v2

    .line 83
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 84
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f1204cc

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1111
    invoke-virtual {v0, v1, v5}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 85
    :cond_1
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 87
    iget-wide v7, v0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->contactId:J

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v6, p0

    move-object/from16 v12, p3

    move-object/from16 v14, p4

    invoke-static/range {v6 .. v14}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->createIntent(Landroid/content/Context;JLjava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)Landroid/content/Intent;

    move-result-object v1

    .line 89
    iget-object v2, v0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    iget-object v3, v0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 90
    iget-object v2, v0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    const-string v3, "fullName"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    :cond_2
    iget-wide v2, v0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->contactId:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-nez v9, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    const-string v3, "EXTRA_FORCE_SHOW_CORRECTED_INFO_PRESENTER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    iget-wide v2, v0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->contactId:J

    cmp-long v0, v2, v7

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    const-string v0, "EXTRA_FORCE_SHOW_IS_SPAM_PRESENTER"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v0, p0

    .line 96
    invoke-static {p0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 97
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f1204fc

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2111
    invoke-virtual {v0, v1, v5}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 6

    .line 170
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    iget-wide v2, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->contactId:J

    iget-object v4, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->normalNumbers:Ljava/util/List;

    new-instance v5, Lcom/callapp/contacts/util/ListsUtils$2;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/callapp/contacts/util/ListsUtils$2;-><init>(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLjava/util/List;Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 6

    .line 180
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    iget-wide v2, p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    iget-object v4, p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    new-instance v5, Lcom/callapp/contacts/util/ListsUtils$3;

    invoke-direct {v5, p0, p2}, Lcom/callapp/contacts/util/ListsUtils$3;-><init>(Landroid/content/Context;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLjava/util/List;Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;ILjava/lang/String;)V
    .locals 8

    const v0, 0x7f12029d

    .line 341
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f12029c

    .line 342
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 343
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceRadioBtnsWithTextField;

    invoke-static {}, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;->values()[Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    move-result-object v4

    new-instance v7, Lcom/callapp/contacts/util/ListsUtils$10;

    invoke-direct {v7, p1}, Lcom/callapp/contacts/util/ListsUtils$10;-><init>(Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;)V

    move-object v1, v0

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceRadioBtnsWithTextField;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;)V

    const/4 p1, 0x3

    .line 352
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceRadioBtnsWithTextField;->setInputType(I)V

    .line 353
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 9

    .line 124
    iget-wide v2, p2, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->contactId:J

    iget-object v4, p2, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 4128
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 4130
    new-instance v8, Lcom/callapp/contacts/util/ListsUtils$1;

    invoke-direct {v8, p4}, Lcom/callapp/contacts/util/ListsUtils$1;-><init>(Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    const-string v5, "Contact name or number"

    const-string v6, "Call"

    move-object v0, p0

    move-object v1, p1

    move v7, p3

    invoke-static/range {v0 .. v8}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/callapp/contacts/action/ActionDoneListener;)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 161
    invoke-static {p0, p1, v0}, Lcom/callapp/contacts/util/SmsUtils;->c(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)Z

    if-eqz p2, :cond_0

    .line 163
    invoke-interface {p2}, Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;->b()V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V
    .locals 11

    .line 105
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pressed on contact in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "Contact List"

    const-string v2, "Clicked"

    invoke-virtual {v0, v1, p3, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p3, ""

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p3

    .line 108
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 109
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p0

    const p1, 0x7f1204cc

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3111
    invoke-virtual {p0, p1, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 110
    :cond_1
    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    const-wide/16 v3, 0x0

    .line 112
    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v9, "PlaceClicked"

    move-object v2, p0

    invoke-static/range {v2 .. v10}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->createIntent(Landroid/content/Context;JLjava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "fullName"

    .line 113
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    const-string p3, "EXTRA_FORCE_SHOW_CORRECTED_INFO_PRESENTER"

    .line 114
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string p3, "EXTRA_FORCE_SHOW_IS_SPAM_PRESENTER"

    .line 115
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    invoke-static {p0, p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 118
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p0

    const p1, 0x7f1204fc

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4111
    invoke-virtual {p0, p1, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 331
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;

    const v2, 0x7f1202d4

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/util/ListsUtils$9;

    invoke-direct {v3}, Lcom/callapp/contacts/util/ListsUtils$9;-><init>()V

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$SimpleDoneDialogListener;)V

    invoke-virtual {v0, p0, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public static a(Landroid/view/View;Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;)V
    .locals 6

    .line 388
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/popup/contact/DialogList;-><init>(Ljava/lang/String;)V

    .line 389
    sget-object v1, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/DialogList;->setDialogType(Lcom/callapp/contacts/manager/popup/Popup$DialogType;)V

    .line 390
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 393
    new-instance v2, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v3, 0x7f120109

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0802b6

    invoke-direct {v2, v5, v4, v3}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    new-instance v2, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v3, 0x7f120108

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0802b4

    invoke-direct {v2, v5, v4, v3}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v2, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v3, 0x7f1202ea

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0802b5

    invoke-direct {v2, v5, v4, v3}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    new-instance v2, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d00aa

    invoke-direct {v2, v3, v4, v1}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 400
    new-instance v1, Lcom/callapp/contacts/util/ListsUtils$14;

    invoke-direct {v1, v0, p0, p1}, Lcom/callapp/contacts/util/ListsUtils$14;-><init>(Lcom/callapp/contacts/popup/contact/DialogList;Landroid/view/View;Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;)V

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;->setListener(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    .line 456
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/popup/contact/DialogList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 457
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 190
    new-instance v0, Lcom/callapp/contacts/util/ListsUtils$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/util/ListsUtils$4;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnSwipeListener(Lcom/callapp/contacts/activity/base/BaseSwipeView$OnSwipedListener;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 209
    new-instance v0, Lcom/callapp/contacts/util/ListsUtils$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/util/ListsUtils$5;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnSwipeListener(Lcom/callapp/contacts/activity/base/BaseSwipeView$OnSwipedListener;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;Landroid/view/View;)V
    .locals 10

    .line 309
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    iget-wide v2, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->contactId:J

    const/4 v9, 0x1

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v0 .. v9}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;Landroid/view/View;Z)V

    return-void
.end method
