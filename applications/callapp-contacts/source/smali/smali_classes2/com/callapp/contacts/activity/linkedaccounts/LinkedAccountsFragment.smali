.class public Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;
.super Lcom/callapp/contacts/activity/base/BaseCallAppFragment;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$AdapterWithSwitchEvents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$LinkedAccountsFragmentEvents;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseCallAppFragment<",
        "Ljava/util/List<",
        "Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;",
        ">;>;",
        "Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$AdapterWithSwitchEvents;"
    }
.end annotation


# static fields
.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$LinkedAccountsFragmentEvents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$1;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;)Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$LinkedAccountsFragmentEvents;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->a:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$LinkedAccountsFragmentEvents;

    return-object p0
.end method

.method private synthetic a()V
    .locals 4

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    sget-object v1, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    .line 253
    new-instance v3, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;

    invoke-direct {v3, v2}, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;-><init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/linkedaccounts/-$$Lambda$LinkedAccountsFragment$rS_3WblrSNOOuSb2_2sN_v4B-CM;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/linkedaccounts/-$$Lambda$LinkedAccountsFragment$rS_3WblrSNOOuSb2_2sN_v4B-CM;-><init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V
    .locals 4

    .line 5197
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->refreshData()V

    .line 5198
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1204b5

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 6111
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5200
    iget-object p0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->a:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$LinkedAccountsFragmentEvents;

    if-eqz p0, :cond_0

    .line 5201
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$LinkedAccountsFragmentEvents;->b(Lcom/callapp/contacts/model/contact/DataSource;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/util/List;)V
    .locals 0

    .line 255
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->setData(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Landroidx/appcompat/widget/SwitchCompat;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->d(Landroidx/appcompat/widget/SwitchCompat;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->setLoginListener(Lcom/callapp/contacts/api/helper/common/LoginListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->b(Landroid/app/Activity;)V

    return-void
.end method

.method private d(Landroidx/appcompat/widget/SwitchCompat;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;
    .locals 1

    .line 206
    new-instance v0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;

    invoke-direct {v0, p0, p2, p1, p2}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;-><init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Landroidx/appcompat/widget/SwitchCompat;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    return-object v0
.end method

.method public static synthetic lambda$rS_3WblrSNOOuSb2_2sN_v4B-CM(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$y4YgNkT9Npp_nj9tnrwxn29jYPY(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->a()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/widget/SwitchCompat;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V
    .locals 11

    .line 115
    invoke-virtual {p2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4149
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4152
    new-instance v7, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;

    invoke-direct {v7, p0, p2}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;-><init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    .line 4172
    new-instance v9, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$4;

    invoke-direct {v9, p0, p1}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$4;-><init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;Landroidx/appcompat/widget/SwitchCompat;)V

    .line 4181
    new-instance p1, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$5;

    const/4 v3, 0x0

    const v1, 0x7f120406

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 4182
    invoke-virtual {p2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const p2, 0x7f120878

    .line 4183
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const p2, 0x7f1204c5

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    move-object v2, p0

    move-object v8, v9

    move-object v10, v0

    invoke-direct/range {v1 .. v10}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$5;-><init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Landroid/app/Activity;)V

    .line 4192
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :cond_0
    return-void

    .line 118
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->c(Landroidx/appcompat/widget/SwitchCompat;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    return-void
.end method

.method public final b(Landroidx/appcompat/widget/SwitchCompat;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V
    .locals 1

    .line 106
    invoke-virtual {p2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4123
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$2;

    invoke-direct {v0, p0, p2}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$2;-><init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void

    .line 109
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->c(Landroidx/appcompat/widget/SwitchCompat;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    return-void
.end method

.method public getDataChangeOrigin()I
    .locals 1

    .line 87
    sget v0, Lcom/callapp/contacts/model/DataChangedInfo;->POSITION_ALL:I

    return v0
.end method

.method public getEmptyViewData()Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFragmentType()[I
    .locals 1

    .line 50
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->NETWORK_DATA_CONNECTIVITY_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v0

    new-array v0, v0, [I

    return-object v0
.end method

.method public synthetic getNewAdapter(Ljava/lang/Object;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
    .locals 2

    .line 37
    check-cast p1, Ljava/util/List;

    .line 5071
    new-instance v0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;-><init>(Ljava/util/List;)V

    .line 5072
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;->setEventsListener(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$AdapterWithSwitchEvents;)V

    .line 5074
    iput-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    .line 5076
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->getAdUnitIdsConfiguration()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->getExperimentRemoteConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ListsUtils;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object p1

    .line 5077
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/app/Activity;Lcom/callapp/contacts/util/ads/AdSettings;Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    move-result-object p1

    return-object p1
.end method

.method public isPartOfViewPagerActivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 92
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 95
    new-instance p1, La/a/a/a/a/a$a;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, La/a/a/a/a/a$a;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0600f3

    .line 96
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    .line 2202
    iput p2, p1, La/a/a/a/a/a$a;->e:I

    .line 3114
    iget-object p2, p1, La/a/a/a/a/a$a;->a:Landroid/content/res/Resources;

    const v0, 0x7f070174

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, La/a/a/a/a/a$a;->b:I

    .line 3212
    new-instance p2, La/a/a/a/a/a;

    iget v1, p1, La/a/a/a/a/a$a;->b:I

    iget v2, p1, La/a/a/a/a/a$a;->c:I

    iget v3, p1, La/a/a/a/a/a$a;->d:I

    iget v4, p1, La/a/a/a/a/a$a;->e:I

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, La/a/a/a/a/a;-><init>(IIIILa/a/a/a/a/a$1;)V

    .line 99
    iget-object p1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, -0x1

    .line 3665
    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;I)V

    .line 101
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->refreshData()V

    return-void
.end method

.method public refreshData()V
    .locals 2

    .line 250
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/linkedaccounts/-$$Lambda$LinkedAccountsFragment$y4YgNkT9Npp_nj9tnrwxn29jYPY;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/linkedaccounts/-$$Lambda$LinkedAccountsFragment$y4YgNkT9Npp_nj9tnrwxn29jYPY;-><init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEventsListener(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$LinkedAccountsFragmentEvents;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->a:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$LinkedAccountsFragmentEvents;

    return-void
.end method
