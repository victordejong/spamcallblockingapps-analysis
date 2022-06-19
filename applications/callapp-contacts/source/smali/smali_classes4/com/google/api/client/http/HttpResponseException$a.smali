.class public final Lcom/google/api/client/http/HttpResponseException$a;
.super Ljava/lang/Object;
.source "SourceFile"


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

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/api/client/http/n;)V
    .locals 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2035
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->a(Z)V

    .line 1211
    iput p1, p0, Lcom/google/api/client/http/HttpResponseException$a;->a:I

    .line 2227
    iput-object p2, p0, Lcom/google/api/client/http/HttpResponseException$a;->b:Ljava/lang/String;

    .line 3125
    invoke-static {p3}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2243
    check-cast p1, Lcom/google/api/client/http/n;

    iput-object p1, p0, Lcom/google/api/client/http/HttpResponseException$a;->c:Lcom/google/api/client/http/n;

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/t;)V
    .locals 3

    .line 3292
    iget v0, p1, Lcom/google/api/client/http/t;->c:I

    .line 3301
    iget-object v1, p1, Lcom/google/api/client/http/t;->d:Ljava/lang/String;

    .line 4273
    iget-object v2, p1, Lcom/google/api/client/http/t;->e:Lcom/google/api/client/http/q;

    .line 4519
    iget-object v2, v2, Lcom/google/api/client/http/q;->e:Lcom/google/api/client/http/n;

    .line 161
    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/http/HttpResponseException$a;-><init>(ILjava/lang/String;Lcom/google/api/client/http/n;)V

    .line 164
    :try_start_0
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpResponseException$a;->d:Ljava/lang/String;

    .line 165
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/google/api/client/http/HttpResponseException$a;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 175
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/google/api/client/http/HttpResponseException;->computeMessageBuffer(Lcom/google/api/client/http/t;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 176
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponseException$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 177
    sget-object v0, Lcom/google/api/client/a/ae;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/api/client/http/HttpResponseException$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/http/HttpResponseException$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/api/client/http/HttpResponseException$a;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/google/api/client/http/HttpResponseException$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/api/client/http/HttpResponseException$a;
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/google/api/client/http/HttpResponseException$a;->d:Ljava/lang/String;

    return-object p0
.end method
