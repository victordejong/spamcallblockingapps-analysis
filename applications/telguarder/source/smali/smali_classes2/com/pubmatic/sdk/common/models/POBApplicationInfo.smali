.class public Lcom/pubmatic/sdk/common/models/POBApplicationInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/net/URL;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategories()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;->b:Ljava/net/URL;

    return-object v0
.end method

.method public isPaid()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCategories(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public setPaid(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public setStoreURL(Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;->b:Ljava/net/URL;

    return-void
.end method
