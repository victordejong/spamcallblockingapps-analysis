.class public Lcom/callapp/common/model/json/JSONTrueContactLookupResponse$Contact;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/common/model/json/JSONTrueContactLookupResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contact"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x601c89dd2e13e792L


# instance fields
.field private address:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private isQualified:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private picUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONTrueContactLookupResponse$Contact;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONTrueContactLookupResponse$Contact;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getIsQualified()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONTrueContactLookupResponse$Contact;->isQualified:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONTrueContactLookupResponse$Contact;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONTrueContactLookupResponse$Contact;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONTrueContactLookupResponse$Contact;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONTrueContactLookupResponse$Contact;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONTrueContactLookupResponse$Contact;->address:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONTrueContactLookupResponse$Contact;->email:Ljava/lang/String;

    return-void
.end method

.method public setIsQualified(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONTrueContactLookupResponse$Contact;->isQualified:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONTrueContactLookupResponse$Contact;->name:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONTrueContactLookupResponse$Contact;->phone:Ljava/lang/String;

    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONTrueContactLookupResponse$Contact;->picUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONTrueContactLookupResponse$Contact;->title:Ljava/lang/String;

    return-void
.end method
