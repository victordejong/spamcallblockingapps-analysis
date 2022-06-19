.class public Lcom/callapp/contacts/action/local/ChangePreferredSimAction;
.super Lcom/callapp/contacts/action/local/LocalAction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/callapp/contacts/action/local/LocalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 0

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 78
    invoke-static {}, Lcom/callapp/contacts/manager/sim/SimManager;->get()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/sim/SimManager;->isDualSimAvailable()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    sget-object p2, Lcom/callapp/contacts/action/local/ChangePreferredSimAction$2;->b:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/action/Action$ContextType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    return p3

    :cond_1
    return p2

    :cond_2
    :goto_0
    return p3
.end method

.method public final b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 8

    .line 26
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p3

    const-string v0, "Contact Details"

    const-string v1, "ClickSelectSim"

    const-string v2, "Clicked"

    invoke-virtual {p3, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/contacts/manager/Singletons;->getSimManager()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/contacts/manager/sim/SimManager;->getDualSimOperators()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    move-result-object p3

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const v1, 0x7f1202a6

    .line 29
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v4, v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    .line 30
    invoke-virtual {p3}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->getOperator1()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const v5, 0x7f1202a8

    invoke-static {v5, v3}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    new-array v3, v1, [Ljava/lang/Object;

    .line 31
    invoke-virtual {p3}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->getOperator2()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v3, v2

    const p3, 0x7f1202a9

    invoke-static {p3, v3}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/4 v3, 0x2

    aput-object p3, v4, v3

    .line 34
    sget p3, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->a:I

    .line 36
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/callapp/contacts/loader/PreferredSimManager;->a(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1059
    sget-object p3, Lcom/callapp/contacts/action/local/ChangePreferredSimAction$2;->a:[I

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ordinal()I

    move-result v6

    aget p3, p3, v6

    if-eq p3, v1, :cond_2

    if-eq p3, v3, :cond_1

    if-eq p3, v0, :cond_0

    .line 1067
    sget v2, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->a:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_0
    move p3, v2

    .line 41
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v7, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceRadioBtnsWithSubtitle;

    const v1, 0x7f120058

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f120059

    .line 42
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/callapp/contacts/action/local/ChangePreferredSimAction$1;

    invoke-direct {v6, p0, v5, p2}, Lcom/callapp/contacts/action/local/ChangePreferredSimAction$1;-><init>(Lcom/callapp/contacts/action/local/ChangePreferredSimAction;Lcom/callapp/contacts/manager/sim/SimManager$SimId;Lcom/callapp/contacts/model/contact/ContactData;)V

    move-object v1, v7

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceRadioBtnsWithSubtitle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;ILcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;)V

    .line 41
    invoke-virtual {v0, p1, v7}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public final getDescriptionMessage$469752d4()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120456

    .line 73
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
