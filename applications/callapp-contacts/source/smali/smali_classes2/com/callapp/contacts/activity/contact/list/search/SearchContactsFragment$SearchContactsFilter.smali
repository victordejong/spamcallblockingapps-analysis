.class Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchContactsFilter"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

.field private b:Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;)V
    .locals 0

    .line 900
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 901
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->b:Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 14

    .line 906
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 907
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->s(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 909
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 910
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 911
    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a(Ljava/util/List;)V

    .line 912
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 913
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->b:Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->a()V

    goto/16 :goto_0

    .line 915
    :cond_0
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->t(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 916
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v3, v4}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->d(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Ljava/util/List;)Ljava/util/List;

    .line 918
    :cond_1
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->u(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 919
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->b:Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->a()V

    .line 921
    :cond_2
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->b:Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;

    .line 922
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v5}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->u(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v5}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->s(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Ljava/util/List;

    move-result-object v10

    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v5}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->v(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Ljava/util/List;

    move-result-object v6

    const-string v5, "search"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "allContacts"

    invoke-static {v10, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    new-instance v11, Lkotlin/jvm/internal/ab$e;

    invoke-direct {v11}, Lkotlin/jvm/internal/ab$e;-><init>()V

    iput-object v4, v11, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    .line 1037
    new-instance v12, Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-direct {v12}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;-><init>()V

    .line 1039
    new-instance v13, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$1;

    move-object v5, v13

    move-object v8, v11

    move-object v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$1;-><init>(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/internal/ab$e;Ljava/lang/String;Ljava/util/List;)V

    check-cast v13, Lcom/callapp/contacts/manager/task/Task;

    invoke-virtual {v12, v13}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 1057
    new-instance v5, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$2;

    invoke-direct {v5, v3, p1}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$2;-><init>(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Ljava/lang/String;)V

    check-cast v5, Lcom/callapp/contacts/manager/task/Task;

    invoke-virtual {v12, v5}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 1069
    invoke-virtual {v12}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a()V

    .line 1070
    iput-object p1, v3, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->b:Ljava/lang/String;

    .line 1071
    iget-object p1, v3, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->a:Ljava/util/List;

    iget-object v3, v11, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    if-eqz v3, :cond_3

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/util/List;

    .line 1082
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    if-eqz v4, :cond_4

    .line 1084
    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1086
    :cond_4
    check-cast p1, Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1087
    new-instance p1, Landroid/util/Pair;

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p1, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 924
    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 926
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    .line 927
    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a(Ljava/util/List;)V

    .line 931
    :cond_5
    :goto_0
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 932
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4

    .line 939
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->d(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Ljava/util/List;)Ljava/util/List;

    .line 940
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 941
    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_2

    .line 944
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 947
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->c()Landroidx/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->h(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;->getCurrentFilter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/b/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 948
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 949
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 950
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 951
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 952
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 953
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->w(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 954
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->w(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 955
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->w(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 958
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->w(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 959
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->w(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 960
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->w(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 965
    :cond_5
    :goto_2
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/phone/PhoneNumberUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 966
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/search/AddEntryItemData;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/list/search/AddEntryItemData;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 967
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/list/search/AddEntryItemData;->setSectionId(I)V

    .line 968
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/search/SearchForItemData;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchForItemData;-><init>(Ljava/lang/String;)V

    .line 971
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/list/search/SearchForItemData;->setSectionId(I)V

    .line 972
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    :cond_6
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->setData(Ljava/lang/Object;)V

    .line 977
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a()V

    .line 980
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->x(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 981
    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils;->a()Z

    move-result p1

    if-nez p1, :cond_8

    .line 982
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->h(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;->getCurrentFilter()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 983
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->y(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->clearAds()V

    return-void

    .line 985
    :cond_7
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->z(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->b()V

    :cond_8
    return-void
.end method
