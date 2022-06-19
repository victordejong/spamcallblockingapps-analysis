.class public final Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u0014B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u001c\u0010\n\u001a\u00020\u000b2\n\u0010\u000c\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\r\u001a\u00020\tH\u0016J\u001c\u0010\u000e\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\tH\u0016J\u0014\u0010\u0012\u001a\u00020\u000b2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0013R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;",
        "()V",
        "items",
        "Ljava/util/ArrayList;",
        "Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;",
        "Lkotlin/collections/ArrayList;",
        "getItemCount",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "replaceItems",
        "",
        "ViewHolder",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;->a:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final getItemCount()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 4

    .line 13
    check-cast p1, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1022
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "items[position]"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;

    .line 1023
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getNotificationListenersSettingsScreenIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1024
    :goto_0
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->getResourceIcon()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;->getImageResource()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v0, :cond_1

    .line 1025
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;->getDependOnPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1026
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->getNumberOfIdentification()Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f1204cb

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->getNumberOfIdentification()Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f06010f

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1028
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->getFromTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1029
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->getSource()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1031
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->getNumberOfIdentification()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;->getNumberOfIdentification()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1032
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->getNumberOfIdentification()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;->getImageResourceColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1033
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->getFromTitle()Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0601cc

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1034
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->getSource()Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0601ec

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1036
    :goto_1
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->getFromTitle()Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f12034e

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1037
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->getSource()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;->getSource()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1038
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;->getShowSeparator()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1039
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->getSeparatorCalls()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1040
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;->getSeparatorCalls()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0600f3

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    return-void
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 0

    const-string p2, "parent"

    .line 13
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;

    move-result-object p1

    const-string p2, "CallappPlusItemGraphBind\u2026.context), parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1018
    new-instance p2, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;-><init>(Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;)V

    .line 13
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$v;

    return-object p2
.end method
