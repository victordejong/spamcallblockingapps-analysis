.class public Lcom/google/api/client/http/HttpResponseException;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/HttpResponseException$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1a083fdabb32a37bL


# instance fields
.field private final content:Ljava/lang/String;

.field private final transient headers:Lcom/google/api/client/http/n;

.field private final statusCode:I

.field private final statusMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpResponseException$a;)V
    .locals 1

    .line 71
    iget-object v0, p1, Lcom/google/api/client/http/HttpResponseException$a;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 72
    iget v0, p1, Lcom/google/api/client/http/HttpResponseException$a;->a:I

    iput v0, p0, Lcom/google/api/client/http/HttpResponseException;->statusCode:I

    .line 73
    iget-object v0, p1, Lcom/google/api/client/http/HttpResponseException$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/http/HttpResponseException;->statusMessage:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lcom/google/api/client/http/HttpResponseException$a;->c:Lcom/google/api/client/http/n;

    iput-object v0, p0, Lcom/google/api/client/http/HttpResponseException;->headers:Lcom/google/api/client/http/n;

    .line 75
    iget-object p1, p1, Lcom/google/api/client/http/HttpResponseException$a;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/client/http/HttpResponseException;->content:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/t;)V
    .locals 1

    .line 63
    new-instance v0, Lcom/google/api/client/http/HttpResponseException$a;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/HttpResponseException$a;-><init>(Lcom/google/api/client/http/t;)V

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponseException$a;)V

    return-void
.end method

.method public static computeMessageBuffer(Lcom/google/api/client/http/t;)Ljava/lang/StringBuilder;
    .locals 4

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1292
    iget v1, p0, Lcom/google/api/client/http/t;->c:I

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1301
    :cond_0
    iget-object v2, p0, Lcom/google/api/client/http/t;->d:Ljava/lang/String;

    const/16 v3, 0x20

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 283
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    :cond_2
    iget-object p0, p0, Lcom/google/api/client/http/t;->e:Lcom/google/api/client/http/q;

    if-eqz p0, :cond_5

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/16 v1, 0xa

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2237
    :cond_3
    iget-object v1, p0, Lcom/google/api/client/http/q;->i:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2257
    :cond_4
    iget-object p0, p0, Lcom/google/api/client/http/q;->j:Lcom/google/api/client/http/i;

    .line 296
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    return-object v0
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponseException;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Lcom/google/api/client/http/n;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponseException;->headers:Lcom/google/api/client/http/n;

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/google/api/client/http/HttpResponseException;->statusCode:I

    return v0
.end method

.method public final getStatusMessage()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponseException;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final isSuccessStatusCode()Z
    .locals 1

    .line 85
    iget v0, p0, Lcom/google/api/client/http/HttpResponseException;->statusCode:I

    invoke-static {v0}, Lcom/google/api/client/http/v;->a(I)Z

    move-result v0

    return v0
.end method
