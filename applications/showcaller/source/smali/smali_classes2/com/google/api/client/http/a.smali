.class public abstract Lcom/google/api/client/http/a;
.super Ljava/lang/Object;
.source "AbstractHttpContent.java"

# interfaces
.implements Lcom/google/api/client/http/j;


# instance fields
.field private a:Lcom/google/api/client/http/p;

.field private b:J


# direct methods
.method protected constructor <init>(Lcom/google/api/client/http/p;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/google/api/client/http/a;->b:J

    .line 4
    iput-object p1, p0, Lcom/google/api/client/http/a;->a:Lcom/google/api/client/http/p;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lcom/google/api/client/http/p;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/p;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/api/client/http/a;-><init>(Lcom/google/api/client/http/p;)V

    return-void
.end method

.method public static d(Lcom/google/api/client/http/j;)J
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/google/api/client/http/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/google/api/client/util/m;->a(Lcom/google/api/client/util/z;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/a;->a:Lcom/google/api/client/http/p;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/api/client/http/p;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c()J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/api/client/http/a;->d(Lcom/google/api/client/http/j;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final e()Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/a;->a:Lcom/google/api/client/http/p;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/api/client/http/p;->e()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/api/client/http/a;->a:Lcom/google/api/client/http/p;

    .line 2
    invoke-virtual {v0}, Lcom/google/api/client/http/p;->e()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/api/client/util/h;->b:Ljava/nio/charset/Charset;

    :goto_1
    return-object v0
.end method

.method public final f()Lcom/google/api/client/http/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/a;->a:Lcom/google/api/client/http/p;

    return-object v0
.end method

.method public getLength()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/api/client/http/a;->b:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/api/client/http/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/http/a;->b:J

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/google/api/client/http/a;->b:J

    return-wide v0
.end method
