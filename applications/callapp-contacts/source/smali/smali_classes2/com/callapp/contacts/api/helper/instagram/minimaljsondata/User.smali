.class public Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/User;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x25aad141da639d7fL


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private profilePicUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "profile_pic_url"
    .end annotation
.end field

.field private reel:Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Reel;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private username:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/User;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getProfilePicUrl()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/User;->profilePicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReel()Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Reel;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/User;->reel:Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Reel;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/User;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/User;->id:Ljava/lang/String;

    return-void
.end method

.method public setProfilePicUrl(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/User;->profilePicUrl:Ljava/lang/String;

    return-void
.end method

.method public setReel(Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Reel;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/User;->reel:Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Reel;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/User;->username:Ljava/lang/String;

    return-void
.end method
