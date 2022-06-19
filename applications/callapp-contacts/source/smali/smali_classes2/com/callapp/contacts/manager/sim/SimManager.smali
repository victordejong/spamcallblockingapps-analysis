.class public Lcom/callapp/contacts/manager/sim/SimManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/sim/SimManager$GeminiMethodNotFoundException;,
        Lcom/callapp/contacts/manager/sim/SimManager$DualSim;,
        Lcom/callapp/contacts/manager/sim/SimManager$SimId;,
        Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;,
        Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;
    }
.end annotation


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field private a:Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

.field private b:Ljava/lang/Boolean;

.field private c:Z

.field private e:Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/callapp/framework/phone/Phone;",
            "Lcom/callapp/contacts/manager/sim/SimManager$SimId;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/manager/sim/SimManager$SimId;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/telephony/SubscriptionManager;

.field private j:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private k:Landroid/os/HandlerThread;

.field private l:Landroid/os/Handler;

.field private m:Lcom/callapp/contacts/manager/sim/GetSimStateCommand;

.field private n:Lcom/callapp/contacts/manager/task/Task;

.field private final o:Ljava/lang/Object;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const-string v0, "SLOT_ID"

    const-string v1, "SubscriberId"

    const-string v2, "Subscription"

    const-string v3, "com.android.phone.DialingMode"

    const-string v4, "com.android.phone.extra.slot"

    const-string v5, "linkID"

    const-string v6, "phone"

    const-string v7, "phone_type"

    const-string v8, "simId"

    const-string v9, "simNum"

    const-string v10, "simSlot"

    const-string v11, "sim_subscription"

    const-string v12, "simnum"

    const-string v13, "slot"

    const-string v14, "slotId"

    const-string v15, "subId"

    const-string v16, "sub_id"

    const-string v17, "subscriber_id"

    const-string v18, "subscription"

    const-string v19, "subscription_id"

    const-string v20, "SubscriptionId"

    .line 69
    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/manager/sim/SimManager;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->a:Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    .line 67
    iput-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->b:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->c:Z

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->f:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->g:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->h:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->o:Ljava/lang/Object;

    return-void
.end method

