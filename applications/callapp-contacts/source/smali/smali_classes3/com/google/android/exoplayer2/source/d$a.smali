.class final Lcom/google/android/exoplayer2/source/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/c;
.implements Lcom/google/android/exoplayer2/source/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/d;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/exoplayer2/source/s$a;

.field private d:Lcom/google/android/exoplayer2/drm/c$a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/d;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d$a;->a:Lcom/google/android/exoplayer2/source/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/d;->a(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/source/s$a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/d$a;->c:Lcom/google/android/exoplayer2/source/s$a;

    .line 218
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/d;->b(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/drm/c$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d$a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    .line 219
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/d$a;->b:Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/source/o;)Lcom/google/android/exoplayer2/source/o;
    .locals 13

    .line 360
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$a;->a:Lcom/google/android/exoplayer2/source/d;

    iget-wide v1, p1, Lcom/google/android/exoplayer2/source/o;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/d;->a(J)J

    move-result-wide v9

    .line 361
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$a;->a:Lcom/google/android/exoplayer2/source/d;

    iget-wide v1, p1, Lcom/google/android/exoplayer2/source/o;->g:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/d;->a(J)J

    move-result-wide v11

    .line 362
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/o;->f:J

    cmp-long v2, v9, v0

    if-nez v2, :cond_0

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/o;->g:J

    cmp-long v2, v11, v0

    if-nez v2, :cond_0

    return-object p1

    .line 366
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/o;

    iget v4, p1, Lcom/google/android/exoplayer2/source/o;->a:I

    iget v5, p1, Lcom/google/android/exoplayer2/source/o;->b:I

    iget-object v6, p1, Lcom/google/android/exoplayer2/source/o;->c:Lcom/google/android/exoplayer2/Format;

    iget v7, p1, Lcom/google/android/exoplayer2/source/o;->d:I

    iget-object v8, p1, Lcom/google/android/exoplayer2/source/o;->e:Ljava/lang/Object;

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer2/source/o;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    return-object v0
.end method

.method private f(ILcom/google/android/exoplayer2/source/r$a;)Z
    .locals 2

    if-eqz p2, :cond_0

    .line 340
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$a;->a:Lcom/google/android/exoplayer2/source/d;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/source/d;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$a;->c:Lcom/google/android/exoplayer2/source/s$a;

    iget v0, v0, Lcom/google/android/exoplayer2/source/s$a;->a:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$a;->c:Lcom/google/android/exoplayer2/source/s$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/s$a;->b:Lcom/google/android/exoplayer2/source/r$a;

    .line 348
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$a;->a:Lcom/google/android/exoplayer2/source/d;

    .line 350
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/d;->a(ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/source/s$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/d$a;->c:Lcom/google/android/exoplayer2/source/s$a;

    .line 352
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    iget v0, v0, Lcom/google/android/exoplayer2/drm/c$a;->a:I

    if-ne v0, p1, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/c$a;->b:Lcom/google/android/exoplayer2/source/r$a;

    .line 353
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 354
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$a;->a:Lcom/google/android/exoplayer2/source/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/d;->b(ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/drm/c$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d$a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final a(ILcom/google/android/exoplayer2/source/r$a;)V
    .locals 0

    .line 294
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/d$a;->f(ILcom/google/android/exoplayer2/source/r$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 295
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/d$a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/c$a;->a()V

    :cond_0
    return-void
.end method

.method public final a(ILcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V
    .locals 0

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/d$a;->f(ILcom/google/android/exoplayer2/source/r$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 231
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/d$a;->c:Lcom/google/android/exoplayer2/source/s$a;

    .line 232
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/d$a;->a(Lcom/google/android/exoplayer2/source/o;)Lcom/google/android/exoplayer2/source/o;

    move-result-object p2

    .line 231
    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/s$a;->a(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V

    :cond_0
    return-void
.end method

.method public final a(ILcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Ljava/io/IOException;Z)V
    .locals 0

    .line 268
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/d$a;->f(ILcom/google/android/exoplayer2/source/r$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 269
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/d$a;->c:Lcom/google/android/exoplayer2/source/s$a;

    .line 270
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/d$a;->a(Lcom/google/android/exoplayer2/source/o;)Lcom/google/android/exoplayer2/source/o;

    move-result-object p2

    .line 269
    invoke-virtual {p1, p3, p2, p5, p6}, Lcom/google/android/exoplayer2/source/s$a;->a(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public final a(ILcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/source/o;)V
    .locals 0

    .line 285
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/d$a;->f(ILcom/google/android/exoplayer2/source/r$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 286
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/d$a;->c:Lcom/google/android/exoplayer2/source/s$a;

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/d$a;->a(Lcom/google/android/exoplayer2/source/o;)Lcom/google/android/exoplayer2/source/o;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/s$a;->a(Lcom/google/android/exoplayer2/source/o;)V

    :cond_0
    return-void
.end method

.method public final a(ILcom/google/android/exoplayer2/source/r$a;Ljava/lang/Exception;)V
    .locals 0

    .line 309
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/d$a;->f(ILcom/google/android/exoplayer2/source/r$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 310
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/d$a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/drm/c$a;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final b(ILcom/google/android/exoplayer2/source/r$a;)V
    .locals 0

    .line 301
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/d$a;->f(ILcom/google/android/exoplayer2/source/r$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 302
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/d$a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/c$a;->b()V

    :cond_0
    return-void
.end method

.method public final b(ILcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V
    .locals 0

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/d$a;->f(ILcom/google/android/exoplayer2/source/r$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 243
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/d$a;->c:Lcom/google/android/exoplayer2/source/s$a;

    .line 244
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/d$a;->a(Lcom/google/android/exoplayer2/source/o;)Lcom/google/android/exoplayer2/source/o;

    move-result-object p2

    .line 243
    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/s$a;->b(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V

    :cond_0
    return-void
.end method

.method public final c(ILcom/google/android/exoplayer2/source/r$a;)V
    .locals 0

    .line 316
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/d$a;->f(ILcom/google/android/exoplayer2/source/r$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 317
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/d$a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/c$a;->c()V

    :cond_0
    return-void
.end method

.method public final c(ILcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V
    .locals 0

    .line 254
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/d$a;->f(ILcom/google/android/exoplayer2/source/r$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 255
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/d$a;->c:Lcom/google/android/exoplayer2/source/s$a;

    .line 256
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/d$a;->a(Lcom/google/android/exoplayer2/source/o;)Lcom/google/android/exoplayer2/source/o;

    move-result-object p2

    .line 255
    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/s$a;->c(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V

    :cond_0
    return-void
.end method

.method public final d(ILcom/google/android/exoplayer2/source/r$a;)V
    .locals 0

    .line 323
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/d$a;->f(ILcom/google/android/exoplayer2/source/r$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 324
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/d$a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/c$a;->d()V

    :cond_0
    return-void
.end method

.method public final e(ILcom/google/android/exoplayer2/source/r$a;)V
    .locals 0

    .line 330
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/d$a;->f(ILcom/google/android/exoplayer2/source/r$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 331
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/d$a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/c$a;->e()V

    :cond_0
    return-void
.end method
