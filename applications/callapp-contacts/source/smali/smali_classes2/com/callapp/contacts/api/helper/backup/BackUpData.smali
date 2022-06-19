.class public final Lcom/callapp/contacts/api/helper/backup/BackUpData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010 \u001a\u00020\u000bH\u00c6\u0003J7\u0010!\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u00c6\u0001J\u0013\u0010\"\u001a\u00020\u00052\u0008\u0010#\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010$\u001a\u00020%H\u00d6\u0001J\t\u0010&\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R \u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/callapp/contacts/api/helper/backup/BackUpData;",
        "",
        "folderName",
        "",
        "deleteBeforeUpload",
        "",
        "(Ljava/lang/String;Z)V",
        "fileData",
        "",
        "Lcom/callapp/contacts/api/helper/backup/BackUpFileData;",
        "fileType",
        "Lcom/callapp/contacts/api/helper/backup/BackupFileType;",
        "(Ljava/lang/String;Ljava/util/List;ZLcom/callapp/contacts/api/helper/backup/BackupFileType;)V",
        "getDeleteBeforeUpload",
        "()Z",
        "setDeleteBeforeUpload",
        "(Z)V",
        "getFileData",
        "()Ljava/util/List;",
        "setFileData",
        "(Ljava/util/List;)V",
        "getFileType",
        "()Lcom/callapp/contacts/api/helper/backup/BackupFileType;",
        "setFileType",
        "(Lcom/callapp/contacts/api/helper/backup/BackupFileType;)V",
        "getFolderName",
        "()Ljava/lang/String;",
        "setFolderName",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/api/helper/backup/BackUpFileData;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Lcom/callapp/contacts/api/helper/backup/BackupFileType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ZLcom/callapp/contacts/api/helper/backup/BackupFileType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/api/helper/backup/BackUpFileData;",
            ">;Z",
            "Lcom/callapp/contacts/api/helper/backup/BackupFileType;",
            ")V"
        }
    .end annotation

    const-string v0, "folderName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackUpData;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/backup/BackUpData;->b:Ljava/util/List;

    iput-boolean p3, p0, Lcom/callapp/contacts/api/helper/backup/BackUpData;->c:Z

    iput-object p4, p0, Lcom/callapp/contacts/api/helper/backup/BackUpData;->d:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;ZLcom/callapp/contacts/api/helper/backup/BackupFileType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/api/helper/backup/BackUpData;-><init>(Ljava/lang/String;Ljava/util/List;ZLcom/callapp/contacts/api/helper/backup/BackupFileType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "folderName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->UN_SUPPORTED:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/callapp/contacts/api/helper/backup/BackUpData;-><init>(Ljava/lang/String;Ljava/util/List;ZLcom/callapp/contacts/api/helper/backup/BackupFileType;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/callapp/contacts/api/helper/backup/BackUpData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/callapp/contacts/api/helper/backup/BackUpData;

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackUpData;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/callapp/contacts/api/helper/backup/BackUpData;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackUpData;->b:Ljava/util/List;

    iget-object v1, p1, Lcom/callapp/contacts/api/helper/backup/BackUpData;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/callapp/contacts/api/helper/backup/BackUpData;->c:Z

    iget-boolean v1, p1, Lcom/callapp/contacts/api/helper/backup/BackUpData;->c:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackUpData;->d:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    iget-object p1, p1, Lcom/callapp/contacts/api/helper/backup/BackUpData;->d:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getDeleteBeforeUpload()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/callapp/contacts/api/helper/backup/BackUpData;->c:Z

    return v0
.end method

.method public final getFileData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/api/helper/backup/BackUpFileData;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackUpData;->b:Ljava/util/List;

    return-object v0
.end method

.method public final getFileType()Lcom/callapp/contacts/api/helper/backup/BackupFileType;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackUpData;->d:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    return-object v0
.end method

.method public final getFolderName()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackUpData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackUpData;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/api/helper/backup/BackUpData;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/callapp/contacts/api/helper/backup/BackUpData;->c:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/api/helper/backup/BackUpData;->d:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final setFileData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/api/helper/backup/BackUpFileData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackUpData;->b:Ljava/util/List;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BackUpData(folderName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/backup/BackUpData;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/backup/BackUpData;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deleteBeforeUpload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/api/helper/backup/BackUpData;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fileType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/backup/BackUpData;->d:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
