.class public Lcom/callapp/contacts/sync/syncer/upload/ExternalSourcesUploadSyncer;
.super Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher<",
        "Lcom/callapp/common/model/json/JSONExternalSourceContact;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;-><init>()V

    return-void
.end method


# virtual methods
.method public getContacts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONExternalSourceContact;",
            ">;"
        }
    .end annotation

    .line 16
    invoke-static {}, Lcom/callapp/contacts/loader/external/ExternalSourcesUtils;->getExternalSourcesNumbers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploadMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "esuejd"

    return-object v0
.end method

.method public onUploadCompleted(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 27
    invoke-static {}, Lcom/callapp/contacts/loader/external/ExternalSourcesUtils;->a()V

    :cond_0
    return-void
.end method
