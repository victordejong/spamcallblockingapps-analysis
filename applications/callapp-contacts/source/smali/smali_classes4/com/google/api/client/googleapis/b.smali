.class public final Lcom/google/api/client/googleapis/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/m;
.implements Lcom/google/api/client/http/s;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/b;-><init>(Z)V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/b;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/api/client/http/q;)V
    .locals 0

    .line 89
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/q;->a(Lcom/google/api/client/http/m;)Lcom/google/api/client/http/q;

    return-void
.end method

.method public final intercept(Lcom/google/api/client/http/q;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1110
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    .line 1111
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "GET"

    if-nez v2, :cond_2

    .line 1114
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1115
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->c()Lcom/google/api/client/http/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x800

    if-le v2, v5, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/google/api/client/googleapis/b;->a:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1118
    :cond_1
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->a()Lcom/google/api/client/http/w;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/api/client/http/w;->supportsMethod(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 94
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->b()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p1, v1}, Lcom/google/api/client/http/q;->a(Ljava/lang/String;)Lcom/google/api/client/http/q;

    .line 96
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->g()Lcom/google/api/client/http/n;

    move-result-object v1

    const-string v2, "X-HTTP-Method-Override"

    invoke-virtual {v1, v2, v0}, Lcom/google/api/client/http/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/n;

    .line 97
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    new-instance v0, Lcom/google/api/client/http/ae;

    invoke-virtual {p1}, Lcom/google/api/client/http/q;->c()Lcom/google/api/client/http/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/i;->a()Lcom/google/api/client/http/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/http/ae;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/q;->a(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    .line 101
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->c()Lcom/google/api/client/http/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/client/http/i;->clear()V

    return-void

    .line 102
    :cond_3
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->d()Lcom/google/api/client/http/j;

    move-result-object v0

    if-nez v0, :cond_4

    .line 104
    new-instance v0, Lcom/google/api/client/http/f;

    invoke-direct {v0}, Lcom/google/api/client/http/f;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/q;->a(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    :cond_4
    return-void
.end method
