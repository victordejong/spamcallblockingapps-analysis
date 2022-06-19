.class abstract Lcom/google/common/base/o$a;
.super Lcom/google/common/base/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final b:Ljava/lang/CharSequence;

.field final c:Lcom/google/common/base/c;

.field final d:Z

.field e:I

.field f:I


# direct methods
.method protected constructor <init>(Lcom/google/common/base/o;Ljava/lang/CharSequence;)V
    .locals 1

    .line 543
    invoke-direct {p0}, Lcom/google/common/base/a;-><init>()V

    const/4 v0, 0x0

    .line 540
    iput v0, p0, Lcom/google/common/base/o$a;->e:I

    .line 1100
    iget-object v0, p1, Lcom/google/common/base/o;->a:Lcom/google/common/base/c;

    .line 544
    iput-object v0, p0, Lcom/google/common/base/o$a;->c:Lcom/google/common/base/c;

    .line 2100
    iget-boolean v0, p1, Lcom/google/common/base/o;->b:Z

    .line 545
    iput-boolean v0, p0, Lcom/google/common/base/o$a;->d:Z

    .line 3100
    iget p1, p1, Lcom/google/common/base/o;->c:I

    .line 546
    iput p1, p0, Lcom/google/common/base/o$a;->f:I

    .line 547
    iput-object p2, p0, Lcom/google/common/base/o$a;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method abstract a(I)I
.end method

.method protected final synthetic a()Ljava/lang/Object;
    .locals 6

    .line 3557
    iget v0, p0, Lcom/google/common/base/o$a;->e:I

    .line 3558
    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/common/base/o$a;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 3562
    invoke-virtual {p0, v1}, Lcom/google/common/base/o$a;->a(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 3564
    iget-object v1, p0, Lcom/google/common/base/o$a;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3565
    iput v2, p0, Lcom/google/common/base/o$a;->e:I

    goto :goto_1

    .line 3568
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/common/base/o$a;->b(I)I

    move-result v3

    iput v3, p0, Lcom/google/common/base/o$a;->e:I

    .line 3570
    :goto_1
    iget v3, p0, Lcom/google/common/base/o$a;->e:I

    if-ne v3, v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 3577
    iput v3, p0, Lcom/google/common/base/o$a;->e:I

    .line 3578
    iget-object v1, p0, Lcom/google/common/base/o$a;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v3, v1, :cond_0

    .line 3579
    iput v2, p0, Lcom/google/common/base/o$a;->e:I

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v0, v1, :cond_3

    .line 3584
    iget-object v3, p0, Lcom/google/common/base/o$a;->c:Lcom/google/common/base/c;

    iget-object v4, p0, Lcom/google/common/base/o$a;->b:Ljava/lang/CharSequence;

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/c;->b(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-le v1, v0, :cond_4

    .line 3587
    iget-object v3, p0, Lcom/google/common/base/o$a;->c:Lcom/google/common/base/c;

    iget-object v4, p0, Lcom/google/common/base/o$a;->b:Ljava/lang/CharSequence;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/c;->b(C)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 3591
    :cond_4
    iget-boolean v3, p0, Lcom/google/common/base/o$a;->d:Z

    if-eqz v3, :cond_5

    if-ne v0, v1, :cond_5

    .line 3593
    iget v0, p0, Lcom/google/common/base/o$a;->e:I

    goto :goto_0

    .line 3597
    :cond_5
    iget v3, p0, Lcom/google/common/base/o$a;->f:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 3601
    iget-object v1, p0, Lcom/google/common/base/o$a;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3602
    iput v2, p0, Lcom/google/common/base/o$a;->e:I

    :goto_4
    if-le v1, v0, :cond_7

    .line 3604
    iget-object v2, p0, Lcom/google/common/base/o$a;->c:Lcom/google/common/base/c;

    iget-object v3, p0, Lcom/google/common/base/o$a;->b:Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/c;->b(C)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_6
    sub-int/2addr v3, v4

    .line 3608
    iput v3, p0, Lcom/google/common/base/o$a;->f:I

    .line 3611
    :cond_7
    iget-object v2, p0, Lcom/google/common/base/o$a;->b:Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3613
    :cond_8
    invoke-virtual {p0}, Lcom/google/common/base/o$a;->b()Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method abstract b(I)I
.end method
