.class abstract Lcom/google/common/collect/t$a;
.super Lcom/google/common/collect/t$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/t$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field a:[Ljava/lang/Object;

.field b:I

.field c:Z


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 456
    invoke-direct {p0}, Lcom/google/common/collect/t$b;-><init>()V

    const-string v0, "initialCapacity"

    .line 457
    invoke-static {p1, v0}, Lcom/google/common/collect/i;->a(ILjava/lang/String;)I

    .line 458
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/t$a;->a:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 459
    iput p1, p0, Lcom/google/common/collect/t$a;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/google/common/collect/t$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/t$a<",
            "TE;>;"
        }
    .end annotation

    .line 481
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget v0, p0, Lcom/google/common/collect/t$a;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 1468
    iget-object v1, p0, Lcom/google/common/collect/t$a;->a:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    .line 1469
    array-length v2, v1

    .line 1470
    invoke-static {v2, v0}, Lcom/google/common/collect/t$a;->a(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/t$a;->a:[Ljava/lang/Object;

    .line 1471
    iput-boolean v3, p0, Lcom/google/common/collect/t$a;->c:Z

    goto :goto_0

    .line 1472
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/collect/t$a;->c:Z

    if-eqz v0, :cond_1

    .line 1473
    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/t$a;->a:[Ljava/lang/Object;

    .line 1474
    iput-boolean v3, p0, Lcom/google/common/collect/t$a;->c:Z

    .line 483
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/t$a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/t$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/t$a;->b:I

    aput-object p1, v0, v1

    return-object p0
.end method
