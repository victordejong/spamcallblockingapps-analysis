.class public Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;
.super Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;
.source "SpamCommentAdData.java"


# instance fields
.field private mListbannerAdvertProxy:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/telguarder/features/advertisements/Advert;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;-><init>()V

    const/4 v0, 0x4

    .line 21
    iput v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;->mItemType:I

    .line 22
    new-instance v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;

    invoke-direct {v0, p1, p2, p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/telguarder/features/advertisements/Advert;Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;)V

    iput-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;->mListbannerAdvertProxy:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;

    return-void
.end method


# virtual methods
.method public bindAd(Landroid/view/ViewGroup;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;->mListbannerAdvertProxy:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;

    invoke-virtual {v0, p1}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->onBindAd(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public load(Ljava/lang/Runnable;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;->mListbannerAdvertProxy:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;

    invoke-virtual {v0, p1}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->load(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized onDestroy()V
    .locals 1

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;->mListbannerAdvertProxy:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPause()V
    .locals 1

    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;->mListbannerAdvertProxy:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResume()V
    .locals 1

    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;->mListbannerAdvertProxy:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStop()V
    .locals 1

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;->mListbannerAdvertProxy:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
