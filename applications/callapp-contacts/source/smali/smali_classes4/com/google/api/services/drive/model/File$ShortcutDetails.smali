.class public final Lcom/google/api/services/drive/model/File$ShortcutDetails;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/model/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShortcutDetails"
.end annotation


# instance fields
.field private targetId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private targetMimeType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3131
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 3131
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ShortcutDetails;->clone()Lcom/google/api/services/drive/model/File$ShortcutDetails;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 3131
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ShortcutDetails;->clone()Lcom/google/api/services/drive/model/File$ShortcutDetails;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/drive/model/File$ShortcutDetails;
    .locals 1

    .line 3191
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File$ShortcutDetails;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3131
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ShortcutDetails;->clone()Lcom/google/api/services/drive/model/File$ShortcutDetails;

    move-result-object v0

    return-object v0
.end method

.method public final getTargetId()Ljava/lang/String;
    .locals 1

    .line 3153
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ShortcutDetails;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetMimeType()Ljava/lang/String;
    .locals 1

    .line 3171
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ShortcutDetails;->targetMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 3131
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$ShortcutDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ShortcutDetails;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 3131
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$ShortcutDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ShortcutDetails;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ShortcutDetails;
    .locals 0

    .line 3186
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/File$ShortcutDetails;

    return-object p1
.end method

.method public final setTargetId(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ShortcutDetails;
    .locals 0

    .line 3161
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ShortcutDetails;->targetId:Ljava/lang/String;

    return-object p0
.end method

.method public final setTargetMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ShortcutDetails;
    .locals 0

    .line 3180
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ShortcutDetails;->targetMimeType:Ljava/lang/String;

    return-object p0
.end method
