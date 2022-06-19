.class public Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;
.super Ljava/lang/Object;
.source "PostcallAdvertProvider.java"


# instance fields
.field public adClicked:Z

.field public adPresented:Z

.field protected adShowBeginTimestamp:J

.field protected closed:Z

.field public holderPreparedAlready:Z

.field protected mAdvert:Lcom/telguarder/features/advertisements/Advert;

.field protected mHolder:Landroid/view/ViewGroup;

.field private mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

.field protected mOnError:Ljava/lang/Runnable;

.field protected mOnSuccess:Ljava/lang/Runnable;

.field public mVisibilityPrcnt:I

.field public newLoadStartedAlready:Z


# direct methods
.method public constructor <init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->closed:Z

    .line 24
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->adPresented:Z

    .line 25
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->holderPreparedAlready:Z

    .line 26
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->newLoadStartedAlready:Z

    .line 27
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->adClicked:Z

    const-wide/16 v1, 0x0

    .line 28
    iput-wide v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->adShowBeginTimestamp:J

    .line 30
    iput v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->mVisibilityPrcnt:I

    .line 34
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    .line 35
    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 37
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onInitViews()V

    return-void
.end method


# virtual methods
.method public detachEvents()V
    .locals 1

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->closed:Z

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->adPresented:Z

    .line 63
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->holderPreparedAlready:Z

    .line 64
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->newLoadStartedAlready:Z

    .line 65
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->adClicked:Z

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->mOnSuccess:Ljava/lang/Runnable;

    .line 67
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->mOnError:Ljava/lang/Runnable;

    return-void
.end method

.method public getHostActivity()Landroidx/appcompat/app/AppCompatActivity;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isInstantiated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getInstance()Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onHideViews()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->mHolder:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onInitViews()V
    .locals 0

    return-void
.end method

.method public onLoadAd(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->closed:Z

    .line 51
    iput-boolean p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->adPresented:Z

    .line 52
    iput-boolean p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->holderPreparedAlready:Z

    .line 53
    iput-boolean p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->newLoadStartedAlready:Z

    .line 54
    iput-boolean p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->adClicked:Z

    .line 55
    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->mOnSuccess:Ljava/lang/Runnable;

    .line 56
    iput-object p3, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->mOnError:Ljava/lang/Runnable;

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
