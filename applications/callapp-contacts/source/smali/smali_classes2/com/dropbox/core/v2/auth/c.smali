.class public final Lcom/dropbox/core/v2/auth/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/dropbox/core/v2/c;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/c;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/dropbox/core/v2/auth/c;->a:Lcom/dropbox/core/v2/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/c;->a:Lcom/dropbox/core/v2/c;

    .line 1308
    iget-object v1, v0, Lcom/dropbox/core/v2/c;->a:Lcom/dropbox/core/e;

    .line 2057
    iget-object v1, v1, Lcom/dropbox/core/e;->b:Ljava/lang/String;

    const-string v2, "2/auth/token/revoke"

    const/4 v3, 0x0

    .line 2060
    sget-object v5, Lcom/dropbox/core/a/d$i;->a:Lcom/dropbox/core/a/d$i;

    .line 4060
    sget-object v6, Lcom/dropbox/core/a/d$i;->a:Lcom/dropbox/core/a/d$i;

    move-object v4, v5

    .line 36
    invoke-virtual/range {v0 .. v6}, Lcom/dropbox/core/v2/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/dropbox/core/a/c;Lcom/dropbox/core/a/c;Lcom/dropbox/core/a/c;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 45
    new-instance v1, Lcom/dropbox/core/DbxApiException;

    .line 5035
    iget-object v2, v0, Lcom/dropbox/core/DbxWrappedException;->b:Ljava/lang/String;

    .line 5039
    iget-object v3, v0, Lcom/dropbox/core/DbxWrappedException;->c:Lcom/dropbox/core/n;

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected error response for \"token/revoke\":"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6031
    iget-object v0, v0, Lcom/dropbox/core/DbxWrappedException;->a:Ljava/lang/Object;

    .line 45
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/n;Ljava/lang/String;)V

    throw v1
.end method
