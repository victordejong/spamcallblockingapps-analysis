.class final Landroidx/media2/exoplayer/external/text/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:J

.field public final e:J

.field public final f:Landroidx/media2/exoplayer/external/text/f/d;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field private final i:[Ljava/lang/String;

.field private final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/f/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLandroidx/media2/exoplayer/external/text/f/d;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/f/b;->a:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Landroidx/media2/exoplayer/external/text/f/b;->b:Ljava/lang/String;

    .line 139
    iput-object p10, p0, Landroidx/media2/exoplayer/external/text/f/b;->h:Ljava/lang/String;

    .line 140
    iput-object p7, p0, Landroidx/media2/exoplayer/external/text/f/b;->f:Landroidx/media2/exoplayer/external/text/f/d;

    .line 141
    iput-object p8, p0, Landroidx/media2/exoplayer/external/text/f/b;->i:[Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 142
    :goto_0
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/text/f/b;->c:Z

    .line 143
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/text/f/b;->d:J

    .line 144
    iput-wide p5, p0, Landroidx/media2/exoplayer/external/text/f/b;->e:J

    .line 145
    invoke-static {p9}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/f/b;->g:Ljava/lang/String;

    .line 146
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/f/b;->j:Ljava/util/HashMap;

    .line 147
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/f/b;->k:Ljava/util/HashMap;

    return-void
.end method

.method static a(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 7

    .line 361
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v0, :cond_2

    .line 363
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_1

    add-int/lit8 v4, v2, 0x1

    move v5, v4

    .line 365
    :goto_1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    sub-int/2addr v5, v4

    if-lez v5, :cond_1

    add-int v3, v2, v5

    .line 370
    invoke-virtual {p0, v2, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    sub-int/2addr v0, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    .line 376
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    .line 377
    invoke-virtual {p0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, -0x1

    :cond_3
    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v4, v0, -0x1

    const/16 v5, 0xa

    if-ge v2, v4, :cond_5

    .line 381
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_4

    add-int/lit8 v5, v2, 0x2

    .line 382
    invoke-virtual {p0, v4, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, -0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    if-lez v0, :cond_6

    .line 387
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_6

    .line 388
    invoke-virtual {p0, v4, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, -0x1

    :cond_6
    :goto_3
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_8

    .line 392
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_7

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_7

    .line 393
    invoke-virtual {p0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, -0x1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    if-lez v0, :cond_9

    .line 398
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_9

    .line 399
    invoke-virtual {p0, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_9
    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .line 320
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method private a(I)Landroidx/media2/exoplayer/external/text/f/b;
    .locals 1

    .line 165
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/f/b;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/text/f/b;

    return-object p1

    .line 166
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
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

    .line 187
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/f/b;->a:Ljava/lang/String;

    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 188
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/f/b;->a:Ljava/lang/String;

    const-string v2, "div"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez p2, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    .line 189
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/f/b;->h:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 190
    :cond_0
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/text/f/b;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 191
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_1
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/text/f/b;->e:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 194
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/f/b;->l:Ljava/util/List;

    if-nez v1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 200
    :goto_0
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/f/b;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 201
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/f/b;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/text/f/b;

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
    invoke-direct {v3, p1, v4}, Landroidx/media2/exoplayer/external/text/f/b;->a(Ljava/util/TreeSet;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private a(J)Z
    .locals 7

    .line 151
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/text/f/b;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/text/f/b;->e:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    :cond_0
    cmp-long v4, v0, p1

    if-gtz v4, :cond_1

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/text/f/b;->e:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    :cond_1
    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/text/f/b;->e:J

    cmp-long v4, p1, v2

    if-ltz v4, :cond_3

    :cond_2
    cmp-long v2, v0, p1

    if-gtz v2, :cond_4

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/text/f/b;->e:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_4

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private b()I
    .locals 1

    .line 172
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/f/b;->l:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method


# virtual methods
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

    .line 269
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/f/b;->g:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Landroidx/media2/exoplayer/external/text/f/b;->g:Ljava/lang/String;

    .line 270
    :goto_0
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/text/f/b;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/f/b;->a:Ljava/lang/String;

    const-string v1, "div"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/f/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 271
    new-instance p1, Landroid/util/Pair;

    iget-object p2, p0, Landroidx/media2/exoplayer/external/text/f/b;->h:Ljava/lang/String;

    invoke-direct {p1, p3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 274
    :goto_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/f/b;->b()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 275
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/f/b;->a(I)Landroidx/media2/exoplayer/external/text/f/b;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/text/f/b;->a(JLjava/lang/String;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method final a(JLjava/util/Map;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/f/d;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)V"
        }
    .end annotation

    .line 330
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/text/f/b;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/f/b;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 334
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 335
    iget-object v4, p0, Landroidx/media2/exoplayer/external/text/f/b;->j:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroidx/media2/exoplayer/external/text/f/b;->j:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 336
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v4, v1, :cond_1

    .line 338
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/SpannableStringBuilder;

    .line 1352
    iget-object v5, p0, Landroidx/media2/exoplayer/external/text/f/b;->f:Landroidx/media2/exoplayer/external/text/f/d;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/text/f/b;->i:[Ljava/lang/String;

    const/4 v7, 0x1

    if-nez v5, :cond_3

    if-nez v6, :cond_3

    const/4 v5, 0x0

    goto :goto_4

    :cond_3
    if-nez v5, :cond_4

    .line 2048
    array-length v8, v6

    if-ne v8, v7, :cond_4

    .line 2050
    aget-object v5, v6, v2

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/text/f/d;

    goto :goto_4

    :cond_4
    if-nez v5, :cond_5

    .line 2051
    array-length v8, v6

    if-le v8, v7, :cond_5

    .line 2053
    new-instance v5, Landroidx/media2/exoplayer/external/text/f/d;

    invoke-direct {v5}, Landroidx/media2/exoplayer/external/text/f/d;-><init>()V

    .line 2054
    array-length v8, v6

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_7

    aget-object v10, v6, v9

    .line 2055
    invoke-interface {p3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media2/exoplayer/external/text/f/d;

    .line 2200
    invoke-virtual {v5, v10}, Landroidx/media2/exoplayer/external/text/f/d;->a(Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    .line 2058
    array-length v8, v6

    if-ne v8, v7, :cond_6

    .line 2060
    aget-object v6, v6, v2

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/text/f/d;

    .line 3200
    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/text/f/d;->a(Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;

    move-result-object v5

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    .line 2061
    array-length v8, v6

    if-le v8, v7, :cond_7

    .line 2063
    array-length v8, v6

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_7

    aget-object v10, v6, v9

    .line 2064
    invoke-interface {p3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media2/exoplayer/external/text/f/d;

    .line 4200
    invoke-virtual {v5, v10}, Landroidx/media2/exoplayer/external/text/f/d;->a(Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    if-eqz v5, :cond_1

    .line 5075
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/text/f/d;->a()I

    move-result v6

    const/4 v8, -0x1

    const/16 v9, 0x21

    if-eq v6, v8, :cond_8

    .line 5076
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/text/f/d;->a()I

    move-result v8

    invoke-direct {v6, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3, v6, v4, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6106
    :cond_8
    iget v6, v5, Landroidx/media2/exoplayer/external/text/f/d;->f:I

    if-ne v6, v7, :cond_9

    const/4 v6, 0x1

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_a

    .line 5080
    new-instance v6, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v6}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v3, v6, v4, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6116
    :cond_a
    iget v6, v5, Landroidx/media2/exoplayer/external/text/f/d;->g:I

    if-ne v6, v7, :cond_b

    const/4 v2, 0x1

    :cond_b
    if-eqz v2, :cond_c

    .line 5083
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v3, v2, v4, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6162
    :cond_c
    iget-boolean v2, v5, Landroidx/media2/exoplayer/external/text/f/d;->c:Z

    if-eqz v2, :cond_e

    .line 5086
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 7148
    iget-boolean v6, v5, Landroidx/media2/exoplayer/external/text/f/d;->c:Z

    if-eqz v6, :cond_d

    .line 7151
    iget v6, v5, Landroidx/media2/exoplayer/external/text/f/d;->b:I

    .line 5086
    invoke-direct {v2, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v2, v4, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    .line 7149
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Font color has not been defined."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7179
    :cond_e
    :goto_6
    iget-boolean v2, v5, Landroidx/media2/exoplayer/external/text/f/d;->e:Z

    if-eqz v2, :cond_10

    .line 5090
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    .line 8166
    iget-boolean v6, v5, Landroidx/media2/exoplayer/external/text/f/d;->e:Z

    if-eqz v6, :cond_f

    .line 8169
    iget v6, v5, Landroidx/media2/exoplayer/external/text/f/d;->d:I

    .line 5090
    invoke-direct {v2, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v2, v4, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_7

    .line 8167
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Background color has not been defined."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9138
    :cond_10
    :goto_7
    iget-object v2, v5, Landroidx/media2/exoplayer/external/text/f/d;->a:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 5094
    new-instance v2, Landroid/text/style/TypefaceSpan;

    .line 10138
    iget-object v6, v5, Landroidx/media2/exoplayer/external/text/f/d;->a:Ljava/lang/String;

    .line 5094
    invoke-direct {v2, v6}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 10248
    :cond_11
    iget-object v2, v5, Landroidx/media2/exoplayer/external/text/f/d;->n:Landroid/text/Layout$Alignment;

    if-eqz v2, :cond_12

    .line 5098
    new-instance v2, Landroid/text/style/AlignmentSpan$Standard;

    .line 11248
    iget-object v6, v5, Landroidx/media2/exoplayer/external/text/f/d;->n:Landroid/text/Layout$Alignment;

    .line 5098
    invoke-direct {v2, v6}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {v3, v2, v4, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 11267
    :cond_12
    iget v2, v5, Landroidx/media2/exoplayer/external/text/f/d;->j:I

    if-eq v2, v7, :cond_15

    const/4 v6, 0x2

    if-eq v2, v6, :cond_14

    const/4 v6, 0x3

    if-eq v2, v6, :cond_13

    goto/16 :goto_0

    .line 5111
    :cond_13
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    .line 13271
    iget v5, v5, Landroidx/media2/exoplayer/external/text/f/d;->k:F

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    .line 5111
    invoke-direct {v2, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v3, v2, v4, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 5107
    :cond_14
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    .line 12271
    iget v5, v5, Landroidx/media2/exoplayer/external/text/f/d;->k:F

    .line 5107
    invoke-direct {v2, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v3, v2, v4, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 5103
    :cond_15
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    .line 11271
    iget v5, v5, Landroidx/media2/exoplayer/external/text/f/d;->k:F

    float-to-int v5, v5

    .line 5103
    invoke-direct {v2, v5, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v3, v2, v4, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 342
    :cond_16
    :goto_8
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/f/b;->b()I

    move-result v0

    if-ge v2, v0, :cond_17

    .line 343
    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/text/f/b;->a(I)Landroidx/media2/exoplayer/external/text/f/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/text/f/b;->a(JLjava/util/Map;Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_17
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
            "Landroid/text/SpannableStringBuilder;",
            ">;)V"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/f/b;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 285
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/f/b;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 286
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/f/b;->a:Ljava/lang/String;

    const-string v1, "metadata"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/f/b;->g:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p4, p0, Landroidx/media2/exoplayer/external/text/f/b;->g:Ljava/lang/String;

    .line 293
    :goto_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/text/f/b;->c:Z

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 294
    invoke-static {p4, p5}, Landroidx/media2/exoplayer/external/text/f/b;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroidx/media2/exoplayer/external/text/f/b;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void

    .line 295
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/f/b;->a:Ljava/lang/String;

    const-string v1, "br"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v6, 0xa

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 296
    invoke-static {p4, p5}, Landroidx/media2/exoplayer/external/text/f/b;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    return-void

    .line 297
    :cond_3
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/text/f/b;->a(J)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 299
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

    .line 300
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/f/b;->j:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 303
    :cond_4
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/f/b;->a:Ljava/lang/String;

    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 304
    :goto_2
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/f/b;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ge v9, v0, :cond_7

    .line 305
    invoke-direct {p0, v9}, Landroidx/media2/exoplayer/external/text/f/b;->a(I)Landroidx/media2/exoplayer/external/text/f/b;

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

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/text/f/b;->a(JZLjava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_9

    .line 309
    invoke-static {p4, p5}, Landroidx/media2/exoplayer/external/text/f/b;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 1127
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_5
    if-ltz p2, :cond_8

    .line 1128
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result p3

    const/16 p4, 0x20

    if-ne p3, p4, :cond_8

    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_8
    if-ltz p2, :cond_9

    .line 1131
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result p2

    if-eq p2, v6, :cond_9

    .line 1132
    invoke-virtual {p1, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 312
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

    .line 313
    iget-object p3, p0, Landroidx/media2/exoplayer/external/text/f/b;->k:Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_a
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/text/f/b;)V
    .locals 1

    .line 158
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/f/b;->l:Ljava/util/List;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/f/b;->l:Ljava/util/List;

    .line 161
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/f/b;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a()[J
    .locals 6

    .line 176
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    const/4 v1, 0x0

    .line 177
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/text/f/b;->a(Ljava/util/TreeSet;Z)V

    .line 178
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    new-array v2, v2, [J

    .line 180
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

    .line 181
    aput-wide v3, v2, v1

    move v1, v5

    goto :goto_0

    :cond_0
    return-object v2
.end method
