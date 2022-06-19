.class public Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;
.super Lcom/dropbox/core/DbxApiException;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/paper/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/n;Lcom/dropbox/core/v2/paper/d;)V
    .locals 0

    .line 32
    invoke-static {p1, p3, p4}, Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;->a(Ljava/lang/String;Lcom/dropbox/core/n;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/n;Ljava/lang/String;)V

    const-string p1, "errorValue"

    .line 34
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    iput-object p4, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;->a:Lcom/dropbox/core/v2/paper/d;

    return-void
.end method
