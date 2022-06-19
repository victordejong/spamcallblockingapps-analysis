.class public Lcom/callapp/contacts/model/contact/IntentData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6e0116754fce9bcdL


# instance fields
.field private facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private fullName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/IntentData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/IntentData;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public setFacebookId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/IntentData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/IntentData;->fullName:Ljava/lang/String;

    return-void
.end method
