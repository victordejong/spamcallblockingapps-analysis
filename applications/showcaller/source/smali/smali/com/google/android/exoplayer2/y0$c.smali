.class public final Lcom/google/android/exoplayer2/y0$c;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:J

.field public f:J

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:I

.field public k:I

.field public l:J

.field public m:J

.field public n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/y0$c;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/y0$c;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/y0$c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/y0$c;->l:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/v;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/y0$c;->l:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/y0$c;->m:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/v;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/y0$c;->n:J

    return-wide v0
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JJZZZJJIIJ)Lcom/google/android/exoplayer2/y0$c;
    .locals 3

    move-object v0, p0

    move-object v1, p1

    .line 1
    iput-object v1, v0, Lcom/google/android/exoplayer2/y0$c;->b:Ljava/lang/Object;

    move-object v1, p2

    .line 2
    iput-object v1, v0, Lcom/google/android/exoplayer2/y0$c;->c:Ljava/lang/Object;

    move-object v1, p3

    .line 3
    iput-object v1, v0, Lcom/google/android/exoplayer2/y0$c;->d:Ljava/lang/Object;

    move-wide v1, p4

    .line 4
    iput-wide v1, v0, Lcom/google/android/exoplayer2/y0$c;->e:J

    move-wide v1, p6

    .line 5
    iput-wide v1, v0, Lcom/google/android/exoplayer2/y0$c;->f:J

    move v1, p8

    .line 6
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/y0$c;->g:Z

    move v1, p9

    .line 7
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/y0$c;->h:Z

    move v1, p10

    .line 8
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/y0$c;->i:Z

    move-wide v1, p11

    .line 9
    iput-wide v1, v0, Lcom/google/android/exoplayer2/y0$c;->l:J

    move-wide/from16 v1, p13

    .line 10
    iput-wide v1, v0, Lcom/google/android/exoplayer2/y0$c;->m:J

    move/from16 v1, p15

    .line 11
    iput v1, v0, Lcom/google/android/exoplayer2/y0$c;->j:I

    move/from16 v1, p16

    .line 12
    iput v1, v0, Lcom/google/android/exoplayer2/y0$c;->k:I

    move-wide/from16 v1, p17

    .line 13
    iput-wide v1, v0, Lcom/google/android/exoplayer2/y0$c;->n:J

    return-object v0
.end method
