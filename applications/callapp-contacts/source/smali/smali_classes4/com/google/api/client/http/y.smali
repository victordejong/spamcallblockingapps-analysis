.class public final Lcom/google/api/client/http/y;
.super Lcom/google/api/client/http/b;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Z

.field private final c:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2

    .line 61
    invoke-direct {p0, p1}, Lcom/google/api/client/http/b;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 47
    iput-wide v0, p0, Lcom/google/api/client/http/y;->a:J

    .line 1125
    invoke-static {p2}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 62
    check-cast p1, Ljava/io/InputStream;

    iput-object p1, p0, Lcom/google/api/client/http/y;->c:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/String;)Lcom/google/api/client/http/b;
    .locals 0

    .line 2093
    invoke-super {p0, p1}, Lcom/google/api/client/http/b;->a(Ljava/lang/String;)Lcom/google/api/client/http/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/y;

    return-object p1
.end method

.method public final synthetic a(Z)Lcom/google/api/client/http/b;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/y;->b(Z)Lcom/google/api/client/http/y;

    move-result-object p1

    return-object p1
.end method

.method public final a(J)Lcom/google/api/client/http/y;
    .locals 0

    .line 109
    iput-wide p1, p0, Lcom/google/api/client/http/y;->a:J

    return-object p0
.end method

.method public final a()Ljava/io/InputStream;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/api/client/http/y;->c:Ljava/io/InputStream;

    return-object v0
.end method

.method public final b(Z)Lcom/google/api/client/http/y;
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/google/api/client/http/b;->a(Z)Lcom/google/api/client/http/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/y;

    return-object p1
.end method

.method public final c()Lcom/google/api/client/http/y;
    .locals 1

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/google/api/client/http/y;->b:Z

    return-object p0
.end method

.method public final getLength()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/google/api/client/http/y;->a:J

    return-wide v0
.end method

.method public final retrySupported()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/google/api/client/http/y;->b:Z

    return v0
.end method
