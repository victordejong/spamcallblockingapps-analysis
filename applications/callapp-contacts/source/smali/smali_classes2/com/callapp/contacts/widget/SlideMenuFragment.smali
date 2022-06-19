.class public Lcom/callapp/contacts/widget/SlideMenuFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field private static d:Z


# instance fields
.field public a:Lcom/callapp/contacts/widget/SlideMenuAdapter;

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;

.field private e:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;

.field private f:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;Z)Lcom/callapp/contacts/widget/SlideMenuFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;",
            ">;",
            "Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;",
            "Z)",
            "Lcom/callapp/contacts/widget/SlideMenuFragment;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/callapp/contacts/widget/SlideMenuFragment;

    invoke-direct {v0}, Lcom/callapp/contacts/widget/SlideMenuFragment;-><init>()V

    .line 47
    iput-object p1, v0, Lcom/callapp/contacts/widget/SlideMenuFragment;->c:Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;

    .line 49
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "itemsData"

    .line 50
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 51
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/SlideMenuFragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    sput-boolean p2, Lcom/callapp/contacts/widget/SlideMenuFragment;->d:Z

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuFragment;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->getItemIndexById(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuFragment;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->getMenuItem(I)Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->getNotification()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    invoke-virtual {v0, p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->setNotification$505cff1c(Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lcom/callapp/contacts/widget/SlideMenuFragment;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0d0274

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a083c

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/callapp/contacts/widget/SlideMenuFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SlideMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 60
    iget-object p2, p0, Lcom/callapp/contacts/widget/SlideMenuFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    const p3, 0x7f060026

    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 62
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SlideMenuFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "itemsData"

    .line 64
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 65
    new-instance p3, Lcom/callapp/contacts/widget/SlideMenuAdapter;

    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuFragment;->c:Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SlideMenuFragment;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v1

    sget-boolean v2, Lcom/callapp/contacts/widget/SlideMenuFragment;->d:Z

    invoke-direct {p3, p2, v0, v1, v2}, Lcom/callapp/contacts/widget/SlideMenuAdapter;-><init>(Ljava/util/ArrayList;Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;Landroidx/lifecycle/j;Z)V

    iput-object p3, p0, Lcom/callapp/contacts/widget/SlideMenuFragment;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    .line 66
    iget-object p2, p0, Lcom/callapp/contacts/widget/SlideMenuFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 69
    :cond_0
    new-instance p2, Landroidx/lifecycle/ab;

    invoke-direct {p2, p0}, Landroidx/lifecycle/ab;-><init>(Landroidx/lifecycle/ad;)V

    const-class p3, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/ab;->a(Ljava/lang/Class;)Landroidx/lifecycle/aa;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;

    iput-object p2, p0, Lcom/callapp/contacts/widget/SlideMenuFragment;->e:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;

    .line 70
    invoke-static {}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->getReferAndEarnBox()Lio/objectbox/a;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;->a(Lio/objectbox/a;)Lio/objectbox/a/a;

    move-result-object p2

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SlideMenuFragment;->getViewLifecycleOwner()Landroidx/lifecycle/p;

    move-result-object p3

    new-instance v0, Lcom/callapp/contacts/widget/SlideMenuFragment$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/SlideMenuFragment$1;-><init>(Lcom/callapp/contacts/widget/SlideMenuFragment;)V

    invoke-virtual {p2, p3, v0}, Lio/objectbox/a/a;->a(Landroidx/lifecycle/p;Landroidx/lifecycle/u;)V

    .line 79
    new-instance p2, Landroidx/lifecycle/ab;

    invoke-direct {p2, p0}, Landroidx/lifecycle/ab;-><init>(Landroidx/lifecycle/ad;)V

    const-class p3, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewModel;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/ab;->a(Ljava/lang/Class;)Landroidx/lifecycle/aa;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewModel;

    iput-object p2, p0, Lcom/callapp/contacts/widget/SlideMenuFragment;->f:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewModel;

    .line 80
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object p3

    const-class v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;

    invoke-virtual {p3, v0}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewModel;->a(Lio/objectbox/a;)Lio/objectbox/a/a;

    move-result-object p2

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SlideMenuFragment;->getViewLifecycleOwner()Landroidx/lifecycle/p;

    move-result-object p3

    new-instance v0, Lcom/callapp/contacts/widget/SlideMenuFragment$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/SlideMenuFragment$2;-><init>(Lcom/callapp/contacts/widget/SlideMenuFragment;)V

    invoke-virtual {p2, p3, v0}, Lio/objectbox/a/a;->a(Landroidx/lifecycle/p;Landroidx/lifecycle/u;)V

    return-object p1
.end method
