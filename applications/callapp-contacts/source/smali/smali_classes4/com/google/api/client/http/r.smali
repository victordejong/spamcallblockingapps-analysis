.class public final Lcom/google/api/client/http/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/api/client/http/w;

.field private final b:Lcom/google/api/client/http/s;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/w;Lcom/google/api/client/http/s;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/api/client/http/r;->a:Lcom/google/api/client/http/w;

    .line 52
    iput-object p2, p0, Lcom/google/api/client/http/r;->b:Lcom/google/api/client/http/s;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/q;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "GET"

    const/4 v1, 0x0

    .line 117
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/api/client/http/r;->a(Ljava/lang/String;Lcom/google/api/client/http/i;Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/api/client/http/i;Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "POST"

    .line 128
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/api/client/http/r;->a(Ljava/lang/String;Lcom/google/api/client/http/i;Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/google/api/client/http/i;Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/api/client/http/r;->a:Lcom/google/api/client/http/w;

    invoke-virtual {v0}, Lcom/google/api/client/http/w;->buildRequest()Lcom/google/api/client/http/q;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {v0, p2}, Lcom/google/api/client/http/q;->a(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/q;

    .line 90
    :cond_0
    iget-object p2, p0, Lcom/google/api/client/http/r;->b:Lcom/google/api/client/http/s;

    if-eqz p2, :cond_1

    .line 91
    invoke-interface {p2, v0}, Lcom/google/api/client/http/s;->a(Lcom/google/api/client/http/q;)V

    .line 93
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/api/client/http/q;->a(Ljava/lang/String;)Lcom/google/api/client/http/q;

    if-eqz p3, :cond_2

    .line 1285
    iput-object p3, v0, Lcom/google/api/client/http/q;->h:Lcom/google/api/client/http/j;

    :cond_2
    return-object v0
.end method

.method public final a()Lcom/google/api/client/http/w;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/api/client/http/r;->a:Lcom/google/api/client/http/w;

    return-object v0
.end method

.method public final b(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/q;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "PUT"

    const/4 v1, 0x0

    .line 139
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/api/client/http/r;->a(Ljava/lang/String;Lcom/google/api/client/http/i;Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lcom/google/api/client/http/s;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/api/client/http/r;->b:Lcom/google/api/client/http/s;

    return-object v0
.end method
