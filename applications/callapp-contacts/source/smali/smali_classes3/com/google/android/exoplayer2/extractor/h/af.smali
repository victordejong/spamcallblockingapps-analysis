.class final Lcom/google/android/exoplayer2/extractor/h/af;
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

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/af;->a:Ljava/util/List;

    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/exoplayer2/extractor/x;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/af;->b:[Lcom/google/android/exoplayer2/extractor/x;

    return-void
.end method


# virtual methods
.method public final a(JLcom/google/android/exoplayer2/util/u;)V
    .locals 4

    .line 67
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v0

    .line 71
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v1

    .line 72
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v2

    const/16 v3, 0x1b2

    if-ne v0, v3, :cond_1

    const v0, 0x47413934

    if-ne v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v2, v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/af;->b:[Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/exoplayer2/extractor/b;->b(JLcom/google/android/exoplayer2/util/u;[Lcom/google/android/exoplayer2/extractor/x;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/af;->b:[Lcom/google/android/exoplayer2/extractor/x;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 45
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->a()V

    .line 46
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->b()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object v2

    .line 47
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/h/af;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/Format;

    .line 48
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

    .line 49
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/a;->a(ZLjava/lang/Object;)V

    .line 53
    new-instance v5, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 55
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->c()Ljava/lang/String;

    move-result-object v6

    .line 1244
    iput-object v6, v5, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    .line 1370
    iput-object v4, v5, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 56
    iget v4, v3, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    .line 2289
    iput v4, v5, Lcom/google/android/exoplayer2/Format$a;->d:I

    .line 57
    iget-object v4, v3, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 3278
    iput-object v4, v5, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 58
    iget v4, v3, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    .line 3574
    iput v4, v5, Lcom/google/android/exoplayer2/Format$a;->C:I

    .line 59
    iget-object v3, v3, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 4392
    iput-object v3, v5, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 61
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 53
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 62
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/h/af;->b:[Lcom/google/android/exoplayer2/extractor/x;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
