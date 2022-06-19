.class final Lcom/google/android/exoplayer2/text/g/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:J

.field public final e:J

.field public final f:Lcom/google/android/exoplayer2/text/g/g;

.field final g:[Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Lcom/google/android/exoplayer2/text/g/d;

.field private final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/g/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/exoplayer2/text/g/g;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/text/g/d;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/g/d;->a:Ljava/lang/String;

    .line 175
    iput-object p2, p0, Lcom/google/android/exoplayer2/text/g/d;->b:Ljava/lang/String;

    .line 176
    iput-object p10, p0, Lcom/google/android/exoplayer2/text/g/d;->i:Ljava/lang/String;

    .line 177
    iput-object p7, p0, Lcom/google/android/exoplayer2/text/g/d;->f:Lcom/google/android/exoplayer2/text/g/g;

    .line 178
    iput-object p8, p0, Lcom/google/android/exoplayer2/text/g/d;->g:[Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 179
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/g/d;->c:Z

    .line 180
    iput-wide p3, p0, Lcom/google/android/exoplayer2/text/g/d;->d:J

    .line 181
    iput-wide p5, p0, Lcom/google/android/exoplayer2/text/g/d;->e:J

    .line 182
    invoke-static {p9}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/g/d;->h:Ljava/lang/String;

    .line 183
    iput-object p11, p0, Lcom/google/android/exoplayer2/text/g/d;->j:Lcom/google/android/exoplayer2/text/g/d;

    .line 184
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/g/d;->k:Ljava/util/HashMap;

    .line 185
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/g/d;->l:Ljava/util/HashMap;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/b$a;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .line 360
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Lcom/google/android/exoplayer2/text/b$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/b$a;-><init>()V

    .line 362
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 3539
    iput-object v1, v0, Lcom/google/android/exoplayer2/text/b$a;->a:Ljava/lang/CharSequence;

    .line 363
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/text/b$a;

    .line 3550
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/b$a;->a:Ljava/lang/CharSequence;

    .line 366
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method static a(Landroid/text/SpannableStringBuilder;)V
    .locals 7

    .line 429
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, Lcom/google/android/exoplayer2/text/g/a;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/text/g/a;

    .line 430
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 431
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    const-string v6, ""

    invoke-virtual {p0, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 434
    :goto_1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v3, 0x20

    if-ge v0, v1, :cond_3

    .line 435
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2

    add-int/lit8 v1, v0, 0x1

    move v4, v1

    .line 437
    :goto_2
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    sub-int/2addr v4, v1

    if-lez v4, :cond_2

    add-int/2addr v4, v0

    .line 442
    invoke-virtual {p0, v0, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 447
    :cond_3
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_4

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_4

    .line 448
    invoke-virtual {p0, v2, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_4
    const/4 v0, 0x0

    .line 450
    :goto_3
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v1

    const/16 v5, 0xa

    if-ge v0, v4, :cond_6

    .line 451
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_5

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_5

    add-int/lit8 v5, v0, 0x2

    .line 452
    invoke-virtual {p0, v4, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 456
    :cond_6
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_7

    .line 457
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 459
    :cond_7
    :goto_4
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    if-ge v2, v0, :cond_9

    .line 460
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_8

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_8

    .line 461
    invoke-virtual {p0, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 465
    :cond_9
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_a

    .line 466
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_a
    return-void
.end method

.method private a(Ljava/util/TreeSet;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g/d;->a:Ljava/lang/String;

    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 226
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/g/d;->a:Ljava/lang/String;

    const-string v2, "div"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez p2, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    .line 227
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/g/d;->i:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 228
    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/text/g/d;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 229
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_1
    iget-wide v1, p0, Lcom/google/android/exoplayer2/text/g/d;->e:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 232
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/g/d;->m:Ljava/util/List;

    if-nez v1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 238
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/g/d;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 239
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/g/d;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/g/d;

    if-nez p2, :cond_5

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v4, 0x1

    :goto_2
    invoke-direct {v3, p1, v4}, Lcom/google/android/exoplayer2/text/g/d;->a(Ljava/util/TreeSet;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private a(J)Z
    .locals 7

    .line 189
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/g/d;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/text/g/d;->e:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    :cond_0
    cmp-long v4, v0, p1

    if-gtz v4, :cond_1

    iget-wide v4, p0, Lcom/google/android/exoplayer2/text/g/d;->e:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    :cond_1
    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/text/g/d;->e:J

    cmp-long v4, p1, v2

    if-ltz v4, :cond_3

    :cond_2
    cmp-long v2, v0, p1

    if-gtz v2, :cond_4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/g/d;->e:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_4

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g/d;->m:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)Lcom/google/android/exoplayer2/text/g/d;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g/d;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/text/g/d;

    return-object p1

    .line 204
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method final a(JLjava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g/d;->h:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/g/d;->h:Ljava/lang/String;

    .line 308
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/text/g/d;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g/d;->a:Ljava/lang/String;

    const-string v1, "div"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g/d;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 309
    new-instance p1, Landroid/util/Pair;

    iget-object p2, p0, Lcom/google/android/exoplayer2/text/g/d;->i:Ljava/lang/String;

    invoke-direct {p1, p3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 312
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/g/d;->a()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 313
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/g/d;->a(I)Lcom/google/android/exoplayer2/text/g/d;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/text/g/d;->a(JLjava/lang/String;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method final a(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/g/g;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/g/e;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/b$a;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p3

    .line 375
    invoke-direct/range {p0 .. p2}, Lcom/google/android/exoplayer2/text/g/d;->a(J)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 378
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/g/d;->h:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v9, p5

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/g/d;->h:Ljava/lang/String;

    move-object v9, v1

    .line 380
    :goto_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/g/d;->l:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 381
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 382
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/g/d;->k:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/google/android/exoplayer2/text/g/d;->k:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 383
    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v5, v2, :cond_1f

    move-object/from16 v10, p6

    .line 385
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/text/b$a;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/text/b$a;

    move-object/from16 v11, p4

    .line 387
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/text/g/e;

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/text/g/e;

    iget v6, v6, Lcom/google/android/exoplayer2/text/g/e;->j:I

    .line 4403
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/g/d;->f:Lcom/google/android/exoplayer2/text/g/g;

    iget-object v12, v0, Lcom/google/android/exoplayer2/text/g/d;->g:[Ljava/lang/String;

    invoke-static {v7, v12, v8}, Lcom/google/android/exoplayer2/text/g/f;->a(Lcom/google/android/exoplayer2/text/g/g;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object v7

    .line 4550
    iget-object v12, v4, Lcom/google/android/exoplayer2/text/b$a;->a:Ljava/lang/CharSequence;

    .line 4404
    check-cast v12, Landroid/text/SpannableStringBuilder;

    if-nez v12, :cond_3

    .line 4406
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 5539
    iput-object v12, v4, Lcom/google/android/exoplayer2/text/b$a;->a:Ljava/lang/CharSequence;

    :cond_3
    if-eqz v7, :cond_20

    .line 4410
    iget-object v13, v0, Lcom/google/android/exoplayer2/text/g/d;->j:Lcom/google/android/exoplayer2/text/g/d;

    .line 6094
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/text/g/g;->a()I

    move-result v14

    const/4 v15, -0x1

    const/16 v3, 0x21

    if-eq v14, v15, :cond_4

    .line 6095
    new-instance v14, Landroid/text/style/StyleSpan;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/text/g/g;->a()I

    move-result v15

    invoke-direct {v14, v15}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v12, v14, v5, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 7120
    :cond_4
    iget v14, v7, Lcom/google/android/exoplayer2/text/g/g;->f:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    const/4 v14, 0x1

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    :goto_3
    if-eqz v14, :cond_6

    .line 6099
    new-instance v14, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v14}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-interface {v12, v14, v5, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 7129
    :cond_6
    iget v14, v7, Lcom/google/android/exoplayer2/text/g/g;->g:I

    if-ne v14, v15, :cond_7

    const/4 v14, 0x1

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    :goto_4
    if-eqz v14, :cond_8

    .line 6102
    new-instance v14, Landroid/text/style/UnderlineSpan;

    invoke-direct {v14}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {v12, v14, v5, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 7171
    :cond_8
    iget-boolean v14, v7, Lcom/google/android/exoplayer2/text/g/g;->c:Z

    if-eqz v14, :cond_a

    .line 6105
    new-instance v14, Landroid/text/style/ForegroundColorSpan;

    .line 8158
    iget-boolean v3, v7, Lcom/google/android/exoplayer2/text/g/g;->c:Z

    if-eqz v3, :cond_9

    .line 8161
    iget v3, v7, Lcom/google/android/exoplayer2/text/g/g;->b:I

    .line 6107
    invoke-direct {v14, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 6105
    invoke-static {v12, v14, v5, v2}, Lcom/google/android/exoplayer2/text/d/c;->a(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto :goto_5

    .line 8159
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Font color has not been defined."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8188
    :cond_a
    :goto_5
    iget-boolean v3, v7, Lcom/google/android/exoplayer2/text/g/g;->e:Z

    if-eqz v3, :cond_c

    .line 6113
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    .line 9175
    iget-boolean v14, v7, Lcom/google/android/exoplayer2/text/g/g;->e:Z

    if-eqz v14, :cond_b

    .line 9178
    iget v14, v7, Lcom/google/android/exoplayer2/text/g/g;->d:I

    .line 6115
    invoke-direct {v3, v14}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 6113
    invoke-static {v12, v3, v5, v2}, Lcom/google/android/exoplayer2/text/d/c;->a(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto :goto_6

    .line 9176
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Background color has not been defined."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10149
    :cond_c
    :goto_6
    iget-object v3, v7, Lcom/google/android/exoplayer2/text/g/g;->a:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 6121
    new-instance v3, Landroid/text/style/TypefaceSpan;

    .line 11149
    iget-object v14, v7, Lcom/google/android/exoplayer2/text/g/g;->a:Ljava/lang/String;

    .line 6123
    invoke-direct {v3, v14}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 6121
    invoke-static {v12, v3, v5, v2}, Lcom/google/android/exoplayer2/text/d/c;->a(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 11323
    :cond_d
    iget-object v3, v7, Lcom/google/android/exoplayer2/text/g/g;->q:Lcom/google/android/exoplayer2/text/g/b;

    const/4 v14, 0x2

    if-eqz v3, :cond_12

    .line 12323
    iget-object v3, v7, Lcom/google/android/exoplayer2/text/g/g;->q:Lcom/google/android/exoplayer2/text/g/b;

    .line 6129
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/g/b;

    .line 6132
    iget v15, v3, Lcom/google/android/exoplayer2/text/g/b;->a:I

    move-object/from16 v16, v1

    const/4 v1, -0x1

    if-ne v15, v1, :cond_10

    if-eq v6, v14, :cond_f

    const/4 v15, 0x1

    if-ne v6, v15, :cond_e

    goto :goto_7

    :cond_e
    const/4 v6, 0x1

    goto :goto_8

    :cond_f
    :goto_7
    const/4 v6, 0x3

    :goto_8
    const/4 v15, 0x1

    goto :goto_9

    .line 6142
    :cond_10
    iget v6, v3, Lcom/google/android/exoplayer2/text/g/b;->a:I

    .line 6143
    iget v15, v3, Lcom/google/android/exoplayer2/text/g/b;->b:I

    .line 6147
    :goto_9
    iget v1, v3, Lcom/google/android/exoplayer2/text/g/b;->c:I

    const/4 v14, -0x2

    if-ne v1, v14, :cond_11

    const/4 v1, 0x1

    goto :goto_a

    .line 6152
    :cond_11
    iget v1, v3, Lcom/google/android/exoplayer2/text/g/b;->c:I

    .line 6155
    :goto_a
    new-instance v3, Lcom/google/android/exoplayer2/text/d/d;

    invoke-direct {v3, v6, v15, v1}, Lcom/google/android/exoplayer2/text/d/d;-><init>(III)V

    invoke-static {v12, v3, v5, v2}, Lcom/google/android/exoplayer2/text/d/c;->a(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto :goto_b

    :cond_12
    move-object/from16 v16, v1

    .line 13288
    :goto_b
    iget v1, v7, Lcom/google/android/exoplayer2/text/g/g;->m:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_15

    const/4 v3, 0x3

    if-eq v1, v3, :cond_14

    const/4 v3, 0x4

    if-eq v1, v3, :cond_14

    :cond_13
    :goto_c
    const/4 v6, 0x0

    goto :goto_e

    .line 6200
    :cond_14
    new-instance v1, Lcom/google/android/exoplayer2/text/g/a;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/text/g/a;-><init>()V

    const/16 v3, 0x21

    invoke-interface {v12, v1, v5, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_c

    .line 6165
    :cond_15
    invoke-static {v13, v8}, Lcom/google/android/exoplayer2/text/g/f;->b(Lcom/google/android/exoplayer2/text/g/d;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/g/d;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 6170
    invoke-static {v1, v8}, Lcom/google/android/exoplayer2/text/g/f;->a(Lcom/google/android/exoplayer2/text/g/d;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/g/d;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 6176
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/text/g/d;->a()I

    move-result v6

    const/4 v13, 0x1

    if-ne v6, v13, :cond_17

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/text/g/d;->a(I)Lcom/google/android/exoplayer2/text/g/d;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/exoplayer2/text/g/d;->b:Ljava/lang/String;

    if-eqz v13, :cond_18

    .line 6177
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/text/g/d;->a(I)Lcom/google/android/exoplayer2/text/g/d;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/text/g/d;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6186
    iget-object v1, v1, Lcom/google/android/exoplayer2/text/g/d;->f:Lcom/google/android/exoplayer2/text/g/g;

    if-eqz v1, :cond_16

    .line 13298
    iget v15, v1, Lcom/google/android/exoplayer2/text/g/g;->n:I

    goto :goto_d

    :cond_16
    const/4 v15, -0x1

    .line 6189
    :goto_d
    new-instance v1, Lcom/google/android/exoplayer2/text/d/b;

    invoke-direct {v1, v3, v15}, Lcom/google/android/exoplayer2/text/d/b;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0x21

    invoke-interface {v12, v1, v5, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_e

    :cond_17
    const/4 v6, 0x0

    .line 6179
    :cond_18
    invoke-static {}, Lcom/google/android/exoplayer2/util/n;->b()V

    .line 13313
    :goto_e
    iget v1, v7, Lcom/google/android/exoplayer2/text/g/g;->p:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_19

    const/4 v3, 0x1

    goto :goto_f

    :cond_19
    const/4 v3, 0x0

    :goto_f
    if-eqz v3, :cond_1a

    .line 6209
    new-instance v1, Lcom/google/android/exoplayer2/text/d/a;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/text/d/a;-><init>()V

    invoke-static {v12, v1, v5, v2}, Lcom/google/android/exoplayer2/text/d/c;->a(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 13342
    :cond_1a
    iget v1, v7, Lcom/google/android/exoplayer2/text/g/g;->j:I

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v6, 0x1

    if-eq v1, v6, :cond_1d

    const/4 v6, 0x2

    if-eq v1, v6, :cond_1c

    const/4 v6, 0x3

    if-eq v1, v6, :cond_1b

    goto :goto_10

    .line 6234
    :cond_1b
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    .line 15346
    iget v6, v7, Lcom/google/android/exoplayer2/text/g/g;->k:F

    div-float/2addr v6, v3

    .line 6236
    invoke-direct {v1, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 6234
    invoke-static {v12, v1, v5, v2}, Lcom/google/android/exoplayer2/text/d/c;->a(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto :goto_10

    .line 6226
    :cond_1c
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    .line 14346
    iget v6, v7, Lcom/google/android/exoplayer2/text/g/g;->k:F

    .line 6228
    invoke-direct {v1, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 6226
    invoke-static {v12, v1, v5, v2}, Lcom/google/android/exoplayer2/text/d/c;->a(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto :goto_10

    .line 6218
    :cond_1d
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    .line 13346
    iget v6, v7, Lcom/google/android/exoplayer2/text/g/g;->k:F

    float-to-int v6, v6

    const/4 v13, 0x1

    .line 6220
    invoke-direct {v1, v6, v13}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 6218
    invoke-static {v12, v1, v5, v2}, Lcom/google/android/exoplayer2/text/d/c;->a(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 16197
    :goto_10
    iget v1, v7, Lcom/google/android/exoplayer2/text/g/g;->r:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1e

    .line 4412
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/g/d;->a:Ljava/lang/String;

    const-string v2, "p"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 17197
    iget v1, v7, Lcom/google/android/exoplayer2/text/g/g;->r:F

    const/high16 v2, -0x3d4c0000    # -90.0f

    mul-float v1, v1, v2

    div-float/2addr v1, v3

    .line 17811
    iput v1, v4, Lcom/google/android/exoplayer2/text/b$a;->l:F

    .line 18303
    :cond_1e
    iget-object v1, v7, Lcom/google/android/exoplayer2/text/g/g;->o:Landroid/text/Layout$Alignment;

    .line 18581
    iput-object v1, v4, Lcom/google/android/exoplayer2/text/b$a;->c:Landroid/text/Layout$Alignment;

    goto :goto_11

    :cond_1f
    move-object/from16 v11, p4

    move-object/from16 v10, p6

    :cond_20
    move-object/from16 v16, v1

    :goto_11
    move-object/from16 v1, v16

    goto/16 :goto_1

    :cond_21
    move-object/from16 v11, p4

    move-object/from16 v10, p6

    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 391
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/text/g/d;->a()I

    move-result v1

    if-ge v12, v1, :cond_22

    .line 392
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/text/g/d;->a(I)Lcom/google/android/exoplayer2/text/g/d;

    move-result-object v1

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v9

    move-object/from16 v7, p6

    .line 393
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/text/g/d;->a(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    :cond_22
    return-void
.end method

.method final a(JZLjava/lang/String;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/b$a;",
            ">;)V"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g/d;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 323
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g/d;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 324
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g/d;->a:Ljava/lang/String;

    const-string v1, "metadata"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g/d;->h:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lcom/google/android/exoplayer2/text/g/d;->h:Ljava/lang/String;

    .line 331
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/g/d;->c:Z

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 332
    invoke-static {p4, p5}, Lcom/google/android/exoplayer2/text/g/d;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/text/g/d;->b:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g/d;->a:Ljava/lang/String;

    const-string v1, "br"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v6, 0xa

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 334
    invoke-static {p4, p5}, Lcom/google/android/exoplayer2/text/g/d;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    return-void

    .line 335
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/text/g/d;->a(J)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 337
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 338
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/g/d;->k:Ljava/util/HashMap;

    .line 339
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/b$a;

    .line 1550
    iget-object v1, v1, Lcom/google/android/exoplayer2/text/b$a;->a:Ljava/lang/CharSequence;

    .line 339
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 338
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 342
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g/d;->a:Ljava/lang/String;

    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 343
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/g/d;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ge v9, v0, :cond_7

    .line 344
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/text/g/d;->a(I)Lcom/google/android/exoplayer2/text/g/d;

    move-result-object v0

    if-nez p3, :cond_6

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v3, 0x1

    :goto_4
    move-wide v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/text/g/d;->a(JZLjava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_9

    .line 348
    invoke-static {p4, p5}, Lcom/google/android/exoplayer2/text/g/d;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 2287
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_5
    if-ltz p2, :cond_8

    .line 2288
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result p3

    const/16 p4, 0x20

    if-ne p3, p4, :cond_8

    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_8
    if-ltz p2, :cond_9

    .line 2291
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result p2

    if-eq p2, v6, :cond_9

    .line 2292
    invoke-virtual {p1, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 351
    :cond_9
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 352
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/g/d;->l:Ljava/util/HashMap;

    .line 353
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/text/b$a;

    .line 2550
    iget-object p2, p2, Lcom/google/android/exoplayer2/text/b$a;->a:Ljava/lang/CharSequence;

    .line 353
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 352
    invoke-virtual {p3, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_a
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/text/g/d;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g/d;->m:Ljava/util/List;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/g/d;->m:Ljava/util/List;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g/d;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()[J
    .locals 6

    .line 214
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    const/4 v1, 0x0

    .line 215
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/text/g/d;->a(Ljava/util/TreeSet;Z)V

    .line 216
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    new-array v2, v2, [J

    .line 218
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-int/lit8 v5, v1, 0x1

    .line 219
    aput-wide v3, v2, v1

    move v1, v5

    goto :goto_0

    :cond_0
    return-object v2
.end method
