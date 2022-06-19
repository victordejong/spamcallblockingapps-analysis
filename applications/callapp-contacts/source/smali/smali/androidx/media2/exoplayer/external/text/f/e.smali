.class final Landroidx/media2/exoplayer/external/text/f/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/text/d;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/text/f/b;

.field private final b:[J

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/f/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/f/c;",
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
.method public constructor <init>(Landroidx/media2/exoplayer/external/text/f/b;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/text/f/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/f/d;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/f/c;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/f/e;->a:Landroidx/media2/exoplayer/external/text/f/b;

    .line 50
    iput-object p3, p0, Landroidx/media2/exoplayer/external/text/f/e;->d:Ljava/util/Map;

    .line 51
    iput-object p4, p0, Landroidx/media2/exoplayer/external/text/f/e;->e:Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 53
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Landroidx/media2/exoplayer/external/text/f/e;->c:Ljava/util/Map;

    .line 54
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/f/b;->a()[J

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/f/e;->b:[J

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    .line 59
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/f/e;->b:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media2/exoplayer/external/util/ac;->a([JJZZ)I

    move-result p1

    .line 60
    iget-object p2, p0, Landroidx/media2/exoplayer/external/text/f/e;->b:[J

    array-length p2, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final a_(I)J
    .locals 3

    .line 70
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/f/e;->b:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final b()I
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/f/e;->b:[J

    array-length v0, v0

    return v0
.end method

.method public final b(J)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    .line 80
    iget-object v9, v0, Landroidx/media2/exoplayer/external/text/f/e;->a:Landroidx/media2/exoplayer/external/text/f/b;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/text/f/e;->c:Ljava/util/Map;

    iget-object v11, v0, Landroidx/media2/exoplayer/external/text/f/e;->d:Ljava/util/Map;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/text/f/e;->e:Ljava/util/Map;

    .line 1215
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1216
    iget-object v1, v9, Landroidx/media2/exoplayer/external/text/f/b;->g:Ljava/lang/String;

    invoke-virtual {v9, v7, v8, v1, v13}, Landroidx/media2/exoplayer/external/text/f/b;->a(JLjava/lang/String;Ljava/util/List;)V

    .line 1218
    new-instance v14, Ljava/util/TreeMap;

    invoke-direct {v14}, Ljava/util/TreeMap;-><init>()V

    .line 1219
    iget-object v5, v9, Landroidx/media2/exoplayer/external/text/f/b;->g:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v1, v9

    move-wide/from16 v2, p1

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroidx/media2/exoplayer/external/text/f/b;->a(JZLjava/lang/String;Ljava/util/Map;)V

    .line 1220
    invoke-virtual {v9, v7, v8, v10, v14}, Landroidx/media2/exoplayer/external/text/f/b;->a(JLjava/util/Map;Ljava/util/Map;)V

    .line 1222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1225
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1226
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    .line 1232
    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1233
    array-length v6, v4

    invoke-static {v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 1234
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/text/f/c;

    .line 1236
    new-instance v4, Landroidx/media2/exoplayer/external/text/a;

    iget v5, v3, Landroidx/media2/exoplayer/external/text/f/c;->b:F

    const/16 v18, 0x0

    iget v6, v3, Landroidx/media2/exoplayer/external/text/f/c;->c:F

    iget v7, v3, Landroidx/media2/exoplayer/external/text/f/c;->e:I

    iget v8, v3, Landroidx/media2/exoplayer/external/text/f/c;->f:F

    iget v3, v3, Landroidx/media2/exoplayer/external/text/f/c;->g:F

    move-object v15, v4

    move/from16 v17, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v3

    invoke-direct/range {v15 .. v22}, Landroidx/media2/exoplayer/external/text/a;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1248
    :cond_1
    invoke-virtual {v14}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1249
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/text/f/c;

    .line 1250
    new-instance v5, Landroidx/media2/exoplayer/external/text/a;

    .line 1252
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/SpannableStringBuilder;

    invoke-static {v3}, Landroidx/media2/exoplayer/external/text/f/b;->a(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    iget v15, v4, Landroidx/media2/exoplayer/external/text/f/c;->c:F

    iget v3, v4, Landroidx/media2/exoplayer/external/text/f/c;->d:I

    iget v6, v4, Landroidx/media2/exoplayer/external/text/f/c;->e:I

    iget v7, v4, Landroidx/media2/exoplayer/external/text/f/c;->b:F

    const/high16 v19, -0x80000000

    iget v8, v4, Landroidx/media2/exoplayer/external/text/f/c;->f:F

    iget v9, v4, Landroidx/media2/exoplayer/external/text/f/c;->h:I

    iget v4, v4, Landroidx/media2/exoplayer/external/text/f/c;->i:F

    move-object v12, v5

    move/from16 v16, v3

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v4

    invoke-direct/range {v12 .. v22}, Landroidx/media2/exoplayer/external/text/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFIF)V

    .line 1250
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v1
.end method
