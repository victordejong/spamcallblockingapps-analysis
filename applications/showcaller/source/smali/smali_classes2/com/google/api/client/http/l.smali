.class public final Lcom/google/api/client/http/l;
.super Ljava/lang/Object;
.source "HttpEncodingStreamingContent.java"

# interfaces
.implements Lcom/google/api/client/util/z;


# instance fields
.field private final a:Lcom/google/api/client/util/z;

.field private final b:Lcom/google/api/client/http/k;


# direct methods
.method public constructor <init>(Lcom/google/api/client/util/z;Lcom/google/api/client/http/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/util/z;

    iput-object p1, p0, Lcom/google/api/client/http/l;->a:Lcom/google/api/client/util/z;

    .line 3
    invoke-static {p2}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/k;

    iput-object p1, p0, Lcom/google/api/client/http/l;->b:Lcom/google/api/client/http/k;

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/l;->b:Lcom/google/api/client/http/k;

    iget-object v1, p0, Lcom/google/api/client/http/l;->a:Lcom/google/api/client/util/z;

    invoke-interface {v0, v1, p1}, Lcom/google/api/client/http/k;->a(Lcom/google/api/client/util/z;Ljava/io/OutputStream;)V

    return-void
.end method
