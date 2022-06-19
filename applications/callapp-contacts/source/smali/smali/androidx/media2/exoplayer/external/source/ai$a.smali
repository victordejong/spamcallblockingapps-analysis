.class public final Landroidx/media2/exoplayer/external/source/ai$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/upstream/f$a;

.field private b:Landroidx/media2/exoplayer/external/extractor/j;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Object;

.field private e:Landroidx/media2/exoplayer/external/drm/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/k<",
            "*>;"
        }
    .end annotation
.end field

.field private f:Landroidx/media2/exoplayer/external/upstream/t;

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/f$a;)V
    .locals 1

    .line 74
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/e;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/e;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/source/ai$a;-><init>(Landroidx/media2/exoplayer/external/upstream/f$a;Landroidx/media2/exoplayer/external/extractor/j;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/f$a;Landroidx/media2/exoplayer/external/extractor/j;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ai$a;->a:Landroidx/media2/exoplayer/external/upstream/f$a;

    .line 85
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ai$a;->b:Landroidx/media2/exoplayer/external/extractor/j;

    .line 1040
    sget-object p1, Landroidx/media2/exoplayer/external/drm/k;->e:Landroidx/media2/exoplayer/external/drm/k;

    .line 86
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ai$a;->e:Landroidx/media2/exoplayer/external/drm/k;

    .line 87
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/q;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/upstream/q;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ai$a;->f:Landroidx/media2/exoplayer/external/upstream/t;

    const/high16 p1, 0x100000

    .line 88
    iput p1, p0, Landroidx/media2/exoplayer/external/source/ai$a;->g:I

    return-void
.end method


# virtual methods
.method public final synthetic b(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/t;
    .locals 10

    const/4 v0, 0x1

    .line 1194
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ai$a;->h:Z

    .line 1195
    new-instance v0, Landroidx/media2/exoplayer/external/source/ai;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ai$a;->a:Landroidx/media2/exoplayer/external/upstream/f$a;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ai$a;->b:Landroidx/media2/exoplayer/external/extractor/j;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/ai$a;->e:Landroidx/media2/exoplayer/external/drm/k;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ai$a;->f:Landroidx/media2/exoplayer/external/upstream/t;

    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/ai$a;->c:Ljava/lang/String;

    iget v8, p0, Landroidx/media2/exoplayer/external/source/ai$a;->g:I

    iget-object v9, p0, Landroidx/media2/exoplayer/external/source/ai$a;->d:Ljava/lang/Object;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Landroidx/media2/exoplayer/external/source/ai;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/f$a;Landroidx/media2/exoplayer/external/extractor/j;Landroidx/media2/exoplayer/external/drm/k;Landroidx/media2/exoplayer/external/upstream/t;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v0
.end method
