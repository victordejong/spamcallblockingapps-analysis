.class public final Lcom/google/android/exoplayer2/extractor/h/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[Lcom/google/android/exoplayer2/extractor/x;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/z;->a:Ljava/util/List;

    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/exoplayer2/extractor/x;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/z;->b:[Lcom/google/android/exoplayer2/extractor/x;

    return-void
.end method


# virtual methods
.method public final a(JLcom/google/android/exoplayer2/util/u;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/z;->b:[Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/exoplayer2/extractor/b;->a(JLcom/google/android/exoplayer2/util/u;[Lcom/google/android/exoplayer2/extractor/x;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/z;->b:[Lcom/google/android/exoplayer2/extractor/x;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 46
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->a()V

    .line 47
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->b()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object v2

    .line 48
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/h/z;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/Format;

    .line 49
    iget-object v4, v3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v5, "application/cea-608"

    .line 50
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "application/cea-708"

    .line 51
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Invalid closed caption mime type provided: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 50
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/a;->a(ZLjava/lang/Object;)V

    .line 53
    iget-object v5, v3, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v3, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->c()Ljava/lang/String;

    move-result-object v5

    .line 54
    :goto_3
    new-instance v6, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 1244
    iput-object v5, v6, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    .line 1370
    iput-object v4, v6, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 57
    iget v4, v3, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    .line 2289
    iput v4, v6, Lcom/google/android/exoplayer2/Format$a;->d:I

    .line 58
    iget-object v4, v3, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 3278
    iput-object v4, v6, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 59
    iget v4, v3, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    .line 3574
    iput v4, v6, Lcom/google/android/exoplayer2/Format$a;->C:I

    .line 60
    iget-object v3, v3, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 4392
    iput-object v3, v6, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 62
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 54
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 63
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/h/z;->b:[Lcom/google/android/exoplayer2/extractor/x;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
