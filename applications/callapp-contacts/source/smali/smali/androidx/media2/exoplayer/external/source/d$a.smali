.class final Landroidx/media2/exoplayer/external/source/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/exoplayer/external/source/d;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:Landroidx/media2/exoplayer/external/source/u$a;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/d;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 228
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/d$a;->a:Landroidx/media2/exoplayer/external/source/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/source/d;->a(Landroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/source/u$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/d$a;->c:Landroidx/media2/exoplayer/external/source/u$a;

    .line 230
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/d$a;->b:Ljava/lang/Object;

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/source/u$c;)Landroidx/media2/exoplayer/external/source/u$c;
    .locals 13

    .line 344
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/d$a;->a:Landroidx/media2/exoplayer/external/source/d;

    iget-wide v1, p1, Landroidx/media2/exoplayer/external/source/u$c;->f:J

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/source/d;->a(J)J

    move-result-wide v9

    .line 345
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/d$a;->a:Landroidx/media2/exoplayer/external/source/d;

    iget-wide v1, p1, Landroidx/media2/exoplayer/external/source/u$c;->g:J

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/source/d;->a(J)J

    move-result-wide v11

    .line 346
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/source/u$c;->f:J

    cmp-long v2, v9, v0

    if-nez v2, :cond_0

    iget-wide v0, p1, Landroidx/media2/exoplayer/external/source/u$c;->g:J

    cmp-long v2, v11, v0

    if-nez v2, :cond_0

    return-object p1

    .line 350
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/source/u$c;

    iget v4, p1, Landroidx/media2/exoplayer/external/source/u$c;->a:I

    iget v5, p1, Landroidx/media2/exoplayer/external/source/u$c;->b:I

    iget-object v6, p1, Landroidx/media2/exoplayer/external/source/u$c;->c:Landroidx/media2/exoplayer/external/Format;

    iget v7, p1, Landroidx/media2/exoplayer/external/source/u$c;->d:I

    iget-object v8, p1, Landroidx/media2/exoplayer/external/source/u$c;->e:Ljava/lang/Object;

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Landroidx/media2/exoplayer/external/source/u$c;-><init>(IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    return-object v0
.end method

.method private d(ILandroidx/media2/exoplayer/external/source/t$a;)Z
    .locals 2

    if-eqz p2, :cond_0

    .line 328
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/d$a;->a:Landroidx/media2/exoplayer/external/source/d;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/d$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Landroidx/media2/exoplayer/external/source/d;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/source/t$a;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    .line 334
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/d$a;->a:Landroidx/media2/exoplayer/external/source/d;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/d$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroidx/media2/exoplayer/external/source/d;->a(Ljava/lang/Object;I)I

    move-result p1

    .line 335
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/d$a;->c:Landroidx/media2/exoplayer/external/source/u$a;

    iget v0, v0, Landroidx/media2/exoplayer/external/source/u$a;->a:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/d$a;->c:Landroidx/media2/exoplayer/external/source/u$a;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/u$a;->b:Landroidx/media2/exoplayer/external/source/t$a;

    .line 336
    invoke-static {v0, p2}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 337
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/d$a;->a:Landroidx/media2/exoplayer/external/source/d;

    .line 338
    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/d;->a(ILandroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/source/u$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/d$a;->c:Landroidx/media2/exoplayer/external/source/u$a;

    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final a(ILandroidx/media2/exoplayer/external/source/t$a;)V
    .locals 0

    .line 235
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/d$a;->d(ILandroidx/media2/exoplayer/external/source/t$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 236
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/d$a;->a:Landroidx/media2/exoplayer/external/source/d;

    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/d$a;->c:Landroidx/media2/exoplayer/external/source/u$a;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/source/u$a;->b:Landroidx/media2/exoplayer/external/source/t$a;

    .line 237
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/exoplayer/external/source/t$a;

    .line 236
    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/source/d;->b(Landroidx/media2/exoplayer/external/source/t$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 238
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/d$a;->c:Landroidx/media2/exoplayer/external/source/u$a;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/u$a;->a()V

    :cond_0
    return-void
.end method

.method public final a(ILandroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/d$a;->d(ILandroidx/media2/exoplayer/external/source/t$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/d$a;->c:Landroidx/media2/exoplayer/external/source/u$a;

    invoke-direct {p0, p4}, Landroidx/media2/exoplayer/external/source/d$a;->a(Landroidx/media2/exoplayer/external/source/u$c;)Landroidx/media2/exoplayer/external/source/u$c;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;)V

    :cond_0
    return-void
.end method

.method public final a(ILandroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;Ljava/io/IOException;Z)V
    .locals 0

    .line 294
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/d$a;->d(ILandroidx/media2/exoplayer/external/source/t$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 295
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/d$a;->c:Landroidx/media2/exoplayer/external/source/u$a;

    .line 296
    invoke-direct {p0, p4}, Landroidx/media2/exoplayer/external/source/d$a;->a(Landroidx/media2/exoplayer/external/source/u$c;)Landroidx/media2/exoplayer/external/source/u$c;

    move-result-object p2

    .line 295
    invoke-virtual {p1, p3, p2, p5, p6}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public final a(ILandroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/source/u$c;)V
    .locals 0

    .line 318
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/d$a;->d(ILandroidx/media2/exoplayer/external/source/t$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 319
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/d$a;->c:Landroidx/media2/exoplayer/external/source/u$a;

    invoke-direct {p0, p3}, Landroidx/media2/exoplayer/external/source/d$a;->a(Landroidx/media2/exoplayer/external/source/u$c;)Landroidx/media2/exoplayer/external/source/u$c;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroidx/media2/exoplayer/external/source/u$c;)V

    :cond_0
    return-void
.end method

.method public final b(ILandroidx/media2/exoplayer/external/source/t$a;)V
    .locals 0

    .line 245
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/d$a;->d(ILandroidx/media2/exoplayer/external/source/t$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 246
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/d$a;->a:Landroidx/media2/exoplayer/external/source/d;

    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/d$a;->c:Landroidx/media2/exoplayer/external/source/u$a;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/source/u$a;->b:Landroidx/media2/exoplayer/external/source/t$a;

    .line 247
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/exoplayer/external/source/t$a;

    .line 246
    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/source/d;->b(Landroidx/media2/exoplayer/external/source/t$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 248
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/d$a;->c:Landroidx/media2/exoplayer/external/source/u$a;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/u$a;->b()V

    :cond_0
    return-void
.end method

.method public final b(ILandroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;)V
    .locals 0

    .line 270
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/d$a;->d(ILandroidx/media2/exoplayer/external/source/t$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 271
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/d$a;->c:Landroidx/media2/exoplayer/external/source/u$a;

    invoke-direct {p0, p4}, Landroidx/media2/exoplayer/external/source/d$a;->a(Landroidx/media2/exoplayer/external/source/u$c;)Landroidx/media2/exoplayer/external/source/u$c;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroidx/media2/exoplayer/external/source/u$a;->b(Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;)V

    :cond_0
    return-void
.end method

.method public final c(ILandroidx/media2/exoplayer/external/source/t$a;)V
    .locals 0

    .line 302
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/d$a;->d(ILandroidx/media2/exoplayer/external/source/t$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 303
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/d$a;->c:Landroidx/media2/exoplayer/external/source/u$a;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/u$a;->c()V

    :cond_0
    return-void
.end method

.method public final c(ILandroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;)V
    .locals 0

    .line 281
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/d$a;->d(ILandroidx/media2/exoplayer/external/source/t$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 282
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/d$a;->c:Landroidx/media2/exoplayer/external/source/u$a;

    invoke-direct {p0, p4}, Landroidx/media2/exoplayer/external/source/d$a;->a(Landroidx/media2/exoplayer/external/source/u$c;)Landroidx/media2/exoplayer/external/source/u$c;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroidx/media2/exoplayer/external/source/u$a;->c(Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;)V

    :cond_0
    return-void
.end method
