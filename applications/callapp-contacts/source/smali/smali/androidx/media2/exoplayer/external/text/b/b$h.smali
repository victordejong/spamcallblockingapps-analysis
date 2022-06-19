.class final Landroidx/media2/exoplayer/external/text/b/b$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/text/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/text/b/b$f;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/text/b/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/text/b/b$c;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/text/b/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/text/b/b$c;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroidx/media2/exoplayer/external/text/b/b$b;

.field public i:Landroidx/media2/exoplayer/external/text/b/b$d;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/b/b$h;->c:Landroid/util/SparseArray;

    .line 826
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/b/b$h;->d:Landroid/util/SparseArray;

    .line 827
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/b/b$h;->e:Landroid/util/SparseArray;

    .line 828
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/b/b$h;->f:Landroid/util/SparseArray;

    .line 829
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/b/b$h;->g:Landroid/util/SparseArray;

    .line 835
    iput p1, p0, Landroidx/media2/exoplayer/external/text/b/b$h;->a:I

    .line 836
    iput p2, p0, Landroidx/media2/exoplayer/external/text/b/b$h;->b:I

    return-void
.end method
