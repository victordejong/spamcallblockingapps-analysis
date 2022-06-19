.class public Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
.super Lcom/mopub/nativeads/MoPubRecyclerAdapter;
.source "SourceFile"

# interfaces
.implements La/a/a/a/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/nativeads/MoPubRecyclerAdapter;",
        "La/a/a/a/a/b<",
        "Lcom/callapp/contacts/activity/base/SectionViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Z

.field private c:Z

.field private d:La/a/a/a/a/b;

.field private e:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

.field private f:Ljava/lang/String;

.field private g:Lcom/mopub/nativeads/RequestParameters;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;-><init>(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView$a;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->b:Z

    .line 21
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->c:Z

    .line 39
    iput-object p2, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->e:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    .line 40
    instance-of p1, p2, La/a/a/a/a/b;

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->c:Z

    if-eqz p1, :cond_0

    .line 42
    check-cast p2, La/a/a/a/a/b;

    iput-object p2, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->d:La/a/a/a/a/b;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;-><init>(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView$a;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->b:Z

    .line 21
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->c:Z

    .line 30
    iput-object p2, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->e:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    .line 31
    instance-of p1, p2, La/a/a/a/a/b;

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->c:Z

    if-eqz p1, :cond_0

    .line 33
    check-cast p2, La/a/a/a/a/b;

    iput-object p2, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->d:La/a/a/a/a/b;

    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 1

    .line 2087
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->d:La/a/a/a/a/b;

    if-eqz v0, :cond_0

    .line 2088
    invoke-interface {v0, p1}, La/a/a/a/a/b;->a(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/base/SectionViewHolder;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic a(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 1

    .line 18
    check-cast p1, Lcom/callapp/contacts/activity/base/SectionViewHolder;

    .line 1095
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->d:La/a/a/a/a/b;

    if-eqz v0, :cond_0

    .line 1096
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->isAd(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->d:La/a/a/a/a/b;

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->getOriginalPosition(I)I

    move-result p2

    invoke-interface {v0, p1, p2}, La/a/a/a/a/b;->a(Landroidx/recyclerview/widget/RecyclerView$v;I)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->b:Z

    .line 61
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->g:Lcom/mopub/nativeads/RequestParameters;

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->refreshAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    return-void
.end method

.method public clearAds()V
    .locals 1

    .line 55
    invoke-super {p0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->clearAds()V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->b:Z

    return-void
.end method

.method public getHeaderId(I)J
    .locals 2

    .line 70
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->d:La/a/a/a/a/b;

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->isAd(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->d:La/a/a/a/a/b;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->getOriginalPosition(I)I

    move-result p1

    invoke-interface {v0, p1}, La/a/a/a/a/b;->getHeaderId(I)J

    move-result-wide v0

    return-wide v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->d:La/a/a/a/a/b;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->getOriginalPosition(I)I

    move-result p1

    invoke-interface {v0, p1}, La/a/a/a/a/b;->getHeaderId(I)J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isDataReady()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->e:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOriginalStickyHeader()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->c:Z

    return v0
.end method

.method public loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->f:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->g:Lcom/mopub/nativeads/RequestParameters;

    .line 50
    invoke-super {p0, p1, p2}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$v;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->e:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->isAd(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->e:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->getOriginalPosition(I)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->a(ILjava/util/List;)V

    .line 108
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;ILjava/util/List;)V

    return-void
.end method
