.class public final Lcom/google/android/exoplayer2/upstream/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/net/Uri;

.field public b:J

.field public c:I

.field public d:[B

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:J

.field public g:J

.field public h:Ljava/lang/String;

.field public i:I

.field private j:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/j$a;->c:I

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/j$a;->e:Ljava/util/Map;

    const-wide/16 v0, -0x1

    .line 55
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/j$a;->g:J

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/upstream/j;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/j;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/j$a;->a:Landroid/net/Uri;

    .line 65
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/j;->b:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/j$a;->b:J

    .line 66
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/j;->c:I

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/j$a;->c:I

    .line 67
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/j;->d:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/j$a;->d:[B

    .line 68
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/j;->e:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/j$a;->e:Ljava/util/Map;

    .line 69
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/j;->g:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/j$a;->f:J

    .line 70
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/j;->h:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/j$a;->g:J

    .line 71
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/j;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/j$a;->h:Ljava/lang/String;

    .line 72
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/j;->j:I

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/j$a;->i:I

    .line 73
    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/j;->k:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/j$a;->j:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/j$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/j$a;-><init>(Lcom/google/android/exoplayer2/upstream/j;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/j$a;
    .locals 0

    .line 83
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/j$a;->a:Landroid/net/Uri;

    return-object p0
.end method

.method public final a()Lcom/google/android/exoplayer2/upstream/j;
    .locals 18

    move-object/from16 v0, p0

    .line 208
    iget-object v1, v0, Lcom/google/android/exoplayer2/upstream/j$a;->a:Landroid/net/Uri;

    const-string v2, "The uri must be set."

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v1, Lcom/google/android/exoplayer2/upstream/j;

    iget-object v4, v0, Lcom/google/android/exoplayer2/upstream/j$a;->a:Landroid/net/Uri;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/upstream/j$a;->b:J

    iget v7, v0, Lcom/google/android/exoplayer2/upstream/j$a;->c:I

    iget-object v8, v0, Lcom/google/android/exoplayer2/upstream/j$a;->d:[B

    iget-object v9, v0, Lcom/google/android/exoplayer2/upstream/j$a;->e:Ljava/util/Map;

    iget-wide v10, v0, Lcom/google/android/exoplayer2/upstream/j$a;->f:J

    iget-wide v12, v0, Lcom/google/android/exoplayer2/upstream/j$a;->g:J

    iget-object v14, v0, Lcom/google/android/exoplayer2/upstream/j$a;->h:Ljava/lang/String;

    iget v15, v0, Lcom/google/android/exoplayer2/upstream/j$a;->i:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/j$a;->j:Ljava/lang/Object;

    const/16 v17, 0x0

    move-object v3, v1

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer2/upstream/j;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;Lcom/google/android/exoplayer2/upstream/j$1;)V

    return-object v1
.end method
