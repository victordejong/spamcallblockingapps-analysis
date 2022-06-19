.class public final Lcom/dropbox/core/v2/files/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/dropbox/core/v2/c;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/c;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/dropbox/core/v2/files/d;->a:Lcom/dropbox/core/v2/c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/v2/files/aa;)Lcom/dropbox/core/v2/files/ae;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2207
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/d;->a:Lcom/dropbox/core/v2/c;

    .line 5308
    iget-object v1, v0, Lcom/dropbox/core/v2/c;->a:Lcom/dropbox/core/e;

    .line 6057
    iget-object v1, v1, Lcom/dropbox/core/e;->b:Ljava/lang/String;

    const-string v2, "2/files/list_folder"

    .line 2207
    sget-object v4, Lcom/dropbox/core/v2/files/aa$a;->a:Lcom/dropbox/core/v2/files/aa$a;

    sget-object v5, Lcom/dropbox/core/v2/files/ae$a;->a:Lcom/dropbox/core/v2/files/ae$a;

    sget-object v6, Lcom/dropbox/core/v2/files/ac$a;->a:Lcom/dropbox/core/v2/files/ac$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/dropbox/core/v2/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/dropbox/core/a/c;Lcom/dropbox/core/a/c;Lcom/dropbox/core/a/c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/files/ae;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2216
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderErrorException;

    .line 7035
    iget-object v1, p1, Lcom/dropbox/core/DbxWrappedException;->b:Ljava/lang/String;

    .line 7039
    iget-object v2, p1, Lcom/dropbox/core/DbxWrappedException;->c:Lcom/dropbox/core/n;

    .line 8031
    iget-object p1, p1, Lcom/dropbox/core/DbxWrappedException;->a:Ljava/lang/Object;

    .line 2216
    check-cast p1, Lcom/dropbox/core/v2/files/ac;

    const-string v3, "2/files/list_folder"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/files/ListFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/n;Lcom/dropbox/core/v2/files/ac;)V

    throw v0
.end method

.method public final a(Lcom/dropbox/core/v2/files/e;)Lcom/dropbox/core/v2/files/g;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1007
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/d;->a:Lcom/dropbox/core/v2/c;

    .line 2308
    iget-object v1, v0, Lcom/dropbox/core/v2/c;->a:Lcom/dropbox/core/e;

    .line 3057
    iget-object v1, v1, Lcom/dropbox/core/e;->b:Ljava/lang/String;

    const-string v2, "2/files/delete_v2"

    .line 1007
    sget-object v4, Lcom/dropbox/core/v2/files/e$a;->a:Lcom/dropbox/core/v2/files/e$a;

    sget-object v5, Lcom/dropbox/core/v2/files/g$a;->a:Lcom/dropbox/core/v2/files/g$a;

    sget-object v6, Lcom/dropbox/core/v2/files/f$a;->a:Lcom/dropbox/core/v2/files/f$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/dropbox/core/v2/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/dropbox/core/a/c;Lcom/dropbox/core/a/c;Lcom/dropbox/core/a/c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/files/g;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1016
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteErrorException;

    .line 4035
    iget-object v1, p1, Lcom/dropbox/core/DbxWrappedException;->b:Ljava/lang/String;

    .line 4039
    iget-object v2, p1, Lcom/dropbox/core/DbxWrappedException;->c:Lcom/dropbox/core/n;

    .line 5031
    iget-object p1, p1, Lcom/dropbox/core/DbxWrappedException;->a:Ljava/lang/Object;

    .line 1016
    check-cast p1, Lcom/dropbox/core/v2/files/f;

    const-string v3, "2/files/delete_v2"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/files/DeleteErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/n;Lcom/dropbox/core/v2/files/f;)V

    throw v0
.end method
