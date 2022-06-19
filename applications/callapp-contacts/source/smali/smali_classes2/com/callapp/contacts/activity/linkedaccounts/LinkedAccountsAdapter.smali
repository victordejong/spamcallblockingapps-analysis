.class public Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;
.super Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$AdapterWithSwitchEvents;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter<",
        "Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;",
        "Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:I

.field private static final d:I


# instance fields
.field private e:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$AdapterWithSwitchEvents;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060088

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;->c:I

    .line 24
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f0601ec

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;Landroidx/appcompat/widget/SwitchCompat;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V
    .locals 0

    .line 4096
    iget-object p0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;->e:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$AdapterWithSwitchEvents;

    if-eqz p0, :cond_0

    .line 4097
    invoke-interface {p0, p1, p2}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$AdapterWithSwitchEvents;->b(Landroidx/appcompat/widget/SwitchCompat;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;Landroidx/appcompat/widget/SwitchCompat;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V
    .locals 0

    .line 5090
    iget-object p0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;->e:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$AdapterWithSwitchEvents;

    if-eqz p0, :cond_0

    .line 5091
    invoke-interface {p0, p1, p2}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$AdapterWithSwitchEvents;->a(Landroidx/appcompat/widget/SwitchCompat;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;Lcom/callapp/contacts/activity/base/BaseViewTypeData;)V
    .locals 3

    .line 21
    check-cast p1, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;

    check-cast p2, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;

    .line 1040
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->getIconRes()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    const/4 v2, 0x1

    .line 1371
    iput-boolean v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 2307
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    .line 1041
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->getSocialNetworkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;->setTitleText(Ljava/lang/CharSequence;)V

    .line 1043
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    sget v0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;->c:I

    goto :goto_0

    .line 1046
    :cond_0
    sget v0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;->d:I

    .line 1048
    :goto_0
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;->setSubtitleText(Ljava/lang/CharSequence;)V

    .line 1049
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;->setTitleTextColor(I)V

    .line 1050
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;->setSubtitleTextColor(I)V

    .line 1052
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->isLoggedIn()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;->setChecked(Z)V

    .line 1054
    new-instance v0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$1;-><init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1062
    new-instance v0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$2;-><init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;->setOnSwitchViewContainerClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 1

    .line 3083
    new-instance p2, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;

    new-instance v0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->LEFT_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4074
    iput-object p1, v0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 3084
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_TWO_ROWS:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4079
    iput-object p1, v0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 3085
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->RIGHT_SWITCH:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4084
    iput-object p1, v0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->c:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 3086
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V

    return-object p2
.end method

.method public setEventsListener(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$AdapterWithSwitchEvents;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;->e:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$AdapterWithSwitchEvents;

    return-void
.end method
