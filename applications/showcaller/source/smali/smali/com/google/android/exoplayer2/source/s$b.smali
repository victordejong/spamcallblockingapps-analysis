.class public final Lcom/google/android/exoplayer2/source/s$b;
.super Ljava/lang/Object;
.source "ExtractorMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/j$a;

.field private b:Lcom/google/android/exoplayer2/c1/l;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Object;

.field private e:Lcom/google/android/exoplayer2/upstream/u;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/s$b;->a:Lcom/google/android/exoplayer2/upstream/j$a;

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/upstream/s;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/s;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/s$b;->e:Lcom/google/android/exoplayer2/upstream/u;

    const/high16 p1, 0x100000

    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/source/s$b;->f:I

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/s;
    .locals 10

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/s$b;->g:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/s$b;->b:Lcom/google/android/exoplayer2/c1/l;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/c1/f;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c1/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/s$b;->b:Lcom/google/android/exoplayer2/c1/l;

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/s;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/s$b;->a:Lcom/google/android/exoplayer2/upstream/j$a;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/s$b;->b:Lcom/google/android/exoplayer2/c1/l;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/s$b;->e:Lcom/google/android/exoplayer2/upstream/u;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/s$b;->c:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/exoplayer2/source/s$b;->f:I

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/s$b;->d:Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/s;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/j$a;Lcom/google/android/exoplayer2/c1/l;Lcom/google/android/exoplayer2/upstream/u;Ljava/lang/String;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/s$a;)V

    return-object v0
.end method
