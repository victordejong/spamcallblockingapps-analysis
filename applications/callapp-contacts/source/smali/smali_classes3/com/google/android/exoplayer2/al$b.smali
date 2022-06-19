.class public final Lcom/google/android/exoplayer2/al$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Ljava/lang/Object;

.field private static final s:Lcom/google/android/exoplayer2/MediaItem;


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:Lcom/google/android/exoplayer2/MediaItem;

.field public e:Ljava/lang/Object;

.field public f:J

.field public g:J

.field public h:J

.field public i:Z

.field public j:Z

.field public k:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public l:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

.field public m:Z

.field public n:I

.field public o:I

.field public p:J

.field public q:J

.field public r:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/al$b;->a:Ljava/lang/Object;

    .line 141
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$a;-><init>()V

    const-string v1, "com.google.android.exoplayer2.Timeline"

    .line 1150
    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$a;->a:Ljava/lang/String;

    .line 143
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 1173
    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$a;->b:Landroid/net/Uri;

    .line 145
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$a;->a()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/al$b;->s:Lcom/google/android/exoplayer2/MediaItem;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    sget-object v0, Lcom/google/android/exoplayer2/al$b;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/al$b;->b:Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/google/android/exoplayer2/al$b;->s:Lcom/google/android/exoplayer2/MediaItem;

    iput-object v0, p0, Lcom/google/android/exoplayer2/al$b;->d:Lcom/google/android/exoplayer2/MediaItem;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/MediaItem$LiveConfiguration;JJJ)Lcom/google/android/exoplayer2/al$b;
    .locals 5

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p12

    move-object v3, p1

    .line 261
    iput-object v3, v0, Lcom/google/android/exoplayer2/al$b;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    move-object v3, v1

    goto :goto_0

    .line 262
    :cond_0
    sget-object v3, Lcom/google/android/exoplayer2/al$b;->s:Lcom/google/android/exoplayer2/MediaItem;

    :goto_0
    iput-object v3, v0, Lcom/google/android/exoplayer2/al$b;->d:Lcom/google/android/exoplayer2/MediaItem;

    if-eqz v1, :cond_1

    .line 264
    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaItem;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    if-eqz v3, :cond_1

    .line 265
    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem$c;->h:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 266
    :goto_1
    iput-object v1, v0, Lcom/google/android/exoplayer2/al$b;->c:Ljava/lang/Object;

    move-object v1, p3

    .line 267
    iput-object v1, v0, Lcom/google/android/exoplayer2/al$b;->e:Ljava/lang/Object;

    move-wide v3, p4

    .line 268
    iput-wide v3, v0, Lcom/google/android/exoplayer2/al$b;->f:J

    move-wide v3, p6

    .line 269
    iput-wide v3, v0, Lcom/google/android/exoplayer2/al$b;->g:J

    move-wide v3, p8

    .line 270
    iput-wide v3, v0, Lcom/google/android/exoplayer2/al$b;->h:J

    move v1, p10

    .line 271
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/al$b;->i:Z

    move/from16 v1, p11

    .line 272
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/al$b;->j:Z

    const/4 v1, 0x0

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 273
    :goto_2
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/al$b;->k:Z

    .line 274
    iput-object v2, v0, Lcom/google/android/exoplayer2/al$b;->l:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-wide/from16 v2, p13

    .line 275
    iput-wide v2, v0, Lcom/google/android/exoplayer2/al$b;->p:J

    move-wide/from16 v2, p15

    .line 276
    iput-wide v2, v0, Lcom/google/android/exoplayer2/al$b;->q:J

    .line 277
    iput v1, v0, Lcom/google/android/exoplayer2/al$b;->n:I

    .line 278
    iput v1, v0, Lcom/google/android/exoplayer2/al$b;->o:I

    move-wide/from16 v2, p17

    .line 279
    iput-wide v2, v0, Lcom/google/android/exoplayer2/al$b;->r:J

    .line 280
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/al$b;->m:Z

    return-object v0
.end method

.method public final a()Z
    .locals 4

    .line 348
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/al$b;->k:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/al$b;->l:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 349
    iget-object v0, p0, Lcom/google/android/exoplayer2/al$b;->l:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 358
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 361
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/al$b;

    .line 362
    iget-object v2, p0, Lcom/google/android/exoplayer2/al$b;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplayer2/al$b;->b:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/al$b;->d:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v3, p1, Lcom/google/android/exoplayer2/al$b;->d:Lcom/google/android/exoplayer2/MediaItem;

    .line 363
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/al$b;->e:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplayer2/al$b;->e:Ljava/lang/Object;

    .line 364
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/al$b;->l:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-object v3, p1, Lcom/google/android/exoplayer2/al$b;->l:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 365
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/al$b;->f:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/al$b;->f:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/al$b;->g:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/al$b;->g:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/al$b;->h:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/al$b;->h:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/al$b;->i:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/al$b;->i:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/al$b;->j:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/al$b;->j:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/al$b;->m:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/al$b;->m:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/al$b;->p:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/al$b;->p:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/al$b;->q:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/al$b;->q:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/al$b;->n:I

    iget v3, p1, Lcom/google/android/exoplayer2/al$b;->n:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/al$b;->o:I

    iget v3, p1, Lcom/google/android/exoplayer2/al$b;->o:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/al$b;->r:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/al$b;->r:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 6

    .line 383
    iget-object v0, p0, Lcom/google/android/exoplayer2/al$b;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    .line 384
    iget-object v1, p0, Lcom/google/android/exoplayer2/al$b;->d:Lcom/google/android/exoplayer2/MediaItem;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 385
    iget-object v1, p0, Lcom/google/android/exoplayer2/al$b;->e:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 386
    iget-object v1, p0, Lcom/google/android/exoplayer2/al$b;->l:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 387
    iget-wide v1, p0, Lcom/google/android/exoplayer2/al$b;->f:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 388
    iget-wide v1, p0, Lcom/google/android/exoplayer2/al$b;->g:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 389
    iget-wide v1, p0, Lcom/google/android/exoplayer2/al$b;->h:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 392
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/al$b;->i:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 393
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/al$b;->j:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 394
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/al$b;->m:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 395
    iget-wide v1, p0, Lcom/google/android/exoplayer2/al$b;->p:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 396
    iget-wide v1, p0, Lcom/google/android/exoplayer2/al$b;->q:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 397
    iget v1, p0, Lcom/google/android/exoplayer2/al$b;->n:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 398
    iget v1, p0, Lcom/google/android/exoplayer2/al$b;->o:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 399
    iget-wide v1, p0, Lcom/google/android/exoplayer2/al$b;->r:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method
