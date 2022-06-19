.class public final Lcom/dropbox/core/v2/files/bh;
.super Lcom/dropbox/core/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/l<",
        "Lcom/dropbox/core/v2/files/q;",
        "Lcom/dropbox/core/v2/files/bc;",
        "Lcom/dropbox/core/v2/files/UploadErrorException;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/dropbox/core/http/a$c;Ljava/lang/String;)V
    .locals 2

    .line 33
    sget-object v0, Lcom/dropbox/core/v2/files/q$a;->a:Lcom/dropbox/core/v2/files/q$a;

    sget-object v1, Lcom/dropbox/core/v2/files/bc$a;->a:Lcom/dropbox/core/v2/files/bc$a;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/dropbox/core/l;-><init>(Lcom/dropbox/core/http/a$c;Lcom/dropbox/core/a/c;Lcom/dropbox/core/a/c;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/dropbox/core/DbxWrappedException;)Lcom/dropbox/core/DbxApiException;
    .locals 4

    .line 1037
    new-instance v0, Lcom/dropbox/core/v2/files/UploadErrorException;

    .line 2035
    iget-object v1, p1, Lcom/dropbox/core/DbxWrappedException;->b:Ljava/lang/String;

    .line 2039
    iget-object v2, p1, Lcom/dropbox/core/DbxWrappedException;->c:Lcom/dropbox/core/n;

    .line 3031
    iget-object p1, p1, Lcom/dropbox/core/DbxWrappedException;->a:Ljava/lang/Object;

    .line 1037
    check-cast p1, Lcom/dropbox/core/v2/files/bc;

    const-string v3, "2/files/upload"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/files/UploadErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/n;Lcom/dropbox/core/v2/files/bc;)V

    return-object v0
.end method
