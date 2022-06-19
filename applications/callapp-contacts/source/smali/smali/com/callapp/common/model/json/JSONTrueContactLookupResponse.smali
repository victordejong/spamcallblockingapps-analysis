.class public Lcom/callapp/common/model/json/JSONTrueContactLookupResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/common/model/json/JSONTrueContactLookupResponse$Contact;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3a05c123ca76bdbeL


# instance fields
.field private contact:Lcom/callapp/common/model/json/JSONTrueContactLookupResponse$Contact;

.field private urlFrom:Ljava/lang/String;

.field private urlTo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContact()Lcom/callapp/common/model/json/JSONTrueContactLookupResponse$Contact;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONTrueContactLookupResponse;->contact:Lcom/callapp/common/model/json/JSONTrueContactLookupResponse$Contact;

    return-object v0
.end method

.method public getUrlFrom()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONTrueContactLookupResponse;->urlFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlTo()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONTrueContactLookupResponse;->urlTo:Ljava/lang/String;

    return-object v0
.end method

.method public setContact(Lcom/callapp/common/model/json/JSONTrueContactLookupResponse$Contact;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONTrueContactLookupResponse;->contact:Lcom/callapp/common/model/json/JSONTrueContactLookupResponse$Contact;

    return-void
.end method

.method public setUrlFrom(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONTrueContactLookupResponse;->urlFrom:Ljava/lang/String;

    return-void
.end method

.method public setUrlTo(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONTrueContactLookupResponse;->urlTo:Ljava/lang/String;

    return-void
.end method
