.class public Lcom/dropbox/core/oauth/DbxOAuthException;
.super Lcom/dropbox/core/DbxException;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/oauth/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/oauth/b;)V
    .locals 1

    .line 1046
    iget-object v0, p2, Lcom/dropbox/core/oauth/b;->c:Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/DbxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iput-object p2, p0, Lcom/dropbox/core/oauth/DbxOAuthException;->a:Lcom/dropbox/core/oauth/b;

    return-void
.end method
