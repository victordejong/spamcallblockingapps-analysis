.class public final Lcom/dropbox/core/v1/DbxClientV1$IODbxException;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxClientV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IODbxException"
.end annotation


# instance fields
.field public final a:Lcom/dropbox/core/DbxException;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/DbxException;)V
    .locals 0

    .line 1449
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 1450
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$IODbxException;->a:Lcom/dropbox/core/DbxException;

    return-void
.end method
