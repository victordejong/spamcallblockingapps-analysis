.class public final synthetic Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookAdProvider$11tuKyOkCJt-HtXDIkzX3yehlio;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/telguarder/features/postCallStatistics/CSAdRowViewHolder$AdHolderCallbackInterface;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookAdProvider$11tuKyOkCJt-HtXDIkzX3yehlio;->f$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;

    iput-boolean p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookAdProvider$11tuKyOkCJt-HtXDIkzX3yehlio;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onDataBinding(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookAdProvider$11tuKyOkCJt-HtXDIkzX3yehlio;->f$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;

    iget-boolean v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookAdProvider$11tuKyOkCJt-HtXDIkzX3yehlio;->f$1:Z

    invoke-virtual {v0, v1, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->lambda$addFbView$1$PostcallFacebookAdProvider(ZLandroid/view/ViewGroup;)V

    return-void
.end method
