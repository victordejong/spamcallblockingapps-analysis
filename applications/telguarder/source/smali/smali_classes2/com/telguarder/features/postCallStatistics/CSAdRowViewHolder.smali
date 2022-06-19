.class public Lcom/telguarder/features/postCallStatistics/CSAdRowViewHolder;
.super Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;
.source "CSAdRowViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/postCallStatistics/CSAdRowViewHolder$AdHolderCallbackInterface;
    }
.end annotation


# instance fields
.field public mBannerContainer:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;-><init>(Landroid/view/View;)V

    .line 44
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSAdRowViewHolder;->mBannerContainer:Landroid/view/ViewGroup;

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f050101

    invoke-static {p1, v1}, Lcom/telguarder/helpers/common/AppUtil;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/telguarder/features/postCallStatistics/CSAdData;Lcom/telguarder/features/advertisements/Advert;Lcom/telguarder/features/postCallStatistics/CSAdRowViewHolder$AdHolderCallbackInterface;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 26
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSAdRowViewHolder;->mBannerContainer:Landroid/view/ViewGroup;

    invoke-interface {p3, p1}, Lcom/telguarder/features/postCallStatistics/CSAdRowViewHolder$AdHolderCallbackInterface;->onDataBinding(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public onAttachToWindow()V
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;->onAttachToWindow()V

    return-void
.end method

.method public onDetachFromWindow()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;->onDetachFromWindow()V

    return-void
.end method
