.class public abstract Lcom/google/api/client/googleapis/notifications/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/googleapis/notifications/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/api/client/googleapis/notifications/f;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getDataClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract getObjectParser()Lcom/google/api/client/a/x;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract onNotification(Lcom/google/api/client/googleapis/notifications/b;Lcom/google/api/client/googleapis/notifications/c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/notifications/b;",
            "Lcom/google/api/client/googleapis/notifications/c<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final onNotification(Lcom/google/api/client/googleapis/notifications/b;Lcom/google/api/client/googleapis/notifications/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/google/api/client/googleapis/notifications/c;

    invoke-direct {v0, p2}, Lcom/google/api/client/googleapis/notifications/c;-><init>(Lcom/google/api/client/googleapis/notifications/e;)V

    .line 1060
    iget-object v1, p2, Lcom/google/api/client/googleapis/notifications/e;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 105
    new-instance v2, Lcom/google/api/client/http/p;

    invoke-direct {v2, v1}, Lcom/google/api/client/http/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/api/client/http/p;->b()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 106
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/notifications/d;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 108
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/notifications/d;->getObjectParser()Lcom/google/api/client/a/x;

    move-result-object v3

    .line 1081
    iget-object p2, p2, Lcom/google/api/client/googleapis/notifications/e;->b:Ljava/io/InputStream;

    .line 108
    invoke-interface {v3, p2, v1, v2}, Lcom/google/api/client/a/x;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 2075
    iput-object p2, v0, Lcom/google/api/client/googleapis/notifications/c;->a:Ljava/lang/Object;

    .line 110
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/api/client/googleapis/notifications/d;->onNotification(Lcom/google/api/client/googleapis/notifications/b;Lcom/google/api/client/googleapis/notifications/c;)V

    return-void
.end method
