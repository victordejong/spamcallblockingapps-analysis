.class public final Lcom/google/api/client/http/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/a/ad;


# instance fields
.field private final a:Lcom/google/api/client/a/ad;

.field private final b:Lcom/google/api/client/http/k;


# direct methods
.method public constructor <init>(Lcom/google/api/client/a/ad;Lcom/google/api/client/http/k;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1125
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 43
    check-cast p1, Lcom/google/api/client/a/ad;

    iput-object p1, p0, Lcom/google/api/client/http/l;->a:Lcom/google/api/client/a/ad;

    .line 2125
    invoke-static {p2}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 44
    check-cast p1, Lcom/google/api/client/http/k;

    iput-object p1, p0, Lcom/google/api/client/http/l;->b:Lcom/google/api/client/http/k;

    return-void
.end method


# virtual methods
.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/api/client/http/l;->b:Lcom/google/api/client/http/k;

    iget-object v1, p0, Lcom/google/api/client/http/l;->a:Lcom/google/api/client/a/ad;

    invoke-interface {v0, v1, p1}, Lcom/google/api/client/http/k;->a(Lcom/google/api/client/a/ad;Ljava/io/OutputStream;)V

    return-void
.end method
