.class final Lcom/google/common/collect/ap$a;
.super Lcom/google/common/collect/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/z<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/google/common/collect/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/x<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient b:[Ljava/lang/Object;

.field private final transient c:I

.field private final transient d:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/x;[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x<",
            "TK;TV;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 275
    invoke-direct {p0}, Lcom/google/common/collect/z;-><init>()V

    .line 276
    iput-object p1, p0, Lcom/google/common/collect/ap$a;->a:Lcom/google/common/collect/x;

    .line 277
    iput-object p2, p0, Lcom/google/common/collect/ap$a;->b:[Ljava/lang/Object;

    .line 278
    iput p3, p0, Lcom/google/common/collect/ap$a;->c:I

    .line 279
    iput p4, p0, Lcom/google/common/collect/ap$a;->d:I

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/ap$a;)I
    .locals 0

    .line 269
    iget p0, p0, Lcom/google/common/collect/ap$a;->d:I

    return p0
.end method

.method static synthetic b(Lcom/google/common/collect/ap$a;)[Ljava/lang/Object;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/google/common/collect/ap$a;->b:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/google/common/collect/ap$a;)I
    .locals 0

    .line 269
    iget p0, p0, Lcom/google/common/collect/ap$a;->c:I

    return p0
.end method


# virtual methods
.method final a([Ljava/lang/Object;I)I
    .locals 1

    .line 289
    invoke-virtual {p0}, Lcom/google/common/collect/ap$a;->e()Lcom/google/common/collect/v;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/v;->a([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final a()Lcom/google/common/collect/ay;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ay<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Lcom/google/common/collect/ap$a;->e()Lcom/google/common/collect/v;

    move-result-object v0

    const/4 v1, 0x0

    .line 1358
    invoke-virtual {v0, v1}, Lcom/google/common/collect/v;->a(I)Lcom/google/common/collect/az;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .line 319
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 320
    check-cast p1, Ljava/util/Map$Entry;

    .line 321
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 322
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 323
    iget-object v2, p0, Lcom/google/common/collect/ap$a;->a:Lcom/google/common/collect/x;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final h()Lcom/google/common/collect/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/v<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 294
    new-instance v0, Lcom/google/common/collect/ap$a$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ap$a$1;-><init>(Lcom/google/common/collect/ap$a;)V

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/google/common/collect/ap$a;->a()Lcom/google/common/collect/ay;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 335
    iget v0, p0, Lcom/google/common/collect/ap$a;->d:I

    return v0
.end method
