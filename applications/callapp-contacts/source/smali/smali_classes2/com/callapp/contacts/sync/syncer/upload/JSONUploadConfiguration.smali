.class public Lcom/callapp/contacts/sync/syncer/upload/JSONUploadConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private disabled:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "disabled"
    .end annotation
.end field

.field private disabledInstallPackageNames:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "disabled_install_package_names"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private disabledStoreNames:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "disabled_store_names"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
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
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    check-cast p1, Lcom/callapp/contacts/sync/syncer/upload/JSONUploadConfiguration;

    .line 49
    iget-boolean v1, p0, Lcom/callapp/contacts/sync/syncer/upload/JSONUploadConfiguration;->disabled:Z

    iget-boolean v2, p1, Lcom/callapp/contacts/sync/syncer/upload/JSONUploadConfiguration;->disabled:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/sync/syncer/upload/JSONUploadConfiguration;->disabledInstallPackageNames:Ljava/util/List;

    iget-object v2, p1, Lcom/callapp/contacts/sync/syncer/upload/JSONUploadConfiguration;->disabledInstallPackageNames:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/upload/JSONUploadConfiguration;->disabledStoreNames:Ljava/util/List;

    iget-object p1, p1, Lcom/callapp/contacts/sync/syncer/upload/JSONUploadConfiguration;->disabledStoreNames:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public getDisabledInstallPackageNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/upload/JSONUploadConfiguration;->disabledInstallPackageNames:Ljava/util/List;

    return-object v0
.end method

.method public getDisabledStoreNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/upload/JSONUploadConfiguration;->disabledStoreNames:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 57
    iget-boolean v0, p0, Lcom/callapp/contacts/sync/syncer/upload/JSONUploadConfiguration;->disabled:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 58
    iget-object v1, p0, Lcom/callapp/contacts/sync/syncer/upload/JSONUploadConfiguration;->disabledInstallPackageNames:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 59
    iget-object v1, p0, Lcom/callapp/contacts/sync/syncer/upload/JSONUploadConfiguration;->disabledStoreNames:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/callapp/contacts/sync/syncer/upload/JSONUploadConfiguration;->disabled:Z

    return v0
.end method

.method public setDisabled(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/callapp/contacts/sync/syncer/upload/JSONUploadConfiguration;->disabled:Z

    return-void
.end method

.method public setDisabledInstallPackageNames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/upload/JSONUploadConfiguration;->disabledInstallPackageNames:Ljava/util/List;

    return-void
.end method

.method public setDisabledStoreNames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/upload/JSONUploadConfiguration;->disabledStoreNames:Ljava/util/List;

    return-void
.end method
