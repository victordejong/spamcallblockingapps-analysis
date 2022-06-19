.class public Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter;
.super Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder$OnProfilePictureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter$onItemClick;
    }
.end annotation


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter$onItemClick;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;Ljava/util/List;Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter$onItemClick;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;",
            ">;",
            "Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter$onItemClick;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;-><init>(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;)V

    .line 32
    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter;->c:Ljava/util/List;

    .line 33
    iput-object p3, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter;->d:Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter$onItemClick;

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;Lcom/callapp/contacts/activity/base/BaseViewTypeData;)V
    .locals 3

    if-eqz p2, :cond_4

    .line 52
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;->getViewType()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_4

    .line 54
    check-cast p1, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;

    check-cast p2, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;

    .line 1041
    iget-object v0, p1, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->getProfileImageView()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1371
    iput-boolean v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 1041
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    .line 1042
    iget-object v0, p1, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->v:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1043
    iget-object v0, p1, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->t:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->getNumberOfMissedCall()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->isNeedToShowBorder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1046
    iget-object v0, p1, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {v0, v2, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(ZZ)V

    .line 1047
    iget-object v0, p1, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setAlpha(F)V

    .line 1048
    iget-object v0, p1, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->v:Landroid/widget/TextView;

    const v1, 0x7f06010e

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1049
    iget-object v0, p1, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->u:Landroidx/appcompat/widget/AppCompatImageView;

    const v2, 0x7f06001b

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setColorFilter(I)V

    .line 1050
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p1, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->v:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1054
    :cond_0
    iget-object v0, p1, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->v:Landroid/widget/TextView;

    const v1, 0x7f060244

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1057
    :cond_1
    iget-object v0, p1, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(ZZ)V

    .line 1058
    iget-object v0, p1, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setAlpha(F)V

    .line 1059
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1060
    iget-object v0, p1, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->v:Landroid/widget/TextView;

    const v1, 0x7f06010d

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1063
    :cond_2
    iget-object v0, p1, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->v:Landroid/widget/TextView;

    const v1, 0x7f06010f

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1065
    :goto_0
    iget-object v0, p1, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->u:Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f060158

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setColorFilter(I)V

    .line 1068
    :goto_1
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1071
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1072
    iget-object v0, p1, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1074
    :cond_3
    iget-object v1, p1, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    :goto_2
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->setOnClickListener(Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;)V

    :cond_4
    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;)V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;

    .line 93
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 94
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->setNeedToShowBorder(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 96
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->setNeedToShowBorder(Z)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter;->d:Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter$onItemClick;

    if-eqz v0, :cond_2

    .line 101
    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter$onItemClick;->a(Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;)V

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemAt(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/16 p1, 0x12

    return p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 2

    const/16 v0, 0x12

    if-ne p2, v0, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0301

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 79
    new-instance p2, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;

    invoke-direct {p2, p1, p0}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;-><init>(Landroid/view/View;Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder$OnProfilePictureListener;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter;->c:Ljava/util/List;

    .line 40
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter;->notifyDataSetChanged()V

    return-void
.end method
