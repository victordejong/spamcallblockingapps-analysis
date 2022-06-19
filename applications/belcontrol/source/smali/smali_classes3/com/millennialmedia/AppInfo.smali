.class public Lcom/millennialmedia/AppInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private coppa:Ljava/lang/Boolean;

.field private mediator:Ljava/lang/String;

.field private siteId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoppa()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/AppInfo;->coppa:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMediator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/AppInfo;->mediator:Ljava/lang/String;

    return-object v0
.end method

.method public getSiteId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/AppInfo;->siteId:Ljava/lang/String;

    return-object v0
.end method

.method public setCoppa(Z)Lcom/millennialmedia/AppInfo;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/millennialmedia/AppInfo;->coppa:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setMediator(Ljava/lang/String;)Lcom/millennialmedia/AppInfo;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/AppInfo;->mediator:Ljava/lang/String;

    return-object p0
.end method

.method public setSiteId(Ljava/lang/String;)Lcom/millennialmedia/AppInfo;
    .locals 0

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/Utils;->trimStringNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/millennialmedia/AppInfo;->siteId:Ljava/lang/String;

    return-object p0
.end method
