.class public Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;
.super Ljava/lang/Object;
.source "ListbannerAdvertProvider.java"


# instance fields
.field public adClicked:Z

.field public adLoadStarted:Z

.field public adLoaded:Z

.field protected adShowBeginTimestamp:J

.field protected closed:Z

.field public mAdContainer:Landroid/view/ViewGroup;

.field protected mAdvert:Lcom/telguarder/features/advertisements/Advert;

.field protected mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

.field protected mOnError:Ljava/lang/Runnable;

.field protected mOnSuccess:Ljava/lang/Runnable;

.field public mVisibilityPrcnt:I

.field protected resumed:Z


# direct methods
.method public constructor <init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->resumed:Z

    .line 23
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->closed:Z

    .line 24
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->adLoadStarted:Z

    .line 25
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->adLoaded:Z

    .line 26
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->adClicked:Z

    const-wide/16 v1, 0x0

    .line 27
    iput-wide v1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->adShowBeginTimestamp:J

    .line 29
    iput v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->mVisibilityPrcnt:I

    .line 33
    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    .line 34
    iput-object p2, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method


# virtual methods
.method public bindAd(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onHideViews()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->mAdContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onLoadAd(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->adLoadStarted:Z

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->closed:Z

    .line 41
    iput-object p2, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->mOnSuccess:Ljava/lang/Runnable;

    .line 42
    iput-object p3, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->mOnError:Ljava/lang/Runnable;

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
