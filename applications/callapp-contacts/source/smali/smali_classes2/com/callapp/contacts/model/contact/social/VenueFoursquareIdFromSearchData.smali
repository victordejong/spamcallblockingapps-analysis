.class public Lcom/callapp/contacts/model/contact/social/VenueFoursquareIdFromSearchData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6f8b9cf874c58463L


# instance fields
.field private venueFoursquareId:Lcom/callapp/common/model/json/JSONSocialNetworkID;


# direct methods
.method public constructor <init>(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/VenueFoursquareIdFromSearchData;->venueFoursquareId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method


# virtual methods
.method public getVenueFoursquareId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/VenueFoursquareIdFromSearchData;->venueFoursquareId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public setVenueFoursquareId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/VenueFoursquareIdFromSearchData;->venueFoursquareId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method
