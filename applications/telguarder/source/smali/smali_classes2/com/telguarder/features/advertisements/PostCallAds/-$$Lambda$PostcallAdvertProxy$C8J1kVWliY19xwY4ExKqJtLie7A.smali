.class public final synthetic Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertProxy$C8J1kVWliY19xwY4ExKqJtLie7A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

.field public final synthetic f$1:Lcom/telguarder/features/advertisements/Advert;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;Lcom/telguarder/features/advertisements/Advert;Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertProxy$C8J1kVWliY19xwY4ExKqJtLie7A;->f$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertProxy$C8J1kVWliY19xwY4ExKqJtLie7A;->f$1:Lcom/telguarder/features/advertisements/Advert;

    iput-object p3, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertProxy$C8J1kVWliY19xwY4ExKqJtLie7A;->f$2:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertProxy$C8J1kVWliY19xwY4ExKqJtLie7A;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertProxy$C8J1kVWliY19xwY4ExKqJtLie7A;->f$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertProxy$C8J1kVWliY19xwY4ExKqJtLie7A;->f$1:Lcom/telguarder/features/advertisements/Advert;

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertProxy$C8J1kVWliY19xwY4ExKqJtLie7A;->f$2:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertProxy$C8J1kVWliY19xwY4ExKqJtLie7A;->f$3:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->lambda$preloadAd$0$PostcallAdvertProxy(Lcom/telguarder/features/advertisements/Advert;Landroid/content/Context;Z)V

    return-void
.end method
