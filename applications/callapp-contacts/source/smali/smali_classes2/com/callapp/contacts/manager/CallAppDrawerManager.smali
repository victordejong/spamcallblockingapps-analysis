.class public Lcom/callapp/contacts/manager/CallAppDrawerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/CallAppDrawerManager;->a:Landroid/util/SparseIntArray;

    return-void
.end method

.method private a(IILcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;",
            ">;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppDrawerManager;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 85
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getDrawerItems()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v7, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;-><init>(IIIZI)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v7, v0}, Lcom/callapp/contacts/manager/CallAppDrawerManager;->a(IILcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;Ljava/util/ArrayList;)V

    .line 49
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 50
    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    .line 51
    new-instance v12, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;

    const/16 v6, 0xc

    const v7, 0x7f120666

    const v8, 0x7f08046a

    const/4 v9, 0x0

    const/4 v10, 0x5

    const v11, 0x7f060088

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;-><init>(IIIZII)V

    invoke-direct {p0, v2, v4, v12, v0}, Lcom/callapp/contacts/manager/CallAppDrawerManager;->a(IILcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;Ljava/util/ArrayList;)V

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 54
    :goto_0
    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->hu:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v5

    const-string v6, "ReferAndEarnFeature"

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const/16 v5, 0xb

    add-int/lit8 v6, v2, 0x1

    .line 55
    new-instance v14, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;

    const/16 v8, 0xb

    const v9, 0x7f1205aa

    const v10, 0x7f0803c7

    const/4 v11, 0x0

    const/4 v12, 0x7

    const v13, 0x7f0601a2

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;-><init>(IIIZII)V

    invoke-direct {p0, v5, v2, v14, v0}, Lcom/callapp/contacts/manager/CallAppDrawerManager;->a(IILcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;Ljava/util/ArrayList;)V

    add-int/lit8 v2, v6, 0x1

    .line 56
    new-instance v5, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;

    const v7, 0x7f120661

    const v8, 0x7f080487

    const/4 v9, 0x4

    invoke-direct {v5, v9, v7, v8, v1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;-><init>(IIIZ)V

    invoke-direct {p0, v9, v6, v5, v0}, Lcom/callapp/contacts/manager/CallAppDrawerManager;->a(IILcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;Ljava/util/ArrayList;)V

    .line 59
    :cond_2
    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->hA:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0xe

    add-int/lit8 v6, v2, 0x1

    .line 60
    new-instance v13, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;

    const/16 v8, 0xe

    const v9, 0x7f120668

    const v10, 0x7f080417

    const/4 v11, 0x0

    const/4 v12, 0x7

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;-><init>(IIIZI)V

    invoke-direct {p0, v5, v2, v13, v0}, Lcom/callapp/contacts/manager/CallAppDrawerManager;->a(IILcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;Ljava/util/ArrayList;)V

    move v2, v6

    :cond_3
    const/16 v5, 0xf

    add-int/lit8 v6, v2, 0x1

    .line 62
    new-instance v13, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;

    const/16 v8, 0xf

    const v9, 0x7f120667

    const v10, 0x7f0802e7

    const/4 v11, 0x0

    const/4 v12, 0x7

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;-><init>(IIIZI)V

    invoke-direct {p0, v5, v2, v13, v0}, Lcom/callapp/contacts/manager/CallAppDrawerManager;->a(IILcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;Ljava/util/ArrayList;)V

    add-int/lit8 v2, v6, 0x1

    .line 63
    new-instance v5, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;

    const v7, 0x7f12065d

    const v8, 0x7f0802f1

    invoke-direct {v5, v3, v7, v8, v1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;-><init>(IIIZ)V

    invoke-direct {p0, v3, v6, v5, v0}, Lcom/callapp/contacts/manager/CallAppDrawerManager;->a(IILcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;Ljava/util/ArrayList;)V

    add-int/lit8 v3, v2, 0x1

    .line 64
    new-instance v5, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;

    const v6, 0x7f12065e

    const v7, 0x7f080477

    invoke-direct {v5, v4, v6, v7, v1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;-><init>(IIIZ)V

    invoke-direct {p0, v4, v2, v5, v0}, Lcom/callapp/contacts/manager/CallAppDrawerManager;->a(IILcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;Ljava/util/ArrayList;)V

    .line 65
    invoke-static {}, Lcom/callapp/contacts/util/GooglePlayUtils;->isGooglePlayServicesAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v2, v3, 0x1

    .line 66
    new-instance v4, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;

    const v5, 0x7f120662

    const v6, 0x7f0803c0

    const/4 v7, 0x5

    invoke-direct {v4, v7, v5, v6, v1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;-><init>(IIIZ)V

    invoke-direct {p0, v7, v3, v4, v0}, Lcom/callapp/contacts/manager/CallAppDrawerManager;->a(IILcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;Ljava/util/ArrayList;)V

    move v3, v2

    .line 68
    :cond_4
    new-instance v1, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;

    const/4 v5, 0x6

    const v6, 0x7f120850

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x3

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;-><init>(IIIZI)V

    .line 69
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->el:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f120664

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->setNotification(Ljava/lang/String;)V

    const/4 v2, 0x6

    add-int/lit8 v4, v3, 0x1

    .line 70
    invoke-direct {p0, v2, v3, v1, v0}, Lcom/callapp/contacts/manager/CallAppDrawerManager;->a(IILcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;Ljava/util/ArrayList;)V

    const/16 v1, 0x9

    add-int/lit8 v2, v4, 0x1

    .line 71
    new-instance v3, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;

    const/16 v6, 0x9

    const v7, 0x7f12065f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x3

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;-><init>(IIIZI)V

    invoke-direct {p0, v1, v4, v3, v0}, Lcom/callapp/contacts/manager/CallAppDrawerManager;->a(IILcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;Ljava/util/ArrayList;)V

    .line 72
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v3, "feedbackUrl"

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    add-int/lit8 v3, v2, 0x1

    .line 73
    new-instance v10, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;

    const/16 v5, 0x8

    const v6, 0x7f120333

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x3

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;-><init>(IIIZI)V

    invoke-direct {p0, v1, v2, v10, v0}, Lcom/callapp/contacts/manager/CallAppDrawerManager;->a(IILcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;Ljava/util/ArrayList;)V

    move v2, v3

    :cond_6
    const/16 v1, 0xa

    add-int/lit8 v3, v2, 0x1

    .line 75
    new-instance v10, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;

    const/16 v5, 0xa

    const v6, 0x7f12065c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x3

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;-><init>(IIIZI)V

    invoke-direct {p0, v1, v2, v10, v0}, Lcom/callapp/contacts/manager/CallAppDrawerManager;->a(IILcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;Ljava/util/ArrayList;)V

    const/16 v1, 0xd

    .line 76
    new-instance v2, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v9, 0x6

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;-><init>(IIIZI)V

    invoke-direct {p0, v1, v3, v2, v0}, Lcom/callapp/contacts/manager/CallAppDrawerManager;->a(IILcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;Ljava/util/ArrayList;)V

    return-object v0
.end method
