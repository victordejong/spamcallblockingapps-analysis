.class public abstract Lcom/callapp/contacts/loader/social/BaseSocialLoaderTask;
.super Lcom/callapp/contacts/loader/BaseLoaderTask;
.source "SourceFile"


# instance fields
.field protected b:Lcom/callapp/common/model/json/JSONSocialNetworkID;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/loader/BaseLoaderTask;-><init>(Lcom/callapp/contacts/loader/api/ContactDataLoader;Lcom/callapp/contacts/loader/api/LoadContext;)V

    .line 13
    iput-object p3, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoaderTask;->b:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method
