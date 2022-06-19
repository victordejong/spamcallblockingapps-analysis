.class public Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Owner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x37491ffbda31b06dL


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

.field private username:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Owner;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getProfilePicUrl()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Owner;->profilePicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Owner;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Owner;->id:Ljava/lang/String;

    return-void
.end method

.method public setProfilePicUrl(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Owner;->profilePicUrl:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Owner;->username:Ljava/lang/String;

    return-void
.end method
