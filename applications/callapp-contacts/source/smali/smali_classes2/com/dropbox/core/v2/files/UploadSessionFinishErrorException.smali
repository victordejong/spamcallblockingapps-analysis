.class public Lcom/dropbox/core/v2/files/UploadSessionFinishErrorException;
.super Lcom/dropbox/core/DbxApiException;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/files/be;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/n;Lcom/dropbox/core/v2/files/be;)V
    .locals 0

    .line 30
    invoke-static {p1, p3, p4}, Lcom/dropbox/core/v2/files/UploadSessionFinishErrorException;->a(Ljava/lang/String;Lcom/dropbox/core/n;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/n;Ljava/lang/String;)V

    const-string p1, "errorValue"

    .line 32
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iput-object p4, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishErrorException;->a:Lcom/dropbox/core/v2/files/be;

    return-void
.end method
