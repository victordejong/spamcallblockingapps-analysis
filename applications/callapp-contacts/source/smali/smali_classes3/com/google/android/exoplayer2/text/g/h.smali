.class final Lcom/google/android/exoplayer2/text/g/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/text/e;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/text/g/d;

.field private final b:[J

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/g/g;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/g/e;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/g/d;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/text/g/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/g/g;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/g/e;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/g/h;->a:Lcom/google/android/exoplayer2/text/g/d;

    .line 44
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/g/h;->d:Ljava/util/Map;

    .line 45
    iput-object p4, p0, Lcom/google/android/exoplayer2/text/g/h;->e:Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 47
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/google/android/exoplayer2/text/g/h;->c:Ljava/util/Map;

    .line 48
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/g/d;->b()[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/g/h;->b:[J

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g/h;->b:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/util/af;->b([JJZ)I

    move-result p1

    .line 54
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/g/h;->b:[J

    array-length p2, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final b()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g/h;->b:[J

    array-length v0, v0

    return v0
.end method

.method public final b(J)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v6, p0, Lcom/google/android/exoplayer2/text/g/h;->a:Lcom/google/android/exoplayer2/text/g/d;

    iget-object v7, p0, Lcom/google/android/exoplayer2/text/g/h;->c:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/exoplayer2/text/g/h;->d:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/android/exoplayer2/text/g/h;->e:Ljava/util/Map;

    .line 1254
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1255
    iget-object v0, v6, Lcom/google/android/exoplayer2/text/g/d;->h:Ljava/lang/String;

    invoke-virtual {v6, p1, p2, v0, v10}, Lcom/google/android/exoplayer2/text/g/d;->a(JLjava/lang/String;Ljava/util/List;)V

    .line 1257
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    .line 1258
    iget-object v4, v6, Lcom/google/android/exoplayer2/text/g/d;->h:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, v6

    move-wide v1, p1

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/text/g/d;->a(JZLjava/lang/String;Ljava/util/Map;)V

    .line 1259
    iget-object v5, v6, Lcom/google/android/exoplayer2/text/g/d;->h:Ljava/lang/String;

    move-object v3, v7

    move-object v4, v8

    move-object v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/text/g/d;->a(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 1261
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1264
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1265
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 1271
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1272
    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1273
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/g/e;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/g/e;

    .line 1275
    new-instance v3, Lcom/google/android/exoplayer2/text/b$a;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/text/b$a;-><init>()V

    .line 1559
    iput-object v1, v3, Lcom/google/android/exoplayer2/text/b$a;->b:Landroid/graphics/Bitmap;

    .line 1277
    iget v1, v0, Lcom/google/android/exoplayer2/text/g/e;->b:F

    .line 1655
    iput v1, v3, Lcom/google/android/exoplayer2/text/b$a;->e:F

    .line 1675
    iput v2, v3, Lcom/google/android/exoplayer2/text/b$a;->f:I

    .line 1279
    iget v1, v0, Lcom/google/android/exoplayer2/text/g/e;->c:F

    .line 1280
    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/text/b$a;->a(FI)Lcom/google/android/exoplayer2/text/b$a;

    move-result-object v1

    iget v2, v0, Lcom/google/android/exoplayer2/text/g/e;->e:I

    .line 2634
    iput v2, v1, Lcom/google/android/exoplayer2/text/b$a;->d:I

    .line 1281
    iget v2, v0, Lcom/google/android/exoplayer2/text/g/e;->f:F

    .line 2727
    iput v2, v1, Lcom/google/android/exoplayer2/text/b$a;->g:F

    .line 1282
    iget v2, v0, Lcom/google/android/exoplayer2/text/g/e;->g:F

    .line 2747
    iput v2, v1, Lcom/google/android/exoplayer2/text/b$a;->h:F

    .line 1283
    iget v0, v0, Lcom/google/android/exoplayer2/text/g/e;->j:I

    .line 2805
    iput v0, v1, Lcom/google/android/exoplayer2/text/b$a;->k:I

    .line 1285
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/b$a;->a()Lcom/google/android/exoplayer2/text/b;

    move-result-object v0

    .line 1275
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1289
    :cond_1
    invoke-virtual {v11}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1290
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/g/e;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/g/e;

    .line 1291
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/b$a;

    .line 3550
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/b$a;->a:Ljava/lang/CharSequence;

    .line 1292
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/SpannableStringBuilder;

    invoke-static {v2}, Lcom/google/android/exoplayer2/text/g/d;->a(Landroid/text/SpannableStringBuilder;)V

    .line 1293
    iget v2, v1, Lcom/google/android/exoplayer2/text/g/e;->c:F

    iget v3, v1, Lcom/google/android/exoplayer2/text/g/e;->d:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/text/b$a;->a(FI)Lcom/google/android/exoplayer2/text/b$a;

    .line 1294
    iget v2, v1, Lcom/google/android/exoplayer2/text/g/e;->e:I

    .line 3634
    iput v2, v0, Lcom/google/android/exoplayer2/text/b$a;->d:I

    .line 1295
    iget v2, v1, Lcom/google/android/exoplayer2/text/g/e;->b:F

    .line 3655
    iput v2, v0, Lcom/google/android/exoplayer2/text/b$a;->e:F

    .line 1296
    iget v2, v1, Lcom/google/android/exoplayer2/text/g/e;->f:F

    .line 3727
    iput v2, v0, Lcom/google/android/exoplayer2/text/b$a;->g:F

    .line 1297
    iget v2, v1, Lcom/google/android/exoplayer2/text/g/e;->i:F

    iget v3, v1, Lcom/google/android/exoplayer2/text/g/e;->h:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/text/b$a;->b(FI)Lcom/google/android/exoplayer2/text/b$a;

    .line 1298
    iget v1, v1, Lcom/google/android/exoplayer2/text/g/e;->j:I

    .line 3805
    iput v1, v0, Lcom/google/android/exoplayer2/text/b$a;->k:I

    .line 1299
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/b$a;->a()Lcom/google/android/exoplayer2/text/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public final b_(I)J
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g/h;->b:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method
