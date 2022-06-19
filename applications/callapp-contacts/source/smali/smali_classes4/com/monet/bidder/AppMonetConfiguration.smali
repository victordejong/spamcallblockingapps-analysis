.class public Lcom/monet/bidder/AppMonetConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/monet/bidder/AppMonetConfiguration$Builder;
    }
.end annotation


# instance fields
.field applicationId:Ljava/lang/String;

.field disableBannerListener:Z


# direct methods
.method private constructor <init>(Lcom/monet/bidder/AppMonetConfiguration$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/monet/bidder/AppMonetConfiguration$Builder;->access$000(Lcom/monet/bidder/AppMonetConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/monet/bidder/AppMonetConfiguration;->applicationId:Ljava/lang/String;

    invoke-static {p1}, Lcom/monet/bidder/AppMonetConfiguration$Builder;->access$100(Lcom/monet/bidder/AppMonetConfiguration$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/monet/bidder/AppMonetConfiguration;->disableBannerListener:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/monet/bidder/AppMonetConfiguration$Builder;Lcom/monet/bidder/AppMonetConfiguration$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/monet/bidder/AppMonetConfiguration;-><init>(Lcom/monet/bidder/AppMonetConfiguration$Builder;)V

    return-void
.end method
