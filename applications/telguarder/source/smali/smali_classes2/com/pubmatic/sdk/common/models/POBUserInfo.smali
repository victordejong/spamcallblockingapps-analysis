.class public Lcom/pubmatic/sdk/common/models/POBUserInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/models/POBUserInfo$Gender;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/pubmatic/sdk/common/models/POBUserInfo$Gender;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBirthYear()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/common/models/POBUserInfo;->a:I

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBUserInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBUserInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Lcom/pubmatic/sdk/common/models/POBUserInfo$Gender;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBUserInfo;->b:Lcom/pubmatic/sdk/common/models/POBUserInfo$Gender;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBUserInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getMetro()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBUserInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBUserInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBUserInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public setBirthYear(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/pubmatic/sdk/common/models/POBUserInfo;->a:I

    :cond_0
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBUserInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBUserInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setGender(Lcom/pubmatic/sdk/common/models/POBUserInfo$Gender;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBUserInfo;->b:Lcom/pubmatic/sdk/common/models/POBUserInfo$Gender;

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBUserInfo;->h:Ljava/lang/String;

    return-void
.end method

.method public setMetro(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBUserInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBUserInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBUserInfo;->f:Ljava/lang/String;

    return-void
.end method
