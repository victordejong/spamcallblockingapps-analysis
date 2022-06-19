.class public Lcom/monet/bidder/AppMonetConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/monet/bidder/AppMonetConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private applicationId:Ljava/lang/String;

.field private disableBannerListener:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/monet/bidder/AppMonetConfiguration$Builder;->disableBannerListener:Z

    return-void
.end method

.method static synthetic access$000(Lcom/monet/bidder/AppMonetConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/monet/bidder/AppMonetConfiguration$Builder;->applicationId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/monet/bidder/AppMonetConfiguration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/monet/bidder/AppMonetConfiguration$Builder;->disableBannerListener:Z

    return p0
.end method


# virtual methods
.method public applicationId(Ljava/lang/String;)Lcom/monet/bidder/AppMonetConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/monet/bidder/AppMonetConfiguration$Builder;->applicationId:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/monet/bidder/AppMonetConfiguration;
    .locals 2

    new-instance v0, Lcom/monet/bidder/AppMonetConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/monet/bidder/AppMonetConfiguration;-><init>(Lcom/monet/bidder/AppMonetConfiguration$Builder;Lcom/monet/bidder/AppMonetConfiguration$1;)V

    return-object v0
.end method

.method public disableBannerListener(Z)Lcom/monet/bidder/AppMonetConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/monet/bidder/AppMonetConfiguration$Builder;->disableBannerListener:Z

    return-object p0
.end method
