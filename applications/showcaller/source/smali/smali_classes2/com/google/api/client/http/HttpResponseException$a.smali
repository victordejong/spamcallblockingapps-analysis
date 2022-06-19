.class public Lcom/google/api/client/http/HttpResponseException$a;
.super Ljava/lang/Object;
.source "HttpResponseException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/HttpResponseException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Lcom/google/api/client/http/n;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/api/client/http/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/HttpResponseException$a;->d(I)Lcom/google/api/client/http/HttpResponseException$a;

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/api/client/http/HttpResponseException$a;->e(Ljava/lang/String;)Lcom/google/api/client/http/HttpResponseException$a;

    .line 4
    invoke-virtual {p0, p3}, Lcom/google/api/client/http/HttpResponseException$a;->b(Lcom/google/api/client/http/n;)Lcom/google/api/client/http/HttpResponseException$a;

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/t;)V
    .locals 3

    .line 5
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->h()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/api/client/http/t;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/client/http/t;->f()Lcom/google/api/client/http/n;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/http/HttpResponseException$a;-><init>(ILjava/lang/String;Lcom/google/api/client/http/n;)V

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpResponseException$a;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/google/api/client/http/HttpResponseException$a;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 11
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/google/api/client/http/HttpResponseException;->computeMessageBuffer(Lcom/google/api/client/http/t;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponseException$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 13
    sget-object v0, Lcom/google/api/client/util/a0;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/api/client/http/HttpResponseException$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/http/HttpResponseException$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/api/client/http/HttpResponseException$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/http/HttpResponseException$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lcom/google/api/client/http/n;)Lcom/google/api/client/http/HttpResponseException$a;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/n;

    iput-object p1, p0, Lcom/google/api/client/http/HttpResponseException$a;->c:Lcom/google/api/client/http/n;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/api/client/http/HttpResponseException$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/http/HttpResponseException$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d(I)Lcom/google/api/client/http/HttpResponseException$a;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/w;->a(Z)V

    .line 2
    iput p1, p0, Lcom/google/api/client/http/HttpResponseException$a;->a:I

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/google/api/client/http/HttpResponseException$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/http/HttpResponseException$a;->b:Ljava/lang/String;

    return-object p0
.end method
