.class public Lcom/dropbox/core/InvalidAccessTokenException;
.super Lcom/dropbox/core/DbxException;
.source "SourceFile"


# instance fields
.field public a:Lcom/dropbox/core/v2/auth/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/auth/b;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/DbxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iput-object p3, p0, Lcom/dropbox/core/InvalidAccessTokenException;->a:Lcom/dropbox/core/v2/auth/b;

    return-void
.end method
