.class public final Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;
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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;",
        "",
        "path",
        "",
        "message",
        "Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;",
        "fileType",
        "Lcom/callapp/contacts/api/helper/backup/BackupFileType;",
        "(Ljava/lang/String;Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;Lcom/callapp/contacts/api/helper/backup/BackupFileType;)V",
        "getFileType",
        "()Lcom/callapp/contacts/api/helper/backup/BackupFileType;",
        "setFileType",
        "(Lcom/callapp/contacts/api/helper/backup/BackupFileType;)V",
        "getMessage",
        "()Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;",
        "setMessage",
        "(Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;)V",
        "getPath",
        "()Ljava/lang/String;",
        "setPath",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
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

.field private b:Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

.field private c:Lcom/callapp/contacts/api/helper/backup/BackupFileType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;Lcom/callapp/contacts/api/helper/backup/BackupFileType;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->b:Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    iput-object p3, p0, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->c:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->b:Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    iget-object v1, p1, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->b:Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->c:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    iget-object p1, p1, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->c:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

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

.method public final getFileType()Lcom/callapp/contacts/api/helper/backup/BackupFileType;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->c:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    return-object v0
.end method

.method public final getMessage()Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->b:Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->b:Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->c:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BackupUploadFileData(path="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->b:Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->c:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
