.class public final Landroidx/media2/exoplayer/external/source/ai;
.super Landroidx/media2/exoplayer/external/source/b;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/af$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/ai$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field private final b:Landroid/net/Uri;

.field private final c:Landroidx/media2/exoplayer/external/upstream/f$a;

.field private final d:Landroidx/media2/exoplayer/external/extractor/j;

.field private final e:Landroidx/media2/exoplayer/external/drm/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/k<",
            "*>;"
        }
    .end annotation
.end field

.field private final f:Landroidx/media2/exoplayer/external/upstream/t;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private i:J

.field private j:Z

.field private k:Landroidx/media2/exoplayer/external/upstream/w;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/f$a;Landroidx/media2/exoplayer/external/extractor/j;Landroidx/media2/exoplayer/external/drm/k;Landroidx/media2/exoplayer/external/upstream/t;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroidx/media2/exoplayer/external/upstream/f$a;",
            "Landroidx/media2/exoplayer/external/extractor/j;",
            "Landroidx/media2/exoplayer/external/drm/k<",
            "*>;",
            "Landroidx/media2/exoplayer/external/upstream/t;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 240
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/b;-><init>()V

    .line 241
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ai;->b:Landroid/net/Uri;

    .line 242
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ai;->c:Landroidx/media2/exoplayer/external/upstream/f$a;

    .line 243
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/ai;->d:Landroidx/media2/exoplayer/external/extractor/j;

    .line 244
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/ai;->e:Landroidx/media2/exoplayer/external/drm/k;

    .line 245
    iput-object p5, p0, Landroidx/media2/exoplayer/external/source/ai;->f:Landroidx/media2/exoplayer/external/upstream/t;

    .line 246
    iput-object p6, p0, Landroidx/media2/exoplayer/external/source/ai;->g:Ljava/lang/String;

    .line 247
    iput p7, p0, Landroidx/media2/exoplayer/external/source/ai;->h:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 248
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/ai;->i:J

    .line 249
    iput-object p8, p0, Landroidx/media2/exoplayer/external/source/ai;->a:Ljava/lang/Object;

    return-void
.end method

.method private b(JZ)V
    .locals 7

    .line 314
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/ai;->i:J

    .line 315
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/source/ai;->j:Z

    .line 317
    new-instance p1, Landroidx/media2/exoplayer/external/source/ao;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/source/ai;->i:J

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/source/ai;->j:Z

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ai;->a:Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/ao;-><init>(JZZLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/ai;->a(Landroidx/media2/exoplayer/external/al;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/upstream/b;J)Landroidx/media2/exoplayer/external/source/s;
    .locals 11

    .line 271
    iget-object p3, p0, Landroidx/media2/exoplayer/external/source/ai;->c:Landroidx/media2/exoplayer/external/upstream/f$a;

    invoke-interface {p3}, Landroidx/media2/exoplayer/external/upstream/f$a;->a()Landroidx/media2/exoplayer/external/upstream/f;

    move-result-object v2

    .line 272
    iget-object p3, p0, Landroidx/media2/exoplayer/external/source/ai;->k:Landroidx/media2/exoplayer/external/upstream/w;

    if-eqz p3, :cond_0

    .line 273
    invoke-interface {v2, p3}, Landroidx/media2/exoplayer/external/upstream/f;->a(Landroidx/media2/exoplayer/external/upstream/w;)V

    .line 275
    :cond_0
    new-instance p3, Landroidx/media2/exoplayer/external/source/af;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ai;->b:Landroid/net/Uri;

    iget-object p4, p0, Landroidx/media2/exoplayer/external/source/ai;->d:Landroidx/media2/exoplayer/external/extractor/j;

    .line 278
    invoke-interface {p4}, Landroidx/media2/exoplayer/external/extractor/j;->b()[Landroidx/media2/exoplayer/external/extractor/g;

    move-result-object v3

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ai;->e:Landroidx/media2/exoplayer/external/drm/k;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/ai;->f:Landroidx/media2/exoplayer/external/upstream/t;

    .line 281
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/ai;->a(Landroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/source/u$a;

    move-result-object v6

    iget-object v9, p0, Landroidx/media2/exoplayer/external/source/ai;->g:Ljava/lang/String;

    iget v10, p0, Landroidx/media2/exoplayer/external/source/ai;->h:I

    move-object v0, p3

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/source/af;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/f;[Landroidx/media2/exoplayer/external/extractor/g;Landroidx/media2/exoplayer/external/drm/k;Landroidx/media2/exoplayer/external/upstream/t;Landroidx/media2/exoplayer/external/source/u$a;Landroidx/media2/exoplayer/external/source/af$c;Landroidx/media2/exoplayer/external/upstream/b;Ljava/lang/String;I)V

    return-object p3
.end method

.method public final a(JZ)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 303
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/source/ai;->i:J

    .line 304
    :cond_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ai;->i:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ai;->j:Z

    if-ne v0, p3, :cond_1

    return-void

    .line 308
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/ai;->b(JZ)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/s;)V
    .locals 5

    .line 290
    check-cast p1, Landroidx/media2/exoplayer/external/source/af;

    .line 1205
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/source/af;->m:Z

    if-eqz v0, :cond_1

    .line 1208
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1209
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/ak;->c()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1211
    :cond_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/af;->j:[Landroidx/media2/exoplayer/external/source/j;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1212
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/j;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1215
    :cond_1
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/af;->c:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(Landroidx/media2/exoplayer/external/upstream/Loader$e;)V

    .line 1216
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/af;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1217
    iput-object v1, p1, Landroidx/media2/exoplayer/external/source/af;->f:Landroidx/media2/exoplayer/external/source/s$a;

    const/4 v0, 0x1

    .line 1218
    iput-boolean v0, p1, Landroidx/media2/exoplayer/external/source/af;->u:Z

    .line 1219
    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/af;->a:Landroidx/media2/exoplayer/external/source/u$a;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/u$a;->b()V

    return-void
.end method

.method protected final a(Landroidx/media2/exoplayer/external/upstream/w;)V
    .locals 2

    .line 260
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ai;->k:Landroidx/media2/exoplayer/external/upstream/w;

    .line 261
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ai;->i:J

    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/source/ai;->j:Z

    invoke-direct {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/source/ai;->b(JZ)V

    return-void
.end method

.method protected final c()V
    .locals 0

    return-void
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .line 255
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ai;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final f()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
