.class public Lcom/google/api/client/http/h0/a;
.super Lcom/google/api/client/http/a;
.source "JsonHttpContent.java"


# instance fields
.field private final c:Ljava/lang/Object;

.field private final d:Lcom/google/api/client/json/c;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/c;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "application/json; charset=UTF-8"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/api/client/http/a;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/json/c;

    iput-object p1, p0, Lcom/google/api/client/http/h0/a;->d:Lcom/google/api/client/json/c;

    .line 3
    invoke-static {p2}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/http/h0/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/String;)Lcom/google/api/client/http/h0/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/http/h0/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/h0/a;->d:Lcom/google/api/client/json/c;

    invoke-virtual {p0}, Lcom/google/api/client/http/a;->e()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/api/client/json/c;->a(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/d;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/google/api/client/http/h0/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/api/client/json/d;->L()V

    .line 4
    iget-object v0, p0, Lcom/google/api/client/http/h0/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/api/client/json/d;->q(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/http/h0/a;->c:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/api/client/json/d;->e(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/google/api/client/http/h0/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/google/api/client/json/d;->p()V

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/google/api/client/json/d;->flush()V

    return-void
.end method
