.class final Landroidx/media2/exoplayer/external/source/h$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/source/r;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/t$a;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/t;Z)V
    .locals 1

    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 861
    new-instance v0, Landroidx/media2/exoplayer/external/source/r;

    invoke-direct {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/r;-><init>(Landroidx/media2/exoplayer/external/source/t;Z)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/h$d;->a:Landroidx/media2/exoplayer/external/source/r;

    .line 862
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/h$d;->c:Ljava/util/List;

    .line 863
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/h$d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 0

    .line 867
    iput p1, p0, Landroidx/media2/exoplayer/external/source/h$d;->d:I

    .line 868
    iput p2, p0, Landroidx/media2/exoplayer/external/source/h$d;->e:I

    const/4 p1, 0x0

    .line 869
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/h$d;->f:Z

    .line 870
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/h$d;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
