.class public final Lcom/google/android/exoplayer2/source/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/h$a;

.field private b:Lcom/google/android/exoplayer2/extractor/l;

.field private c:Lcom/google/android/exoplayer2/drm/e;

.field private d:Lcom/google/android/exoplayer2/upstream/r;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/h$a;)V
    .locals 1

    .line 72
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/f;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/x$a;-><init>(Lcom/google/android/exoplayer2/upstream/h$a;Lcom/google/android/exoplayer2/extractor/l;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/h$a;Lcom/google/android/exoplayer2/extractor/l;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x$a;->a:Lcom/google/android/exoplayer2/upstream/h$a;

    .line 83
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/x$a;->b:Lcom/google/android/exoplayer2/extractor/l;

    .line 84
    new-instance p1, Lcom/google/android/exoplayer2/drm/b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/drm/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x$a;->c:Lcom/google/android/exoplayer2/drm/e;

    .line 85
    new-instance p1, Lcom/google/android/exoplayer2/upstream/p;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/p;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x$a;->d:Lcom/google/android/exoplayer2/upstream/r;

    const/high16 p1, 0x100000

    .line 86
    iput p1, p0, Lcom/google/android/exoplayer2/source/x$a;->e:I

    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/x;
    .locals 7

    .line 209
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem$c;->h:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x$a;->g:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 211
    :goto_0
    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaItem$c;->f:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/x$a;->f:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 214
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem;->a()Lcom/google/android/exoplayer2/MediaItem$a;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x$a;->g:Ljava/lang/Object;

    .line 1547
    iput-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$a;->n:Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x$a;->f:Ljava/lang/String;

    .line 2398
    iput-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$a;->l:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$a;->a()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 216
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem;->a()Lcom/google/android/exoplayer2/MediaItem$a;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x$a;->g:Ljava/lang/Object;

    .line 2547
    iput-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$a;->n:Ljava/lang/Object;

    .line 216
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$a;->a()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 218
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem;->a()Lcom/google/android/exoplayer2/MediaItem$a;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x$a;->f:Ljava/lang/String;

    .line 3398
    iput-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$a;->l:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$a;->a()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    :cond_4
    :goto_2
    move-object v1, p1

    .line 220
    new-instance p1, Lcom/google/android/exoplayer2/source/x;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/x$a;->a:Lcom/google/android/exoplayer2/upstream/h$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/x$a;->b:Lcom/google/android/exoplayer2/extractor/l;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x$a;->c:Lcom/google/android/exoplayer2/drm/e;

    .line 224
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/e;->a(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/drm/d;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/x$a;->d:Lcom/google/android/exoplayer2/upstream/r;

    iget v6, p0, Lcom/google/android/exoplayer2/source/x$a;->e:I

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/x;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/h$a;Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/drm/d;Lcom/google/android/exoplayer2/upstream/r;I)V

    return-object p1
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/r;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/x$a;->b(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/x;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/x;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$a;-><init>()V

    .line 1173
    iput-object p1, v0, Lcom/google/android/exoplayer2/MediaItem$a;->b:Landroid/net/Uri;

    .line 197
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$a;->a()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/x$a;->b(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/x;

    move-result-object p1

    return-object p1
.end method

.method public final a()[I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    return-object v0
.end method
