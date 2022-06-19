.class public final Lcom/google/common/collect/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:Lcom/google/common/collect/ae$n;

.field e:Lcom/google/common/collect/ae$n;

.field f:Lcom/google/common/base/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/google/common/collect/ad;->b:I

    .line 99
    iput v0, p0, Lcom/google/common/collect/ad;->c:I

    return-void
.end method


# virtual methods
.method final a()I
    .locals 2

    .line 154
    iget v0, p0, Lcom/google/common/collect/ad;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :cond_0
    return v0
.end method

.method public final a(Lcom/google/common/collect/ae$n;)Lcom/google/common/collect/ad;
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/google/common/collect/ad;->d:Lcom/google/common/collect/ae$n;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Key strength was already set to %s"

    invoke-static {v2, v3, v0}, Lcom/google/common/base/m;->b(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 210
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ae$n;

    iput-object v0, p0, Lcom/google/common/collect/ad;->d:Lcom/google/common/collect/ae$n;

    .line 211
    sget-object v0, Lcom/google/common/collect/ae$n;->STRONG:Lcom/google/common/collect/ae$n;

    if-eq p1, v0, :cond_1

    .line 213
    iput-boolean v1, p0, Lcom/google/common/collect/ad;->a:Z

    :cond_1
    return-object p0
.end method

.method final b()I
    .locals 2

    .line 188
    iget v0, p0, Lcom/google/common/collect/ad;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    return v0
.end method

.method final c()Lcom/google/common/collect/ae$n;
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/google/common/collect/ad;->d:Lcom/google/common/collect/ae$n;

    sget-object v1, Lcom/google/common/collect/ae$n;->STRONG:Lcom/google/common/collect/ae$n;

    invoke-static {v0, v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ae$n;

    return-object v0
.end method

.method final d()Lcom/google/common/collect/ae$n;
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/google/common/collect/ad;->e:Lcom/google/common/collect/ae$n;

    sget-object v1, Lcom/google/common/collect/ae$n;->STRONG:Lcom/google/common/collect/ae$n;

    invoke-static {v0, v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ae$n;

    return-object v0
.end method

.method public final e()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 280
    iget-boolean v0, p0, Lcom/google/common/collect/ad;->a:Z

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/google/common/collect/ad;->a()I

    move-result v1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {p0}, Lcom/google/common/collect/ad;->b()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-object v0

    .line 283
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/ae;->a(Lcom/google/common/collect/ad;)Lcom/google/common/collect/ae;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1108
    new-instance v0, Lcom/google/common/base/i$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/i$a;-><init>(Ljava/lang/String;Lcom/google/common/base/i$1;)V

    .line 293
    iget v1, p0, Lcom/google/common/collect/ad;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v3, "initialCapacity"

    .line 294
    invoke-virtual {v0, v3, v1}, Lcom/google/common/base/i$a;->a(Ljava/lang/String;I)Lcom/google/common/base/i$a;

    .line 296
    :cond_0
    iget v1, p0, Lcom/google/common/collect/ad;->c:I

    if-eq v1, v2, :cond_1

    const-string v2, "concurrencyLevel"

    .line 297
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/i$a;->a(Ljava/lang/String;I)Lcom/google/common/base/i$a;

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/ad;->d:Lcom/google/common/collect/ae$n;

    if-eqz v1, :cond_2

    .line 300
    invoke-virtual {v1}, Lcom/google/common/collect/ae$n;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyStrength"

    .line 1174
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/i$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/i$a;

    .line 302
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/ad;->e:Lcom/google/common/collect/ae$n;

    if-eqz v1, :cond_3

    .line 303
    invoke-virtual {v1}, Lcom/google/common/collect/ae$n;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "valueStrength"

    .line 2174
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/i$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/i$a;

    .line 305
    :cond_3
    iget-object v1, p0, Lcom/google/common/collect/ad;->f:Lcom/google/common/base/e;

    if-eqz v1, :cond_4

    .line 2370
    invoke-virtual {v0}, Lcom/google/common/base/i$a;->a()Lcom/google/common/base/i$a$a;

    move-result-object v1

    const-string v2, "keyEquivalence"

    .line 2371
    iput-object v2, v1, Lcom/google/common/base/i$a$a;->b:Ljava/lang/Object;

    .line 308
    :cond_4
    invoke-virtual {v0}, Lcom/google/common/base/i$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
