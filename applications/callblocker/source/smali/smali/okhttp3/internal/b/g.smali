.class public final Lokhttp3/internal/b/g;
.super Ljava/lang/Object;
.source "RealInterceptorChain.java"

# interfaces
.implements Lokhttp3/u$a;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/u;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lokhttp3/internal/connection/f;

.field private final c:Lokhttp3/internal/b/c;

.field private final d:Lokhttp3/internal/connection/c;

.field private final e:I

.field private final f:Lokhttp3/aa;

.field private final g:Lokhttp3/e;

.field private final h:Lokhttp3/p;

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lokhttp3/internal/connection/f;Lokhttp3/internal/b/c;Lokhttp3/internal/connection/c;ILokhttp3/aa;Lokhttp3/e;Lokhttp3/p;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/u;",
            ">;",
            "Lokhttp3/internal/connection/f;",
            "Lokhttp3/internal/b/c;",
            "Lokhttp3/internal/connection/c;",
            "I",
            "Lokhttp3/aa;",
            "Lokhttp3/e;",
            "Lokhttp3/p;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lokhttp3/internal/b/g;->a:Ljava/util/List;

    .line 54
    iput-object p4, p0, Lokhttp3/internal/b/g;->d:Lokhttp3/internal/connection/c;

    .line 55
    iput-object p2, p0, Lokhttp3/internal/b/g;->b:Lokhttp3/internal/connection/f;

    .line 56
    iput-object p3, p0, Lokhttp3/internal/b/g;->c:Lokhttp3/internal/b/c;

    .line 57
    iput p5, p0, Lokhttp3/internal/b/g;->e:I

    .line 58
    iput-object p6, p0, Lokhttp3/internal/b/g;->f:Lokhttp3/aa;

    .line 59
    iput-object p7, p0, Lokhttp3/internal/b/g;->g:Lokhttp3/e;

    .line 60
    iput-object p8, p0, Lokhttp3/internal/b/g;->h:Lokhttp3/p;

    .line 61
    iput p9, p0, Lokhttp3/internal/b/g;->i:I

    .line 62
    iput p10, p0, Lokhttp3/internal/b/g;->j:I

    .line 63
    iput p11, p0, Lokhttp3/internal/b/g;->k:I

    .line 64
    return-void
.end method


# virtual methods
.method public a()Lokhttp3/aa;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lokhttp3/internal/b/g;->f:Lokhttp3/aa;

    return-object v0
.end method

.method public a(Lokhttp3/aa;)Lokhttp3/ac;
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lokhttp3/internal/b/g;->b:Lokhttp3/internal/connection/f;

    iget-object v1, p0, Lokhttp3/internal/b/g;->c:Lokhttp3/internal/b/c;

    iget-object v2, p0, Lokhttp3/internal/b/g;->d:Lokhttp3/internal/connection/c;

    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp3/internal/b/g;->a(Lokhttp3/aa;Lokhttp3/internal/connection/f;Lokhttp3/internal/b/c;Lokhttp3/internal/connection/c;)Lokhttp3/ac;

    move-result-object v0

    return-object v0
.end method

.method public a(Lokhttp3/aa;Lokhttp3/internal/connection/f;Lokhttp3/internal/b/c;Lokhttp3/internal/connection/c;)Lokhttp3/ac;
    .locals 12

    .prologue
    .line 126
    iget v0, p0, Lokhttp3/internal/b/g;->e:I

    iget-object v1, p0, Lokhttp3/internal/b/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 128
    :cond_0
    iget v0, p0, Lokhttp3/internal/b/g;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/b/g;->l:I

    .line 131
    iget-object v0, p0, Lokhttp3/internal/b/g;->c:Lokhttp3/internal/b/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/b/g;->d:Lokhttp3/internal/connection/c;

    invoke-virtual {p1}, Lokhttp3/aa;->a()Lokhttp3/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/internal/connection/c;->a(Lokhttp3/t;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "network interceptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/b/g;->a:Ljava/util/List;

    iget v3, p0, Lokhttp3/internal/b/g;->e:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must retain the same host and port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/b/g;->c:Lokhttp3/internal/b/c;

    if-eqz v0, :cond_2

    iget v0, p0, Lokhttp3/internal/b/g;->l:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "network interceptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/b/g;->a:Ljava/util/List;

    iget v3, p0, Lokhttp3/internal/b/g;->e:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must call proceed() exactly once"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_2
    new-instance v0, Lokhttp3/internal/b/g;

    iget-object v1, p0, Lokhttp3/internal/b/g;->a:Ljava/util/List;

    iget v2, p0, Lokhttp3/internal/b/g;->e:I

    add-int/lit8 v5, v2, 0x1

    iget-object v7, p0, Lokhttp3/internal/b/g;->g:Lokhttp3/e;

    iget-object v8, p0, Lokhttp3/internal/b/g;->h:Lokhttp3/p;

    iget v9, p0, Lokhttp3/internal/b/g;->i:I

    iget v10, p0, Lokhttp3/internal/b/g;->j:I

    iget v11, p0, Lokhttp3/internal/b/g;->k:I

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v11}, Lokhttp3/internal/b/g;-><init>(Ljava/util/List;Lokhttp3/internal/connection/f;Lokhttp3/internal/b/c;Lokhttp3/internal/connection/c;ILokhttp3/aa;Lokhttp3/e;Lokhttp3/p;III)V

    .line 146
    iget-object v1, p0, Lokhttp3/internal/b/g;->a:Ljava/util/List;

    iget v2, p0, Lokhttp3/internal/b/g;->e:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/u;

    .line 147
    invoke-interface {v1, v0}, Lokhttp3/u;->a(Lokhttp3/u$a;)Lokhttp3/ac;

    move-result-object v2

    .line 150
    if-eqz p3, :cond_3

    iget v3, p0, Lokhttp3/internal/b/g;->e:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lokhttp3/internal/b/g;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget v0, v0, Lokhttp3/internal/b/g;->l:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must call proceed() exactly once"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_3
    if-nez v2, :cond_4

    .line 157
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " returned null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_4
    invoke-virtual {v2}, Lokhttp3/ac;->f()Lokhttp3/ad;

    move-result-object v0

    if-nez v0, :cond_5

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " returned a response with no body"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_5
    return-object v2
.end method

.method public b()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lokhttp3/internal/b/g;->i:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lokhttp3/internal/b/g;->j:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lokhttp3/internal/b/g;->k:I

    return v0
.end method

.method public e()Lokhttp3/i;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lokhttp3/internal/b/g;->d:Lokhttp3/internal/connection/c;

    return-object v0
.end method

.method public f()Lokhttp3/internal/connection/f;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lokhttp3/internal/b/g;->b:Lokhttp3/internal/connection/f;

    return-object v0
.end method

.method public g()Lokhttp3/internal/b/c;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lokhttp3/internal/b/g;->c:Lokhttp3/internal/b/c;

    return-object v0
.end method

.method public h()Lokhttp3/e;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lokhttp3/internal/b/g;->g:Lokhttp3/e;

    return-object v0
.end method

.method public i()Lokhttp3/p;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lokhttp3/internal/b/g;->h:Lokhttp3/p;

    return-object v0
.end method
