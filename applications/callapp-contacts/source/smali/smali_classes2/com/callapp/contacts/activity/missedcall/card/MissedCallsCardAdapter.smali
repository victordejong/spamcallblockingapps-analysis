.class public Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;
.super Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$OnDeleteClickListener;
.implements Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$OnCloseClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter$UserCloseAllCards;,
        Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter$UserCloseAllPromotions;
    }
.end annotation


# instance fields
.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

.field private e:Z

.field private f:Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter$UserCloseAllPromotions;

.field private g:Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter$UserCloseAllCards;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;Ljava/util/List;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter$UserCloseAllPromotions;Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter$UserCloseAllCards;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;",
            "Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;",
            "Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter$UserCloseAllPromotions;",
            "Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter$UserCloseAllCards;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;-><init>(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;)V

    .line 46
    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->c:Ljava/util/List;

    .line 47
    iput-object p3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->d:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    .line 48
    iput-object p4, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->f:Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter$UserCloseAllPromotions;

    .line 49
    iput-object p5, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->g:Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter$UserCloseAllCards;

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;Lcom/callapp/contacts/activity/base/BaseViewTypeData;)V
    .locals 5

    if-eqz p2, :cond_3

    .line 66
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;->getViewType()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 68
    move-object v1, p1

    check-cast v1, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;

    move-object v2, p2

    check-cast v2, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    iget-object v3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->d:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->a(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    .line 69
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->b:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->b:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    .line 1079
    iget-object v1, v1, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->b:Lcom/callapp/contacts/manager/asset/managers/SuperSkinListBackgroundAssetManager;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/asset/managers/SuperSkinListBackgroundAssetManager;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0601f1

    .line 70
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;->setBackgroundColor(I)V

    :cond_0
    const/16 v1, 0x14

    if-ne v0, v1, :cond_3

    .line 74
    check-cast p1, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;

    check-cast p2, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->e:Z

    .line 1085
    iget-object v1, p1, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->s:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->getMainTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1086
    iget-object v1, p1, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->t:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->CONFIG:Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1088
    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v2, p1, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->u:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->getImgFromUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->v:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 1376
    iput-boolean v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 1088
    invoke-virtual {v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    goto :goto_0

    .line 1090
    :cond_1
    iget-object v1, p1, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->u:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->getImage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1092
    :goto_0
    iget-object v1, p1, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->w:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1093
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->setListener(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;I)V
    .locals 2

    .line 116
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->getAdapterPosition()I

    move-result p1

    if-ltz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 119
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 120
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;IJ)V

    .line 121
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->notifyDataSetChanged()V

    .line 123
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->g:Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter$UserCloseAllCards;

    if-eqz p1, :cond_0

    .line 124
    invoke-interface {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter$UserCloseAllCards;->m()V

    :cond_0
    return-void
.end method

.method public getItemAt(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getViewType()I

    move-result p1

    return p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x12

    if-ne p2, v1, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d02ff

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 99
    new-instance p2, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;

    invoke-direct {p2, p1, p0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;-><init>(Landroid/view/View;Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$OnDeleteClickListener;)V

    return-object p2

    :cond_0
    const/16 v1, 0x14

    if-ne p2, v1, :cond_1

    .line 102
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0300

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 103
    new-instance v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p2, p1, p0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;-><init>(Landroid/view/View;Landroid/content/Context;Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$OnCloseClickListener;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final r_()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 147
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 149
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getViewType()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->notifyDataSetChanged()V

    .line 154
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->f:Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter$UserCloseAllPromotions;

    if-eqz v0, :cond_2

    .line 155
    invoke-interface {v0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter$UserCloseAllPromotions;->l()V

    :cond_2
    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->c:Ljava/util/List;

    .line 55
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnlyPromotions(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->e:Z

    return-void
.end method
