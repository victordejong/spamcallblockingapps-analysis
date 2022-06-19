.class final Lcom/google/android/exoplayer2/extractor/h/ac$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/h/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/extractor/h/ac;

.field private final b:Lcom/google/android/exoplayer2/util/t;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/h/ac;)V
    .locals 1

    .line 487
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac$a;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    new-instance p1, Lcom/google/android/exoplayer2/util/t;

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/t;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac$a;->b:Lcom/google/android/exoplayer2/util/t;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/util/ad;Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/u;)V
    .locals 9

    .line 499
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 505
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x6

    .line 512
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 514
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 516
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/ac$a;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {p1, v4, v1}, Lcom/google/android/exoplayer2/util/u;->a(Lcom/google/android/exoplayer2/util/t;I)V

    .line 517
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/ac$a;->b:Lcom/google/android/exoplayer2/util/t;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v4

    .line 518
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/h/ac$a;->b:Lcom/google/android/exoplayer2/util/t;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    const/16 v5, 0xd

    if-nez v4, :cond_2

    .line 520
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/ac$a;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    goto :goto_1

    .line 522
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/ac$a;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v4

    .line 523
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/h/ac$a;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/h/ac;->a(Lcom/google/android/exoplayer2/extractor/h/ac;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 524
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/h/ac$a;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/h/ac;->a(Lcom/google/android/exoplayer2/extractor/h/ac;)Landroid/util/SparseArray;

    move-result-object v5

    new-instance v6, Lcom/google/android/exoplayer2/extractor/h/y;

    new-instance v7, Lcom/google/android/exoplayer2/extractor/h/ac$b;

    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/h/ac$a;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-direct {v7, v8, v4}, Lcom/google/android/exoplayer2/extractor/h/ac$b;-><init>(Lcom/google/android/exoplayer2/extractor/h/ac;I)V

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/extractor/h/y;-><init>(Lcom/google/android/exoplayer2/extractor/h/x;)V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 525
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/ac$a;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/h/ac;->b(Lcom/google/android/exoplayer2/extractor/h/ac;)I

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 529
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac$a;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/h/ac;->c(Lcom/google/android/exoplayer2/extractor/h/ac;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    .line 530
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac$a;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/h/ac;->a(Lcom/google/android/exoplayer2/extractor/h/ac;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_5
    return-void
.end method
