.class public final Lcom/google/android/exoplayer2/extractor/h/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h/j;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/h/ad$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[Lcom/google/android/exoplayer2/extractor/x;

.field private c:Z

.field private d:I

.field private e:I

.field private f:J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/h/ad$a;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/i;->a:Ljava/util/List;

    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/exoplayer2/extractor/x;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/i;->b:[Lcom/google/android/exoplayer2/extractor/x;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/util/u;I)Z
    .locals 2

    .line 117
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result p1

    if-eq p1, p2, :cond_1

    .line 121
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/h/i;->c:Z

    .line 123
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/h/i;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/i;->d:I

    .line 124
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/h/i;->c:Z

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/i;->c:Z

    return-void
.end method

.method public final a(JI)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 79
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/h/i;->c:Z

    .line 80
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/h/i;->f:J

    const/4 p1, 0x0

    .line 81
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/i;->e:I

    const/4 p1, 0x2

    .line 82
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/i;->d:I

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V
    .locals 5

    const/4 v0, 0x0

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/i;->b:[Lcom/google/android/exoplayer2/extractor/x;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/i;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/h/ad$a;

    .line 61
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->a()V

    .line 62
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->b()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object v2

    .line 63
    new-instance v3, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 65
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->c()Ljava/lang/String;

    move-result-object v4

    .line 1244
    iput-object v4, v3, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    const-string v4, "application/dvbsubs"

    .line 1370
    iput-object v4, v3, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 66
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/h/ad$a;->c:[B

    .line 67
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 1392
    iput-object v4, v3, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 67
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/h/ad$a;->a:Ljava/lang/String;

    .line 2278
    iput-object v1, v3, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 69
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 63
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 70
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/i;->b:[Lcom/google/android/exoplayer2/extractor/x;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/u;)V
    .locals 6

    .line 97
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/i;->c:Z

    if-eqz v0, :cond_3

    .line 98
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/h/i;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/h/i;->a(Lcom/google/android/exoplayer2/util/u;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/h/i;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/extractor/h/i;->a(Lcom/google/android/exoplayer2/util/u;I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3144
    :cond_1
    iget v0, p1, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 107
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v2

    .line 108
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/h/i;->b:[Lcom/google/android/exoplayer2/extractor/x;

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 109
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 110
    invoke-interface {v5, p1, v2}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_2
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/h/i;->e:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/i;->e:I

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 11

    .line 87
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/i;->c:Z

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/i;->b:[Lcom/google/android/exoplayer2/extractor/x;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 89
    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/h/i;->f:J

    const/4 v7, 0x1

    iget v8, p0, Lcom/google/android/exoplayer2/extractor/h/i;->e:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/h/i;->c:Z

    :cond_1
    return-void
.end method
