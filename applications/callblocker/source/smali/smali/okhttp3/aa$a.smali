.class public Lokhttp3/aa$a;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lokhttp3/t;

.field b:Ljava/lang/String;

.field c:Lokhttp3/s$a;

.field d:Lokhttp3/ab;

.field e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lokhttp3/aa$a;->b:Ljava/lang/String;

    .line 109
    new-instance v0, Lokhttp3/s$a;

    invoke-direct {v0}, Lokhttp3/s$a;-><init>()V

    iput-object v0, p0, Lokhttp3/aa$a;->c:Lokhttp3/s$a;

    .line 110
    return-void
.end method

.method constructor <init>(Lokhttp3/aa;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iget-object v0, p1, Lokhttp3/aa;->a:Lokhttp3/t;

    iput-object v0, p0, Lokhttp3/aa$a;->a:Lokhttp3/t;

    .line 114
    iget-object v0, p1, Lokhttp3/aa;->b:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/aa$a;->b:Ljava/lang/String;

    .line 115
    iget-object v0, p1, Lokhttp3/aa;->d:Lokhttp3/ab;

    iput-object v0, p0, Lokhttp3/aa$a;->d:Lokhttp3/ab;

    .line 116
    iget-object v0, p1, Lokhttp3/aa;->e:Ljava/lang/Object;

    iput-object v0, p0, Lokhttp3/aa$a;->e:Ljava/lang/Object;

    .line 117
    iget-object v0, p1, Lokhttp3/aa;->c:Lokhttp3/s;

    invoke-virtual {v0}, Lokhttp3/s;->b()Lokhttp3/s$a;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa$a;->c:Lokhttp3/s$a;

    .line 118
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lokhttp3/aa$a;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lokhttp3/aa$a;->c:Lokhttp3/s$a;

    invoke-virtual {v0, p1}, Lokhttp3/s$a;->b(Ljava/lang/String;)Lokhttp3/s$a;

    .line 184
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aa$a;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lokhttp3/aa$a;->c:Lokhttp3/s$a;

    invoke-virtual {v0, p1, p2}, Lokhttp3/s$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/s$a;

    .line 166
    return-object p0
.end method

.method public a(Ljava/lang/String;Lokhttp3/ab;)Lokhttp3/aa$a;
    .locals 3
    .param p2    # Lokhttp3/ab;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 233
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lokhttp3/internal/b/f;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_2
    if-nez p2, :cond_3

    invoke-static {p1}, Lokhttp3/internal/b/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_3
    iput-object p1, p0, Lokhttp3/aa$a;->b:Ljava/lang/String;

    .line 242
    iput-object p2, p0, Lokhttp3/aa$a;->d:Lokhttp3/ab;

    .line 243
    return-object p0
.end method

.method public a(Lokhttp3/s;)Lokhttp3/aa$a;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p1}, Lokhttp3/s;->b()Lokhttp3/s$a;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa$a;->c:Lokhttp3/s$a;

    .line 190
    return-object p0
.end method

.method public a(Lokhttp3/t;)Lokhttp3/aa$a;
    .locals 2

    .prologue
    .line 121
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iput-object p1, p0, Lokhttp3/aa$a;->a:Lokhttp3/t;

    .line 123
    return-object p0
.end method

.method public a()Lokhttp3/aa;
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lokhttp3/aa$a;->a:Lokhttp3/t;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    new-instance v0, Lokhttp3/aa;

    invoke-direct {v0, p0}, Lokhttp3/aa;-><init>(Lokhttp3/aa$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aa$a;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lokhttp3/aa$a;->c:Lokhttp3/s$a;

    invoke-virtual {v0, p1, p2}, Lokhttp3/s$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/s$a;

    .line 178
    return-object p0
.end method
