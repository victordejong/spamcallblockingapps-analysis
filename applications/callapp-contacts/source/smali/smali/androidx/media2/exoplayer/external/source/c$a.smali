.class final Landroidx/media2/exoplayer/external/source/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/al;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/source/al;

.field b:Z

.field final synthetic c:Landroidx/media2/exoplayer/external/source/c;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/c;Landroidx/media2/exoplayer/external/source/al;)V
    .locals 0

    .line 286
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/c$a;->c:Landroidx/media2/exoplayer/external/source/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/c$a;->a:Landroidx/media2/exoplayer/external/source/al;

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    .line 339
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/c$a;->c:Landroidx/media2/exoplayer/external/source/c;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 342
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/c$a;->a:Landroidx/media2/exoplayer/external/source/al;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/al;->a(J)I

    move-result p1

    return p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/x;Landroidx/media2/exoplayer/external/b/e;Z)I
    .locals 10

    .line 307
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/c$a;->c:Landroidx/media2/exoplayer/external/source/c;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/c;->f()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    .line 310
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/c$a;->b:Z

    const/4 v2, 0x4

    const/4 v3, -0x4

    if-eqz v0, :cond_1

    .line 1074
    iput v2, p2, Landroidx/media2/exoplayer/external/b/a;->a:I

    return v3

    .line 314
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/c$a;->a:Landroidx/media2/exoplayer/external/source/al;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/al;->a(Landroidx/media2/exoplayer/external/x;Landroidx/media2/exoplayer/external/b/e;Z)I

    move-result p3

    const/4 v0, -0x5

    const-wide/high16 v4, -0x8000000000000000L

    if-ne p3, v0, :cond_6

    .line 316
    iget-object p2, p1, Landroidx/media2/exoplayer/external/x;->c:Landroidx/media2/exoplayer/external/Format;

    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/exoplayer/external/Format;

    .line 317
    iget p3, p2, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    if-nez p3, :cond_2

    iget p3, p2, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    if-eqz p3, :cond_5

    .line 319
    :cond_2
    iget-object p3, p0, Landroidx/media2/exoplayer/external/source/c$a;->c:Landroidx/media2/exoplayer/external/source/c;

    iget-wide v1, p3, Landroidx/media2/exoplayer/external/source/c;->b:J

    const-wide/16 v6, 0x0

    const/4 p3, 0x0

    cmp-long v3, v1, v6

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget v1, p2, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    .line 320
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/c$a;->c:Landroidx/media2/exoplayer/external/source/c;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/source/c;->c:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    iget p3, p2, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    .line 321
    :goto_1
    invoke-virtual {p2, v1, p3}, Landroidx/media2/exoplayer/external/Format;->copyWithGaplessInfo(II)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    iput-object p2, p1, Landroidx/media2/exoplayer/external/x;->c:Landroidx/media2/exoplayer/external/Format;

    :cond_5
    return v0

    .line 325
    :cond_6
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/c$a;->c:Landroidx/media2/exoplayer/external/source/c;

    iget-wide v6, p1, Landroidx/media2/exoplayer/external/source/c;->c:J

    cmp-long p1, v6, v4

    if-eqz p1, :cond_9

    if-ne p3, v3, :cond_7

    iget-wide v6, p2, Landroidx/media2/exoplayer/external/b/e;->d:J

    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/c$a;->c:Landroidx/media2/exoplayer/external/source/c;

    iget-wide v8, p1, Landroidx/media2/exoplayer/external/source/c;->c:J

    cmp-long p1, v6, v8

    if-gez p1, :cond_8

    :cond_7
    if-ne p3, v1, :cond_9

    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/c$a;->c:Landroidx/media2/exoplayer/external/source/c;

    .line 328
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/c;->d()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-nez p1, :cond_9

    .line 329
    :cond_8
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/b/e;->a()V

    .line 2074
    iput v2, p2, Landroidx/media2/exoplayer/external/b/a;->a:I

    const/4 p1, 0x1

    .line 331
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/c$a;->b:Z

    return v3

    :cond_9
    return p3
.end method

.method public final a()Z
    .locals 1

    .line 296
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/c$a;->c:Landroidx/media2/exoplayer/external/source/c;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/c;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/c$a;->a:Landroidx/media2/exoplayer/external/source/al;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/al;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/c$a;->a:Landroidx/media2/exoplayer/external/source/al;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/al;->b()V

    return-void
.end method
