.class public final synthetic Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookAdPreloader$a06hLqNvdS3f-wiSB_iwWebWk2o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookAdPreloader$a06hLqNvdS3f-wiSB_iwWebWk2o;->f$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookAdPreloader$a06hLqNvdS3f-wiSB_iwWebWk2o;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookAdPreloader$a06hLqNvdS3f-wiSB_iwWebWk2o;->f$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookAdPreloader$a06hLqNvdS3f-wiSB_iwWebWk2o;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->lambda$preload$0$PostcallFacebookAdPreloader(Landroid/content/Context;)V

    return-void
.end method
