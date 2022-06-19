.class public final Lkl1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkl1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lwk1;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Lwk1;

.field public f:I

.field public final synthetic g:Lkl1;


# direct methods
.method public constructor <init>(Lkl1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lkl1$a;->g:Lkl1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lkl1$a;->a:I

    invoke-static {p1}, Lkl1;->d(Lkl1;)I

    move-result v0

    invoke-static {p1}, Lkl1;->b(Lkl1;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lzk1;->c(III)I

    move-result p1

    iput p1, p0, Lkl1$a;->b:I

    iput p1, p0, Lkl1$a;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget v0, p0, Lkl1$a;->c:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, Lkl1$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lkl1$a;->d:Lwk1;

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lkl1$a;->g:Lkl1;

    invoke-static {v0}, Lkl1;->c(Lkl1;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_1

    iget v0, p0, Lkl1$a;->f:I

    add-int/2addr v0, v3

    iput v0, p0, Lkl1$a;->f:I

    iget-object v4, p0, Lkl1$a;->g:Lkl1;

    invoke-static {v4}, Lkl1;->c(Lkl1;)I

    move-result v4

    if-ge v0, v4, :cond_2

    :cond_1
    iget v0, p0, Lkl1$a;->c:I

    iget-object v4, p0, Lkl1$a;->g:Lkl1;

    invoke-static {v4}, Lkl1;->b(Lkl1;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v0, v4, :cond_3

    :cond_2
    iget v0, p0, Lkl1$a;->b:I

    new-instance v1, Lwk1;

    iget-object v4, p0, Lkl1$a;->g:Lkl1;

    invoke-static {v4}, Lkl1;->b(Lkl1;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ltl1;->h(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lwk1;-><init>(II)V

    :goto_0
    iput-object v1, p0, Lkl1$a;->d:Lwk1;

    :goto_1
    iput v2, p0, Lkl1$a;->c:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lkl1$a;->g:Lkl1;

    invoke-static {v0}, Lkl1;->a(Lkl1;)Lkk1;

    move-result-object v0

    iget-object v4, p0, Lkl1$a;->g:Lkl1;

    invoke-static {v4}, Lkl1;->b(Lkl1;)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lkl1$a;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lkk1;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkj1;

    if-nez v0, :cond_4

    iget v0, p0, Lkl1$a;->b:I

    new-instance v1, Lwk1;

    iget-object v4, p0, Lkl1$a;->g:Lkl1;

    invoke-static {v4}, Lkl1;->b(Lkl1;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ltl1;->h(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lwk1;-><init>(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lkj1;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lkj1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v4, p0, Lkl1$a;->b:I

    invoke-static {v4, v2}, Lzk1;->e(II)Lwk1;

    move-result-object v4

    iput-object v4, p0, Lkl1$a;->d:Lwk1;

    add-int/2addr v2, v0

    iput v2, p0, Lkl1$a;->b:I

    if-nez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/2addr v2, v1

    goto :goto_1

    :goto_2
    iput v3, p0, Lkl1$a;->a:I

    :goto_3
    return-void
.end method

.method public b()Lwk1;
    .locals 3

    iget v0, p0, Lkl1$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkl1$a;->a()V

    :cond_0
    iget v0, p0, Lkl1$a;->a:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkl1$a;->d:Lwk1;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Lkl1$a;->d:Lwk1;

    iput v1, p0, Lkl1$a;->a:I

    return-object v0

    :cond_1
    new-instance v0, Lmj1;

    const-string v1, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-direct {v0, v1}, Lmj1;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lkl1$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkl1$a;->a()V

    :cond_0
    iget v0, p0, Lkl1$a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkl1$a;->b()Lwk1;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
