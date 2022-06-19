.class public final Lcom/google/api/client/http/y;
.super Lcom/google/api/client/http/b;
.source "InputStreamContent.java"


# instance fields
.field private c:J

.field private d:Z

.field private final e:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/client/http/b;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/google/api/client/http/y;->c:J

    .line 3
    invoke-static {p2}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    iput-object p1, p0, Lcom/google/api/client/http/y;->e:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/api/client/http/y;->d:Z

    return v0
.end method

.method public d()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/y;->e:Ljava/io/InputStream;

    return-object v0
.end method

.method public bridge synthetic f(Ljava/lang/String;)Lcom/google/api/client/http/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/y;->j(Ljava/lang/String;)Lcom/google/api/client/http/y;

    move-result-object p1

    return-object p1
.end method

.method public g(Z)Lcom/google/api/client/http/y;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/http/b;->e(Z)Lcom/google/api/client/http/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/y;

    return-object p1
.end method

.method public getLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/api/client/http/y;->c:J

    return-wide v0
.end method

.method public h(J)Lcom/google/api/client/http/y;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/api/client/http/y;->c:J

    return-object p0
.end method

.method public i(Z)Lcom/google/api/client/http/y;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/api/client/http/y;->d:Z

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/google/api/client/http/y;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/http/b;->f(Ljava/lang/String;)Lcom/google/api/client/http/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/y;

    return-object p1
.end method
