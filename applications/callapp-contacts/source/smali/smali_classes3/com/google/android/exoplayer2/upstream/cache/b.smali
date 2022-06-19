.class public final Lcom/google/android/exoplayer2/upstream/cache/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/h$a;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final b:Lcom/google/android/exoplayer2/upstream/h$a;

.field private final c:Lcom/google/android/exoplayer2/upstream/h$a;

.field private final d:I

.field private final e:Lcom/google/android/exoplayer2/upstream/g$a;

.field private final f:Lcom/google/android/exoplayer2/upstream/cache/a$a;

.field private final g:Lcom/google/android/exoplayer2/upstream/cache/f;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/h$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/cache/b;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/h$a;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/h$a;I)V
    .locals 7

    .line 50
    new-instance v3, Lcom/google/android/exoplayer2/upstream/FileDataSource$a;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/FileDataSource$a;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;-><init>()V

    .line 1068
    iput-object p1, v4, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 50
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/b;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/h$a;Lcom/google/android/exoplayer2/upstream/h$a;Lcom/google/android/exoplayer2/upstream/g$a;ILcom/google/android/exoplayer2/upstream/cache/a$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/h$a;Lcom/google/android/exoplayer2/upstream/h$a;Lcom/google/android/exoplayer2/upstream/g$a;ILcom/google/android/exoplayer2/upstream/cache/a$a;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 70
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/b;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/h$a;Lcom/google/android/exoplayer2/upstream/h$a;Lcom/google/android/exoplayer2/upstream/g$a;ILcom/google/android/exoplayer2/upstream/cache/a$a;Lcom/google/android/exoplayer2/upstream/cache/f;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/h$a;Lcom/google/android/exoplayer2/upstream/h$a;Lcom/google/android/exoplayer2/upstream/g$a;ILcom/google/android/exoplayer2/upstream/cache/a$a;Lcom/google/android/exoplayer2/upstream/cache/f;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 93
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->b:Lcom/google/android/exoplayer2/upstream/h$a;

    .line 94
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->c:Lcom/google/android/exoplayer2/upstream/h$a;

    .line 95
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->e:Lcom/google/android/exoplayer2/upstream/g$a;

    .line 96
    iput p5, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->d:I

    .line 97
    iput-object p6, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->f:Lcom/google/android/exoplayer2/upstream/cache/a$a;

    .line 98
    iput-object p7, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->g:Lcom/google/android/exoplayer2/upstream/cache/f;

    return-void
.end method


# virtual methods
.method public final synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/h;
    .locals 9

    .line 1103
    new-instance v8, Lcom/google/android/exoplayer2/upstream/cache/a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->b:Lcom/google/android/exoplayer2/upstream/h$a;

    .line 1105
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/h$a;->createDataSource()Lcom/google/android/exoplayer2/upstream/h;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->c:Lcom/google/android/exoplayer2/upstream/h$a;

    .line 1106
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/h$a;->createDataSource()Lcom/google/android/exoplayer2/upstream/h;

    move-result-object v3

    .line 1107
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->e:Lcom/google/android/exoplayer2/upstream/g$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/g$a;->a()Lcom/google/android/exoplayer2/upstream/g;

    move-result-object v0

    :goto_0
    move-object v4, v0

    iget v5, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->d:I

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->f:Lcom/google/android/exoplayer2/upstream/cache/a$a;

    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->g:Lcom/google/android/exoplayer2/upstream/cache/f;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/a;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/g;ILcom/google/android/exoplayer2/upstream/cache/a$a;Lcom/google/android/exoplayer2/upstream/cache/f;)V

    return-object v8
.end method
