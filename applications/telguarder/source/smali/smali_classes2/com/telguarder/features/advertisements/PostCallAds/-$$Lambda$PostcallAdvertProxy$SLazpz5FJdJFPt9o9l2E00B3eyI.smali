.class public final synthetic Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertProxy$SLazpz5FJdJFPt9o9l2E00B3eyI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertProxy$SLazpz5FJdJFPt9o9l2E00B3eyI;->f$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertProxy$SLazpz5FJdJFPt9o9l2E00B3eyI;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertProxy$SLazpz5FJdJFPt9o9l2E00B3eyI;->f$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertProxy$SLazpz5FJdJFPt9o9l2E00B3eyI;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->lambda$onLoadAd$2$PostcallAdvertProxy(Landroid/content/Context;)V

    return-void
.end method
