.class public final Landroidx/media2/exoplayer/external/source/n;
.super Landroidx/media2/exoplayer/external/source/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/n$b;,
        Landroidx/media2/exoplayer/external/source/n$c;,
        Landroidx/media2/exoplayer/external/source/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/exoplayer/external/source/d<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/source/ai;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/f$a;Landroidx/media2/exoplayer/external/extractor/j;Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/n$a;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 258
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/n;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/f$a;Landroidx/media2/exoplayer/external/extractor/j;Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/n$a;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/f$a;Landroidx/media2/exoplayer/external/extractor/j;Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/n$a;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v7, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 281
    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/source/n;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/f$a;Landroidx/media2/exoplayer/external/extractor/j;Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/n$a;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/f$a;Landroidx/media2/exoplayer/external/extractor/j;Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/n$a;Ljava/lang/String;I)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 314
    new-instance v4, Landroidx/media2/exoplayer/external/upstream/q;

    invoke-direct {v4}, Landroidx/media2/exoplayer/external/upstream/q;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/source/n;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/f$a;Landroidx/media2/exoplayer/external/extractor/j;Landroidx/media2/exoplayer/external/upstream/t;Ljava/lang/String;ILjava/lang/Object;)V

    if-eqz p5, :cond_0

    if-eqz p4, :cond_0

    .line 323
    new-instance p1, Landroidx/media2/exoplayer/external/source/n$b;

    invoke-direct {p1, p5}, Landroidx/media2/exoplayer/external/source/n$b;-><init>(Landroidx/media2/exoplayer/external/source/n$a;)V

    invoke-virtual {p0, p4, p1}, Landroidx/media2/exoplayer/external/source/n;->a(Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/u;)V

    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/f$a;Landroidx/media2/exoplayer/external/extractor/j;Landroidx/media2/exoplayer/external/upstream/t;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 10

    .line 334
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/d;-><init>()V

    .line 335
    new-instance v9, Landroidx/media2/exoplayer/external/source/ai;

    .line 1040
    sget-object v4, Landroidx/media2/exoplayer/external/drm/k;->e:Landroidx/media2/exoplayer/external/drm/k;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 340
    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/source/ai;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/f$a;Landroidx/media2/exoplayer/external/extractor/j;Landroidx/media2/exoplayer/external/drm/k;Landroidx/media2/exoplayer/external/upstream/t;Ljava/lang/String;ILjava/lang/Object;)V

    move-object v0, p0

    iput-object v9, v0, Landroidx/media2/exoplayer/external/source/n;->a:Landroidx/media2/exoplayer/external/source/ai;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/f$a;Landroidx/media2/exoplayer/external/extractor/j;Landroidx/media2/exoplayer/external/upstream/t;Ljava/lang/String;ILjava/lang/Object;Landroidx/media2/exoplayer/external/source/n$1;)V
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p7}, Landroidx/media2/exoplayer/external/source/n;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/f$a;Landroidx/media2/exoplayer/external/extractor/j;Landroidx/media2/exoplayer/external/upstream/t;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/upstream/b;J)Landroidx/media2/exoplayer/external/source/s;
    .locals 1

    .line 367
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/n;->a:Landroidx/media2/exoplayer/external/source/ai;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/ai;->a(Landroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/upstream/b;J)Landroidx/media2/exoplayer/external/source/s;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/s;)V
    .locals 1

    .line 372
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/n;->a:Landroidx/media2/exoplayer/external/source/ai;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/source/ai;->a(Landroidx/media2/exoplayer/external/source/s;)V

    return-void
.end method

.method protected final a(Landroidx/media2/exoplayer/external/upstream/w;)V
    .locals 1

    .line 355
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/source/d;->a(Landroidx/media2/exoplayer/external/upstream/w;)V

    .line 356
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/n;->a:Landroidx/media2/exoplayer/external/source/ai;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/media2/exoplayer/external/source/n;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t;Landroidx/media2/exoplayer/external/al;)V
    .locals 0

    .line 1362
    invoke-virtual {p0, p3}, Landroidx/media2/exoplayer/external/source/n;->a(Landroidx/media2/exoplayer/external/al;)V

    return-void
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .line 350
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/n;->a:Landroidx/media2/exoplayer/external/source/ai;

    .line 1255
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ai;->a:Ljava/lang/Object;

    return-object v0
.end method