.method private static synthetic a(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)I
    .locals 0

    .line 1099
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private a(Lcom/callapp/contacts/manager/sim/SimManager$DualSim;)Lcom/callapp/contacts/manager/sim/SimManager$DualSim;
    .locals 1

    if-eqz p1, :cond_0

    .line 234
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/sim/SimManager;->b(Lcom/callapp/contacts/manager/sim/SimManager$DualSim;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->c:Z

    .line 236
    :cond_0
    iget-boolean v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->c:Z

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/callapp/contacts/manager/sim/SimManager$DualSim;
    .locals 9

    .line 669
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    new-instance p2, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    invoke-direct {p2, p0, p1, v1}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p2

    .line 672
    :cond_0
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 674
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bT:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_3

    .line 676
    aget-object v3, p3, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 679
    :try_start_0
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3, v5, v6}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    .line 680
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3, v4, v7}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    .line 683
    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 684
    invoke-static {v6, v7}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 685
    new-instance v6, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    invoke-direct {v6, p1, p2, v5}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/callapp/contacts/manager/sim/SimManager$GeminiMethodNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 691
    :catch_0
    :cond_1
    :try_start_1
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3, v5, v6}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    .line 692
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3, v4, v7}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 695
    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 696
    invoke-static {v6, v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 697
    new-instance v3, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    invoke-direct {v3, p1, p2, v5}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/callapp/contacts/manager/sim/SimManager$GeminiMethodNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    :catch_1
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 704
    :cond_3
    new-instance p2, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    invoke-direct {p2, p0, p1, v1}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    return-object p2
.end method

.method public static a(I)Lcom/callapp/contacts/manager/sim/SimManager$SimId;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 271
    :cond_0
    sget-object p0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_2:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object p0

    .line 269
    :cond_1
    sget-object p0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_1:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object p0

    .line 267
    :cond_2
    sget-object p0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/sim/SimManager;)Lcom/callapp/contacts/manager/task/Task;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->n:Lcom/callapp/contacts/manager/task/Task;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/sim/SimManager;Lcom/callapp/contacts/manager/task/Task;)Lcom/callapp/contacts/manager/task/Task;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->n:Lcom/callapp/contacts/manager/task/Task;

    return-object p1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/callapp/contacts/manager/sim/SimManager$GeminiMethodNotFoundException;
        }
    .end annotation

    .line 765
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 766
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 767
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 769
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 772
    :catch_0
    new-instance p0, Lcom/callapp/contacts/manager/sim/SimManager$GeminiMethodNotFoundException;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/sim/SimManager$GeminiMethodNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/contacts/manager/sim/SimManager$SimId;Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V
    .locals 1

    .line 928
    invoke-static {}, Lcom/callapp/contacts/manager/sim/SimManager;->get()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/sim/SimManager;->isDualSimAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 929
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    if-eq p2, v0, :cond_0

    .line 930
    invoke-virtual {p2}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->getSimId()I

    move-result p0

    invoke-interface {p3, p0}, Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;->onRowClicked(I)V

    return-void

    .line 931
    :cond_0
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->bR:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    if-eq p2, v0, :cond_1

    .line 932
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->bR:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->getSimId()I

    move-result p0

    invoke-interface {p3, p0}, Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;->onRowClicked(I)V

    return-void

    .line 934
    :cond_1
    invoke-static {p0, p1, p3}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    return-void

    .line 937
    :cond_2
    sget-object p0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->getSimId()I

    move-result p0

    invoke-interface {p3, p0}, Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;->onRowClicked(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V
    .locals 6

    .line 942
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getSimManager()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/sim/SimManager;->getDualSimOperators()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 944
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 945
    new-instance v2, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v3, 0x7f080490

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->getOperator1()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_1:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->getSimId()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    new-instance v2, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v3, 0x7f080492

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->getOperator2()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_2:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->getSimId()I

    move-result v4

    invoke-direct {v2, v3, v0, v4}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogList;

    const v2, 0x7f1202a7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/callapp/contacts/popup/contact/DialogList;-><init>(Ljava/lang/String;)V

    .line 949
    sget-object p1, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/popup/contact/DialogList;->setDialogType(Lcom/callapp/contacts/manager/popup/Popup$DialogType;)V

    .line 950
    new-instance p1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;

    const v2, 0x7f0d00aa

    invoke-direct {p1, p0, v2, v1}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 951
    new-instance v1, Lcom/callapp/contacts/manager/sim/SimManager$2;

    invoke-direct {v1, p2, v0}, Lcom/callapp/contacts/manager/sim/SimManager$2;-><init>(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;Lcom/callapp/contacts/popup/contact/DialogList;)V

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;->setListener(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    .line 958
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/popup/contact/DialogList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 959
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 961
    :cond_0
    sget-object p0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->getSimId()I

    move-result p0

    invoke-interface {p2, p0}, Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;->onRowClicked(I)V

    return-void
.end method

.method private static a(Landroid/content/Intent;I)V
    .locals 4

    .line 922
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager;->d:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 923
    invoke-virtual {p0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(ILandroid/telephony/SubscriptionInfo;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    return v0

    .line 1147
    :cond_0
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "huawei"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 1148
    iget-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->b:Ljava/lang/Boolean;

    const-string v2, "getStatus"

    if-nez p1, :cond_1

    new-array p1, v0, [Ljava/lang/Class;

    .line 1149
    invoke-static {p2, v2, p1}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->b:Ljava/lang/Boolean;

    .line 1152
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->b:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1154
    :try_start_0
    invoke-static {p2, v2}, Lcom/callapp/contacts/util/ReflectionUtils;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v1, v0

    :catch_0
    :cond_3
    return v1
.end method

.method private static a(Landroid/telephony/SubscriptionInfo;Landroid/telecom/PhoneAccountHandle;Landroid/content/Intent;)Z
    .locals 3

    .line 878
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 879
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 880
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v1

    .line 881
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 882
    invoke-static {v0, p0, v1}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 885
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string p0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    .line 890
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/Number;Landroid/telecom/PhoneAccountHandle;Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "mId"

    .line 906
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 907
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 908
    check-cast v0, Ljava/lang/String;

    .line 909
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 911
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_0

    const-string p0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    .line 912
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 898
    invoke-static {p2, p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 899
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->f(Ljava/lang/String;)I

    move-result p0

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->f(Ljava/lang/String;)I

    move-result v0

    if-ne p0, v0, :cond_0

    invoke-static {p2, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 900
    :cond_0
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->f(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x3

    if-le p0, v0, :cond_1

    .line 901
    invoke-static {p2, p1}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p1, p2}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)I
    .locals 1

    .line 407
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_1:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    if-ne p0, v0, :cond_0

    const p0, 0x7f080491

    return p0

    .line 409
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_2:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    if-ne p0, v0, :cond_1

    const p0, 0x7f080493

    return p0

    :cond_1
    const p0, 0x7f080494

    return p0
.end method

.method public static b()Lcom/callapp/contacts/manager/sim/SimManager$SimId;
    .locals 2

    .line 390
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$4;->a:[I

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bR:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 393
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bR:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_1:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 394
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_1:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object v0

    .line 401
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bR:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 402
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object v0

    .line 397
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bR:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_2:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 398
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_2:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object v0
.end method

.method private b(Lcom/callapp/contacts/manager/sim/SimManager$DualSim;)Z
    .locals 8

    .line 716
    invoke-static {p1}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->c(Lcom/callapp/contacts/manager/sim/SimManager$DualSim;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->d(Lcom/callapp/contacts/manager/sim/SimManager$DualSim;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    return v1

    .line 720
    :cond_0
    invoke-static {p1}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->e(Lcom/callapp/contacts/manager/sim/SimManager$DualSim;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->f(Lcom/callapp/contacts/manager/sim/SimManager$DualSim;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 721
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-lt p1, v0, :cond_1

    .line 723
    iget-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->e:Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

    invoke-static {p1}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->b(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)Z

    move-result p1

    return p1

    :cond_1
    const-string p1, "getSimState"

    const-string v0, "getSimStateGemini"

    const-string v3, "getIccState"

    .line 729
    filled-new-array {p1, v0, v3}, [Ljava/lang/String;

    move-result-object p1

    .line 730
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bT:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x3

    if-ge v3, v6, :cond_4

    .line 731
    aget-object v6, p1, v3

    .line 733
    :try_start_0
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v6, v2, v7}, Lcom/callapp/contacts/manager/sim/SimManager;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Z

    move-result v4

    .line 734
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v6, v1, v7}, Lcom/callapp/contacts/manager/sim/SimManager;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Z

    move-result v5
    :try_end_0
    .catch Lcom/callapp/contacts/manager/sim/SimManager$GeminiMethodNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    goto :goto_1

    .line 741
    :catch_0
    :cond_2
    :try_start_1
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v6, v2, v7}, Lcom/callapp/contacts/manager/sim/SimManager;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Z

    move-result v4

    .line 742
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v6, v1, v7}, Lcom/callapp/contacts/manager/sim/SimManager;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Z

    move-result v5
    :try_end_1
    .catch Lcom/callapp/contacts/manager/sim/SimManager$GeminiMethodNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    goto :goto_1

    :catch_1
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    return v1

    :cond_5
    return v2
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/callapp/contacts/manager/sim/SimManager$GeminiMethodNotFoundException;
        }
    .end annotation

    .line 780
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 781
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p3, 0x1

    new-array v1, p3, [Ljava/lang/Object;

    .line 782
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 784
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    return p3

    .line 790
    :catch_0
    new-instance p0, Lcom/callapp/contacts/manager/sim/SimManager$GeminiMethodNotFoundException;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/sim/SimManager$GeminiMethodNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)I
    .locals 1

    .line 417
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_1:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    if-ne p0, v0, :cond_0

    const p0, 0x7f080490

    return p0

    .line 419
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_2:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    if-ne p0, v0, :cond_1

    const p0, 0x7f080492

    return p0

    :cond_1
    const p0, 0x7f080494

    return p0
.end method

.method private c()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;
    .locals 1

    .line 228
    invoke-direct {p0}, Lcom/callapp/contacts/manager/sim/SimManager;->getSimNamesIfDualSim()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    move-result-object v0

    .line 229
    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Lcom/callapp/contacts/manager/sim/SimManager$DualSim;)Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    move-result-object v0

    return-object v0
.end method

.method private d()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;
    .locals 11

    const-string v0, "getSimOperatorName"

    const-string v1, "getNetworkOperatorName"

    const-string v2, "getSimOperatorNameGemini"

    const-string v3, "getSimOperatorNameForSubscription"

    .line 633
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimSerialNumber"

    const-string v2, "getSimSerialNumberGemini"

    const-string v3, "getDeviceId"

    const-string v4, "getDeviceIdDs"

    const-string v5, "getDeviceIdGemini"

    const-string v6, "getDeviceIdExt"

    .line 634
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 2710
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2711
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 636
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bT:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 638
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 641
    :try_start_0
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v6, v9, v10}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 642
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v6, v8, v10}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 644
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v6, v7, v10}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    .line 646
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_0
    .catch Lcom/callapp/contacts/manager/sim/SimManager$GeminiMethodNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_1

    goto :goto_1

    .line 652
    :catch_0
    :cond_1
    :try_start_1
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v6, v9, v10}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 653
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v6, v8, v9}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 655
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v6, v7, v8}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    .line 657
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catch Lcom/callapp/contacts/manager/sim/SimManager$GeminiMethodNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_0

    goto :goto_1

    :catch_1
    nop

    goto :goto_0

    .line 663
    :cond_2
    :goto_1
    invoke-static {v3, v4, v5, v1}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 9

    const-string v0, "slotId"

    const-string v1, "subId"

    .line 1086
    const-class v2, Lcom/callapp/contacts/manager/sim/SimManager;

    new-instance v3, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;-><init>(Lcom/callapp/contacts/manager/sim/SimManager;Lcom/callapp/contacts/manager/sim/SimManager$1;)V

    .line 1087
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1088
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x16

    if-lt v5, v8, :cond_4

    .line 1089
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->m:Lcom/callapp/contacts/manager/sim/GetSimStateCommand;

    if-nez v0, :cond_0

    .line 1090
    new-instance v0, Lcom/callapp/contacts/manager/sim/GetSimStateCommandFactory;

    invoke-direct {v0}, Lcom/callapp/contacts/manager/sim/GetSimStateCommandFactory;-><init>()V

    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->i:Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Lcom/callapp/contacts/manager/sim/GetSimStateCommandFactory;->a(Landroid/telephony/SubscriptionManager;)Lcom/callapp/contacts/manager/sim/GetSimStateCommand;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->m:Lcom/callapp/contacts/manager/sim/GetSimStateCommand;

    .line 1097
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->i:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 1098
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1099
    sget-object v1, Lcom/callapp/contacts/manager/sim/-$$Lambda$SimManager$rBzC1EbUSi1U_ze1p-ZdDOimezw;->INSTANCE:Lcom/callapp/contacts/manager/sim/-$$Lambda$SimManager$rBzC1EbUSi1U_ze1p-ZdDOimezw;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1100
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_1

    .line 1102
    iget-object v5, p0, Lcom/callapp/contacts/manager/sim/SimManager;->m:Lcom/callapp/contacts/manager/sim/GetSimStateCommand;

    iget-object v8, p0, Lcom/callapp/contacts/manager/sim/SimManager;->i:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5, v8, v1}, Lcom/callapp/contacts/manager/sim/GetSimStateCommand;->a(Landroid/telephony/SubscriptionManager;Landroid/telephony/SubscriptionInfo;)I

    move-result v5

    .line 1103
    invoke-direct {p0, v5, v1}, Lcom/callapp/contacts/manager/sim/SimManager;->a(ILandroid/telephony/SubscriptionInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1104
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1109
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v7, :cond_3

    const/4 v6, 0x1

    .line 3138
    :cond_3
    iput-boolean v6, v3, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;->b:Z

    .line 4133
    iput-object v4, v3, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;->a:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 1112
    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1114
    :cond_4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_5

    const-string v4, "android.telephony.SubscriptionManager"

    .line 1116
    invoke-static {v4}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1118
    :try_start_1
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionManager;

    const-string v5, "getActiveSubInfoList"

    .line 1119
    invoke-static {v4, v5}, Lcom/callapp/contacts/util/ReflectionUtils;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1120
    move-object v5, v4

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_5

    .line 4138
    iput-boolean v7, v3, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;->b:Z

    .line 1122
    check-cast v4, Ljava/util/List;

    .line 5133
    iput-object v4, v3, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;->a:Ljava/util/List;

    .line 1124
    invoke-static {v3}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;->a(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1125
    invoke-static {v3}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;->a(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1126
    invoke-static {v4, v1}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v6

    int-to-long v6, v6

    .line 5143
    iput-wide v6, v3, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;->c:J

    .line 1127
    invoke-static {v4, v0}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 5153
    iput v4, v3, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;->e:I

    .line 1129
    invoke-static {v5, v1}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    int-to-long v6, v1

    .line 6148
    iput-wide v6, v3, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;->d:J

    .line 1130
    invoke-static {v5, v0}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6158
    iput v0, v3, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;->f:I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    .line 1133
    :goto_1
    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 1138
    :cond_5
    :goto_2
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;->a()Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->e:Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

    return-void
.end method

.method private synthetic f()V
    .locals 2

    .line 180
    new-instance v0, Lcom/callapp/contacts/manager/sim/SimManager$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/manager/sim/SimManager$1;-><init>(Lcom/callapp/contacts/manager/sim/SimManager;)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->j:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 199
    iget-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->i:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method public static get()Lcom/callapp/contacts/manager/sim/SimManager;
    .locals 1

    .line 164
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getSimManager()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneAccounts()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;
    .locals 7

    .line 1018
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->o:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    :try_start_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 1020
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/callapp/contacts/manager/sim/SimManager;->p:Ljava/util/List;

    .line 1021
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v2

    .line 1022
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 1023
    invoke-virtual {v1, v3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1024
    invoke-virtual {v3}, Landroid/telecom/PhoneAccount;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1025
    invoke-virtual {v3}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-eqz v4, :cond_0

    .line 1027
    iget-object v4, p0, Lcom/callapp/contacts/manager/sim/SimManager;->p:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1032
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->p:Ljava/util/List;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_3

    .line 1033
    new-instance v1, Lcom/callapp/contacts/manager/sim/SimManager$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/manager/sim/SimManager$3;-><init>(Lcom/callapp/contacts/manager/sim/SimManager;)V

    .line 1042
    iget-object v2, p0, Lcom/callapp/contacts/manager/sim/SimManager;->p:Ljava/util/List;

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1045
    iget-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->e:Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

    invoke-static {v1}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->b(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1046
    new-instance v1, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    iget-object v2, p0, Lcom/callapp/contacts/manager/sim/SimManager;->p:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccount;

    iget-object v3, p0, Lcom/callapp/contacts/manager/sim/SimManager;->p:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccount;

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;-><init>(Landroid/telecom/PhoneAccount;Landroid/telecom/PhoneAccount;)V

    monitor-exit v0

    return-object v1

    .line 1049
    :cond_3
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSimIdAsIndexForDialog()I
    .locals 2

    .line 376
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$4;->a:[I

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bR:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method private getSimNamesIfDualSim()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;
    .locals 4

    .line 595
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 596
    invoke-direct {p0}, Lcom/callapp/contacts/manager/sim/SimManager;->getPhoneAccounts()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 602
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    .line 603
    invoke-direct {p0}, Lcom/callapp/contacts/manager/sim/SimManager;->getSimNamesIfDualSimFromSubscriptionInfo()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    move-result-object v0

    return-object v0

    .line 606
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bT:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 607
    invoke-direct {p0}, Lcom/callapp/contacts/manager/sim/SimManager;->d()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "com.mediatek.telephony.TelephonyManagerEx"

    const-string v1, "android.telephony.MSimTelephonyManager"

    const-string v2, "android.telephony.TelephonyManager"

    .line 609
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_4

    .line 614
    aget-object v2, v0, v1

    .line 615
    invoke-static {v2}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 616
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->bT:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 617
    invoke-direct {p0}, Lcom/callapp/contacts/manager/sim/SimManager;->d()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/manager/sim/SimManager;->a:Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    :cond_4
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bT:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    return-object v1
.end method

.method private getSimNamesIfDualSimFromSubscriptionInfo()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;
    .locals 6

    .line 1058
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->e:Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

    invoke-static {v0}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->b(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1059
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->e:Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

    invoke-static {v0}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->a(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const v0, 0x7f1207ea

    .line 1063
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1064
    iget-object v2, p0, Lcom/callapp/contacts/manager/sim/SimManager;->e:Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

    invoke-static {v2}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->a(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1065
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move-object v2, v0

    .line 1070
    :cond_2
    iget-object v4, p0, Lcom/callapp/contacts/manager/sim/SimManager;->e:Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

    invoke-static {v4}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->a(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 1071
    iget-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->e:Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

    invoke-static {v1}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->a(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1074
    :cond_3
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 1078
    :cond_5
    :goto_0
    new-instance v1, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0, v3}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_6
    return-object v1
.end method

.method private getSimSlotIdFromSubscriptionInfo(I)Lcom/callapp/contacts/manager/sim/SimManager$SimId;
    .locals 4

    .line 966
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->e:Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

    invoke-static {v0}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->b(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 967
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->e:Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

    invoke-static {v0}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->a(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 968
    sget-object p1, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object p1

    .line 971
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    .line 973
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->e:Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

    invoke-static {v0}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->a(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 974
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 975
    sget-object p1, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_1:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object p1

    :cond_1
    const/4 v1, 0x1

    .line 976
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 977
    sget-object p1, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_2:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object p1

    :cond_2
    int-to-long v0, p1

    .line 981
    iget-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->e:Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

    invoke-static {p1}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->c(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    .line 983
    iget-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->e:Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

    invoke-static {p1}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->d(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->getSimId(Ljava/lang/Integer;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object p1

    return-object p1

    .line 986
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->e:Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

    invoke-static {p1}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->e(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    .line 988
    iget-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->e:Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

    invoke-static {p1}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->f(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->getSimId(Ljava/lang/Integer;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object p1

    return-object p1

    .line 993
    :cond_4
    sget-object p1, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object p1
.end method

.method public static synthetic lambda$-bNCIAj77ttBInfPn83x7O77Z2k(Lcom/callapp/contacts/manager/sim/SimManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/manager/sim/SimManager;->f()V

    return-void
.end method

.method public static synthetic lambda$rBzC1EbUSi1U_ze1p-ZdDOimezw(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;
    .locals 5

    .line 281
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->a:Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    const-string v0, "subscription_component_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 283
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_1

    const-string v1, "subscription_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 284
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_3

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 285
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_2

    .line 287
    sget-object p1, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object p1

    .line 289
    :cond_2
    new-instance v0, Landroid/telecom/PhoneAccountHandle;

    invoke-direct {v0, p1, v1}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Landroid/telecom/PhoneAccountHandle;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object p1

    return-object p1

    .line 291
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->a:Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    invoke-static {v0}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->a(Lcom/callapp/contacts/manager/sim/SimManager$DualSim;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 292
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->a:Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    invoke-static {v0}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->a(Lcom/callapp/contacts/manager/sim/SimManager$DualSim;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 295
    iget-object v2, p0, Lcom/callapp/contacts/manager/sim/SimManager;->a:Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    invoke-static {v2}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->b(Lcom/callapp/contacts/manager/sim/SimManager$DualSim;)I

    move-result v2

    if-eq v2, v1, :cond_6

    .line 296
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 298
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 301
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/sim/SimManager;->getSimSlotIdFromSubscriptionInfo(I)Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object p1

    return-object p1

    .line 304
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->a:Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    invoke-static {v0}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->b(Lcom/callapp/contacts/manager/sim/SimManager$DualSim;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 305
    invoke-static {}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->values()[Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 306
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->getSimId()I

    move-result v4

    if-ne v4, p1, :cond_5

    return-object v3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 313
    :cond_6
    const-class p1, Lcom/callapp/contacts/manager/sim/SimManager;

    const-string v0, "getSimIdColumn: no sim_id column found"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 316
    :cond_7
    sget-object p1, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object p1
.end method

.method public final a(Landroid/telecom/PhoneAccountHandle;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;
    .locals 6

    .line 335
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_1

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->h:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 339
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-string v3, "telecom"

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/CallAppApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    const-string v3, "getPhoneAccount"

    .line 340
    const-class v4, Landroid/telecom/PhoneAccountHandle;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    .line 342
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/CallAppApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    const-string v4, "getSubIdForPhoneAccount"

    .line 343
    const-class v5, Landroid/telecom/PhoneAccount;

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v3, v4, v5, v0}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 344
    iget-object v3, p0, Lcom/callapp/contacts/manager/sim/SimManager;->h:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 349
    const-class v0, Lcom/callapp/contacts/manager/sim/SimManager;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string p1, "getSimSlotIdFromSubscriptionInfo exception: "

    invoke-static {v0, p1, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object p1

    .line 356
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object p1

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->e:Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

    invoke-static {v0}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->a(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)Ljava/util/List;

    move-result-object v0

    .line 361
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 362
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 364
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 365
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_1:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    goto :goto_1

    .line 366
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 367
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_2:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    goto :goto_1

    .line 369
    :cond_4
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    .line 371
    :goto_1
    iget-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->a:Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    if-eqz v0, :cond_1

    .line 88
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_1:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    if-ne p1, v0, :cond_0

    .line 89
    iget-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->a:Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->getOperator1()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 90
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_2:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    if-ne p1, v0, :cond_1

    .line 91
    iget-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->a:Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->getOperator2()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()V
    .locals 4

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->c:Z

    .line 249
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->j()V

    .line 250
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->k()V

    .line 251
    invoke-static {}, Lcom/callapp/contacts/util/CallLogUtils;->a()V

    .line 252
    invoke-direct {p0}, Lcom/callapp/contacts/manager/sim/SimManager;->e()V

    .line 253
    iget-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 254
    iget-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 255
    invoke-direct {p0}, Lcom/callapp/contacts/manager/sim/SimManager;->c()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->a:Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    .line 256
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v3, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->SIM_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 2091
    invoke-virtual {v1, v2, v3, v0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final a(Lcom/callapp/framework/phone/Phone;Landroid/content/Intent;I)V
    .locals 6

    if-gez p3, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 798
    sget-object v0, Lcom/callapp/framework/phone/Phone;->b:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {p1, v0}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 800
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getSimManager()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/sim/SimManager;->getActiveCalls()Ljava/util/Map;

    move-result-object v0

    .line 801
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->getSimId(Ljava/lang/Integer;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_3

    .line 805
    invoke-static {}, Lcom/callapp/contacts/manager/sim/SimManager;->get()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/sim/SimManager;->getDualSimOperators()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    move-result-object p1

    if-eqz p1, :cond_3

    if-nez p3, :cond_2

    .line 807
    invoke-static {p1}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->c(Lcom/callapp/contacts/manager/sim/SimManager$DualSim;)Landroid/telecom/PhoneAccount;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->d(Lcom/callapp/contacts/manager/sim/SimManager$DualSim;)Landroid/telecom/PhoneAccount;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 808
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 809
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    const-string v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 810
    invoke-static {p2, p3}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Landroid/content/Intent;I)V

    return-void

    .line 816
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_7

    .line 819
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    const-string v1, "telecom"

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/CallAppApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    .line 821
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    if-lt v1, v0, :cond_4

    .line 822
    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 825
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getCallCapablePhoneAccounts"

    new-array v3, v2, [Ljava/lang/Class;

    .line 826
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 827
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 828
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz p1, :cond_7

    .line 836
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    .line 837
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->e:Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

    invoke-static {v0}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->a(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-nez v0, :cond_7

    .line 838
    iget-object v3, p0, Lcom/callapp/contacts/manager/sim/SimManager;->e:Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

    invoke-static {v3}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->a(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 839
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v3, v4, :cond_5

    .line 841
    iget-object v3, p0, Lcom/callapp/contacts/manager/sim/SimManager;->e:Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

    invoke-static {v3}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->a(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    if-eqz v3, :cond_6

    .line 843
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    if-ne v4, p3, :cond_6

    .line 844
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 845
    invoke-static {v3, v0, p2}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Landroid/telephony/SubscriptionInfo;Landroid/telecom/PhoneAccountHandle;Landroid/content/Intent;)Z

    move-result v0

    goto :goto_3

    :cond_5
    const-string v3, "android.telephony.SubscriptionManager"

    .line 851
    invoke-static {v3}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 852
    iget-object v3, p0, Lcom/callapp/contacts/manager/sim/SimManager;->e:Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

    invoke-static {v3}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->a(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v4, "slotId"

    .line 854
    invoke-static {v3, v4}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p3, :cond_6

    const-string v4, "subId"

    .line 856
    invoke-static {v3, v4}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    if-eqz v3, :cond_6

    const/4 v4, 0x0

    .line 858
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 859
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/PhoneAccountHandle;

    invoke-static {v3, v5, p2}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Ljava/lang/Number;Landroid/telecom/PhoneAccountHandle;Landroid/content/Intent;)Z

    move-result v5

    or-int/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    goto :goto_5

    :catch_4
    move-exception p1

    .line 830
    :goto_5
    const-class v0, Lcom/callapp/contacts/manager/sim/SimManager;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 831
    invoke-static {p2, p3}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Landroid/content/Intent;I)V

    return-void

    .line 872
    :cond_7
    invoke-static {p2, p3}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Landroid/content/Intent;I)V

    return-void
.end method

.method public destroy()V
    .locals 3

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->a:Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    .line 213
    iget-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->l:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->k:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 221
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_2

    .line 222
    iget-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->i:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/callapp/contacts/manager/sim/SimManager;->j:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 224
    :cond_2
    iput-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->e:Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

    return-void
.end method

.method public getActiveCalls()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/callapp/framework/phone/Phone;",
            "Lcom/callapp/contacts/manager/sim/SimManager$SimId;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->f:Ljava/util/Map;

    return-object v0
.end method

.method public getDualSimOperators()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->a:Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 2

    .line 998
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 999
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->p:Ljava/util/List;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1004
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->p:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccount;

    if-eqz p1, :cond_1

    .line 1006
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1009
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSimIdColumnName()Ljava/lang/String;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->a:Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    if-eqz v0, :cond_0

    .line 428
    invoke-static {v0}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->a(Lcom/callapp/contacts/manager/sim/SimManager$DualSim;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 169
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 171
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->i:Landroid/telephony/SubscriptionManager;

    .line 173
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/callapp/contacts/manager/sim/SimManager;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->k:Landroid/os/HandlerThread;

    .line 174
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 175
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 176
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->l:Landroid/os/Handler;

    .line 178
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {v0}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->l:Landroid/os/Handler;

    new-instance v1, Lcom/callapp/contacts/manager/sim/-$$Lambda$SimManager$-bNCIAj77ttBInfPn83x7O77Z2k;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/manager/sim/-$$Lambda$SimManager$-bNCIAj77ttBInfPn83x7O77Z2k;-><init>(Lcom/callapp/contacts/manager/sim/SimManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/manager/sim/SimManager;->e()V

    .line 205
    invoke-direct {p0}, Lcom/callapp/contacts/manager/sim/SimManager;->c()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager;->a:Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    :cond_1
    return-void
.end method

.method public isDualSimAvailable()Z
    .locals 1

    .line 244
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/sim/SimManager;->getDualSimOperators()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
