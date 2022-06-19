.class final Lcom/google/common/collect/ap$a$1;
.super Lcom/google/common/collect/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ap$a;->h()Lcom/google/common/collect/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/v<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ap$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ap$a;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/google/common/collect/ap$a$1;->a:Lcom/google/common/collect/ap$a;

    invoke-direct {p0}, Lcom/google/common/collect/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 3

    .line 1297
    iget-object v0, p0, Lcom/google/common/collect/ap$a$1;->a:Lcom/google/common/collect/ap$a;

    invoke-static {v0}, Lcom/google/common/collect/ap$a;->a(Lcom/google/common/collect/ap$a;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/m;->a(II)I

    .line 1299
    iget-object v0, p0, Lcom/google/common/collect/ap$a$1;->a:Lcom/google/common/collect/ap$a;

    invoke-static {v0}, Lcom/google/common/collect/ap$a;->b(Lcom/google/common/collect/ap$a;)[Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Lcom/google/common/collect/ap$a$1;->a:Lcom/google/common/collect/ap$a;

    invoke-static {v1}, Lcom/google/common/collect/ap$a;->c(Lcom/google/common/collect/ap$a;)I

    move-result v1

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    .line 1301
    iget-object v1, p0, Lcom/google/common/collect/ap$a$1;->a:Lcom/google/common/collect/ap$a;

    invoke-static {v1}, Lcom/google/common/collect/ap$a;->b(Lcom/google/common/collect/ap$a;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ap$a$1;->a:Lcom/google/common/collect/ap$a;

    invoke-static {v2}, Lcom/google/common/collect/ap$a;->c(Lcom/google/common/collect/ap$a;)I

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr p1, v2

    aget-object p1, v1, p1

    .line 1302
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final size()I
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/google/common/collect/ap$a$1;->a:Lcom/google/common/collect/ap$a;

    invoke-static {v0}, Lcom/google/common/collect/ap$a;->a(Lcom/google/common/collect/ap$a;)I

    move-result v0

    return v0
.end method
