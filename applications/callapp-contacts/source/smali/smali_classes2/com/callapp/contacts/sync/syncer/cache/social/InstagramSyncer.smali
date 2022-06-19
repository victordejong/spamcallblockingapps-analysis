.class public Lcom/callapp/contacts/sync/syncer/cache/social/InstagramSyncer;
.super Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer<",
        "Ljava/lang/Class<",
        "Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoaderClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;",
            ">;"
        }
    .end annotation

    .line 14
    const-class v0, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;

    return-object v0
.end method

.method public getNetworkId()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method
