.class public Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter;
.super Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$OnProfilePictureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter$onItemClick;
    }
.end annotation


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter$onItemClick;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;Ljava/util/List;Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter$onItemClick;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;",
            ">;",
            "Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter$onItemClick;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;-><init>(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;)V

    .line 32
    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter;->c:Ljava/util/List;

    .line 33
    iput-object p3, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter;->d:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter$onItemClick;

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;Lcom/callapp/contacts/activity/base/BaseViewTypeData;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;->getViewType()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 54
    check-cast p1, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;

    check-cast p2, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->a(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;)V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;

    .line 93
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 94
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->setNeedToShowBorder(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 96
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->setNeedToShowBorder(Z)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter;->d:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter$onItemClick;

    if-eqz v0, :cond_2

    .line 100
    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter$onItemClick;->a(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;)V

    .line 102
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemAt(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/16 p1, 0x16

    return p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 2

    const/16 v0, 0x16

    if-ne p2, v0, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d02f2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 79
    new-instance p2, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;

    invoke-direct {p2, p1, p0}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;-><init>(Landroid/view/View;Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$OnProfilePictureListener;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter;->c:Ljava/util/List;

    .line 40
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter;->notifyDataSetChanged()V

    return-void
.end method
