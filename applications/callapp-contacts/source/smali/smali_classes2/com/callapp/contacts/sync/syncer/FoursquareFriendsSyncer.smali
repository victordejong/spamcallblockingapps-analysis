.class public Lcom/callapp/contacts/sync/syncer/FoursquareFriendsSyncer;
.super Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer<",
        "Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getSocialHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/FoursquareFriendsSyncer;->getSocialHelper()Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;

    move-result-object v0

    return-object v0
.end method

.method protected getSocialHelper()Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;
    .locals 1

    .line 8
    invoke-static {}, Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;->get()Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;

    move-result-object v0

    return-object v0
.end method
