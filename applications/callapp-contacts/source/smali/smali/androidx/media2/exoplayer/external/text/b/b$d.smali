.class final Landroidx/media2/exoplayer/external/text/b/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/text/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/text/b/b$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIILandroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/text/b/b$e;",
            ">;)V"
        }
    .end annotation

    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 892
    iput p1, p0, Landroidx/media2/exoplayer/external/text/b/b$d;->a:I

    .line 893
    iput p2, p0, Landroidx/media2/exoplayer/external/text/b/b$d;->b:I

    .line 894
    iput p3, p0, Landroidx/media2/exoplayer/external/text/b/b$d;->c:I

    .line 895
    iput-object p4, p0, Landroidx/media2/exoplayer/external/text/b/b$d;->d:Landroid/util/SparseArray;

    return-void
.end method
