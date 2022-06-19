.class public final Lcom/google/android/exoplayer2/aj$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/google/android/exoplayer2/ah;

.field c:Lcom/google/android/exoplayer2/util/c;

.field d:Lcom/google/android/exoplayer2/trackselection/h;

.field e:Lcom/google/android/exoplayer2/source/t;

.field f:Lcom/google/android/exoplayer2/s;

.field g:Lcom/google/android/exoplayer2/upstream/c;

.field h:Lcom/google/android/exoplayer2/a/a;

.field i:Landroid/os/Looper;

.field j:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field k:Lcom/google/android/exoplayer2/audio/d;

.field l:Z

.field m:I

.field n:Z

.field o:Z

.field p:I

.field q:Z

.field r:Lcom/google/android/exoplayer2/ai;

.field s:Lcom/google/android/exoplayer2/r;

.field t:J

.field u:J

.field v:Z

.field w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 161
    new-instance v0, Lcom/google/android/exoplayer2/l;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/l;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/exoplayer2/extractor/f;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/f;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/aj$a;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ah;Lcom/google/android/exoplayer2/extractor/l;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ah;)V
    .locals 1

    .line 174
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/f;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/aj$a;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ah;Lcom/google/android/exoplayer2/extractor/l;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ah;Lcom/google/android/exoplayer2/extractor/l;)V
    .locals 8

    .line 203
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/exoplayer2/source/h;

    invoke-direct {v4, p1, p3}, Lcom/google/android/exoplayer2/source/h;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/l;)V

    new-instance v5, Lcom/google/android/exoplayer2/j;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/j;-><init>()V

    .line 209
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/l;->a(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/l;

    move-result-object v6

    new-instance v7, Lcom/google/android/exoplayer2/a/a;

    sget-object p3, Lcom/google/android/exoplayer2/util/c;->a:Lcom/google/android/exoplayer2/util/c;

    invoke-direct {v7, p3}, Lcom/google/android/exoplayer2/a/a;-><init>(Lcom/google/android/exoplayer2/util/c;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 203
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/aj$a;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ah;Lcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/source/t;Lcom/google/android/exoplayer2/s;Lcom/google/android/exoplayer2/upstream/c;Lcom/google/android/exoplayer2/a/a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ah;Lcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/source/t;Lcom/google/android/exoplayer2/s;Lcom/google/android/exoplayer2/upstream/c;Lcom/google/android/exoplayer2/a/a;)V
    .locals 15

    move-object v0, p0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    .line 236
    iput-object v1, v0, Lcom/google/android/exoplayer2/aj$a;->a:Landroid/content/Context;

    move-object/from16 v1, p2

    .line 237
    iput-object v1, v0, Lcom/google/android/exoplayer2/aj$a;->b:Lcom/google/android/exoplayer2/ah;

    move-object/from16 v1, p3

    .line 238
    iput-object v1, v0, Lcom/google/android/exoplayer2/aj$a;->d:Lcom/google/android/exoplayer2/trackselection/h;

    move-object/from16 v1, p4

    .line 239
    iput-object v1, v0, Lcom/google/android/exoplayer2/aj$a;->e:Lcom/google/android/exoplayer2/source/t;

    move-object/from16 v1, p5

    .line 240
    iput-object v1, v0, Lcom/google/android/exoplayer2/aj$a;->f:Lcom/google/android/exoplayer2/s;

    move-object/from16 v1, p6

    .line 241
    iput-object v1, v0, Lcom/google/android/exoplayer2/aj$a;->g:Lcom/google/android/exoplayer2/upstream/c;

    move-object/from16 v1, p7

    .line 242
    iput-object v1, v0, Lcom/google/android/exoplayer2/aj$a;->h:Lcom/google/android/exoplayer2/a/a;

    .line 243
    invoke-static {}, Lcom/google/android/exoplayer2/util/af;->c()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/aj$a;->i:Landroid/os/Looper;

    .line 244
    sget-object v1, Lcom/google/android/exoplayer2/audio/d;->a:Lcom/google/android/exoplayer2/audio/d;

    iput-object v1, v0, Lcom/google/android/exoplayer2/aj$a;->k:Lcom/google/android/exoplayer2/audio/d;

    const/4 v1, 0x0

    .line 245
    iput v1, v0, Lcom/google/android/exoplayer2/aj$a;->m:I

    const/4 v1, 0x1

    .line 246
    iput v1, v0, Lcom/google/android/exoplayer2/aj$a;->p:I

    .line 247
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/aj$a;->q:Z

    .line 248
    sget-object v1, Lcom/google/android/exoplayer2/ai;->e:Lcom/google/android/exoplayer2/ai;

    iput-object v1, v0, Lcom/google/android/exoplayer2/aj$a;->r:Lcom/google/android/exoplayer2/ai;

    .line 249
    new-instance v1, Lcom/google/android/exoplayer2/i$a;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/i$a;-><init>()V

    .line 1233
    new-instance v14, Lcom/google/android/exoplayer2/i;

    iget v3, v1, Lcom/google/android/exoplayer2/i$a;->a:F

    iget v4, v1, Lcom/google/android/exoplayer2/i$a;->b:F

    iget-wide v5, v1, Lcom/google/android/exoplayer2/i$a;->c:J

    iget v7, v1, Lcom/google/android/exoplayer2/i$a;->d:F

    iget-wide v8, v1, Lcom/google/android/exoplayer2/i$a;->e:J

    iget-wide v10, v1, Lcom/google/android/exoplayer2/i$a;->f:J

    iget v12, v1, Lcom/google/android/exoplayer2/i$a;->g:F

    const/4 v13, 0x0

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/i;-><init>(FFJFJJFLcom/google/android/exoplayer2/i$1;)V

    .line 249
    iput-object v14, v0, Lcom/google/android/exoplayer2/aj$a;->s:Lcom/google/android/exoplayer2/r;

    .line 250
    sget-object v1, Lcom/google/android/exoplayer2/util/c;->a:Lcom/google/android/exoplayer2/util/c;

    iput-object v1, v0, Lcom/google/android/exoplayer2/aj$a;->c:Lcom/google/android/exoplayer2/util/c;

    const-wide/16 v1, 0x1f4

    .line 251
    iput-wide v1, v0, Lcom/google/android/exoplayer2/aj$a;->t:J

    const-wide/16 v1, 0x7d0

    .line 252
    iput-wide v1, v0, Lcom/google/android/exoplayer2/aj$a;->u:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/l;)V
    .locals 1

    .line 187
    new-instance v0, Lcom/google/android/exoplayer2/l;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/l;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/aj$a;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ah;Lcom/google/android/exoplayer2/extractor/l;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/exoplayer2/aj;
    .locals 2

    .line 556
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/aj$a;->w:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 557
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/aj$a;->w:Z

    .line 558
    new-instance v0, Lcom/google/android/exoplayer2/aj;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/aj;-><init>(Lcom/google/android/exoplayer2/aj$a;)V

    return-object v0
.end method
