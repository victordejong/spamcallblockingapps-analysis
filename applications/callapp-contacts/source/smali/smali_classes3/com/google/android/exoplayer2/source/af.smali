.class public final Lcom/google/android/exoplayer2/source/af;
.super Lcom/google/android/exoplayer2/source/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/af$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/j;

.field private final b:Lcom/google/android/exoplayer2/upstream/h$a;

.field private final c:Lcom/google/android/exoplayer2/Format;

.field private final d:J

.field private final e:Lcom/google/android/exoplayer2/upstream/r;

.field private final f:Z

.field private final g:Lcom/google/android/exoplayer2/al;

.field private final h:Lcom/google/android/exoplayer2/MediaItem;

.field private i:Lcom/google/android/exoplayer2/upstream/v;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$d;Lcom/google/android/exoplayer2/upstream/h$a;JLcom/google/android/exoplayer2/upstream/r;ZLjava/lang/Object;)V
    .locals 10

    move-object v0, p0

    move-object v1, p2

    .line 166
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a;-><init>()V

    move-object v2, p3

    .line 167
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/af;->b:Lcom/google/android/exoplayer2/upstream/h$a;

    move-wide v2, p4

    .line 168
    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/af;->d:J

    move-object/from16 v4, p6

    .line 169
    iput-object v4, v0, Lcom/google/android/exoplayer2/source/af;->e:Lcom/google/android/exoplayer2/upstream/r;

    move/from16 v4, p7

    .line 170
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/source/af;->f:Z

    .line 171
    new-instance v4, Lcom/google/android/exoplayer2/MediaItem$a;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/MediaItem$a;-><init>()V

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 1173
    iput-object v5, v4, Lcom/google/android/exoplayer2/MediaItem$a;->b:Landroid/net/Uri;

    .line 173
    iget-object v5, v1, Lcom/google/android/exoplayer2/MediaItem$d;->a:Landroid/net/Uri;

    .line 174
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2150
    iput-object v5, v4, Lcom/google/android/exoplayer2/MediaItem$a;->a:Ljava/lang/String;

    .line 175
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2412
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2413
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    goto :goto_0

    .line 2414
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :goto_0
    iput-object v5, v4, Lcom/google/android/exoplayer2/MediaItem$a;->m:Ljava/util/List;

    move-object/from16 v5, p8

    .line 2547
    iput-object v5, v4, Lcom/google/android/exoplayer2/MediaItem$a;->n:Ljava/lang/Object;

    .line 177
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/MediaItem$a;->a()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v8

    iput-object v8, v0, Lcom/google/android/exoplayer2/source/af;->h:Lcom/google/android/exoplayer2/MediaItem;

    .line 178
    new-instance v4, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    move-object v5, p1

    .line 3244
    iput-object v5, v4, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    .line 180
    iget-object v5, v1, Lcom/google/android/exoplayer2/MediaItem$d;->b:Ljava/lang/String;

    .line 3370
    iput-object v5, v4, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 181
    iget-object v5, v1, Lcom/google/android/exoplayer2/MediaItem$d;->c:Ljava/lang/String;

    .line 4278
    iput-object v5, v4, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 182
    iget v5, v1, Lcom/google/android/exoplayer2/MediaItem$d;->d:I

    .line 4289
    iput v5, v4, Lcom/google/android/exoplayer2/Format$a;->d:I

    .line 183
    iget v5, v1, Lcom/google/android/exoplayer2/MediaItem$d;->e:I

    .line 4300
    iput v5, v4, Lcom/google/android/exoplayer2/Format$a;->e:I

    .line 184
    iget-object v5, v1, Lcom/google/android/exoplayer2/MediaItem$d;->f:Ljava/lang/String;

    .line 5267
    iput-object v5, v4, Lcom/google/android/exoplayer2/Format$a;->b:Ljava/lang/String;

    .line 186
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/af;->c:Lcom/google/android/exoplayer2/Format;

    .line 187
    new-instance v4, Lcom/google/android/exoplayer2/upstream/j$a;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/upstream/j$a;-><init>()V

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem$d;->a:Landroid/net/Uri;

    .line 6094
    iput-object v1, v4, Lcom/google/android/exoplayer2/upstream/j$a;->a:Landroid/net/Uri;

    const/4 v1, 0x1

    .line 6186
    iput v1, v4, Lcom/google/android/exoplayer2/upstream/j$a;->i:I

    .line 188
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/j$a;->a()Lcom/google/android/exoplayer2/upstream/j;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/af;->a:Lcom/google/android/exoplayer2/upstream/j;

    .line 189
    new-instance v9, Lcom/google/android/exoplayer2/source/ad;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    move-wide v2, p4

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ad;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;)V

    iput-object v9, v0, Lcom/google/android/exoplayer2/source/af;->g:Lcom/google/android/exoplayer2/al;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$d;Lcom/google/android/exoplayer2/upstream/h$a;JLcom/google/android/exoplayer2/upstream/r;ZLjava/lang/Object;Lcom/google/android/exoplayer2/source/af$1;)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer2/source/af;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$d;Lcom/google/android/exoplayer2/upstream/h$a;JLcom/google/android/exoplayer2/upstream/r;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/p;
    .locals 10

    .line 230
    new-instance p2, Lcom/google/android/exoplayer2/source/ae;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/af;->a:Lcom/google/android/exoplayer2/upstream/j;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/af;->b:Lcom/google/android/exoplayer2/upstream/h$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/af;->i:Lcom/google/android/exoplayer2/upstream/v;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/af;->c:Lcom/google/android/exoplayer2/Format;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/af;->d:J

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/af;->e:Lcom/google/android/exoplayer2/upstream/r;

    .line 237
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/af;->a(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/source/s$a;

    move-result-object v8

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/af;->f:Z

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/ae;-><init>(Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/h$a;Lcom/google/android/exoplayer2/upstream/v;Lcom/google/android/exoplayer2/Format;JLcom/google/android/exoplayer2/upstream/r;Lcom/google/android/exoplayer2/source/s$a;Z)V

    return-object p2
.end method

.method public final a(Lcom/google/android/exoplayer2/source/p;)V
    .locals 1

    .line 243
    check-cast p1, Lcom/google/android/exoplayer2/source/ae;

    .line 7095
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/ae;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    const/4 v0, 0x0

    .line 7284
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$e;)V

    return-void
.end method

.method protected final a(Lcom/google/android/exoplayer2/upstream/v;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/af;->i:Lcom/google/android/exoplayer2/upstream/v;

    .line 220
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/af;->g:Lcom/google/android/exoplayer2/al;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/af;->a(Lcom/google/android/exoplayer2/al;)V

    return-void
.end method

.method protected final c()V
    .locals 0

    return-void
.end method

.method public final e()Lcom/google/android/exoplayer2/MediaItem;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/af;->h:Lcom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method public final f()V
    .locals 0

    return-void
.end method
