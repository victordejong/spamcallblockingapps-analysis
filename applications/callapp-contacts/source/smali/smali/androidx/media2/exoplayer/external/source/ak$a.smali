.class final Landroidx/media2/exoplayer/external/source/ak$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public c:Z

.field public d:Landroidx/media2/exoplayer/external/upstream/a;

.field public e:Landroidx/media2/exoplayer/external/source/ak$a;


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/ak$a;->a:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 793
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/ak$a;->b:J

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    .line 816
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ak$a;->a:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ak$a;->d:Landroidx/media2/exoplayer/external/upstream/a;

    iget p1, p1, Landroidx/media2/exoplayer/external/upstream/a;->b:I

    add-int/2addr p2, p1

    return p2
.end method

.method public final a()Landroidx/media2/exoplayer/external/source/ak$a;
    .locals 2

    const/4 v0, 0x0

    .line 825
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ak$a;->d:Landroidx/media2/exoplayer/external/upstream/a;

    .line 826
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ak$a;->e:Landroidx/media2/exoplayer/external/source/ak$a;

    .line 827
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ak$a;->e:Landroidx/media2/exoplayer/external/source/ak$a;

    return-object v1
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/a;Landroidx/media2/exoplayer/external/source/ak$a;)V
    .locals 0

    .line 803
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ak$a;->d:Landroidx/media2/exoplayer/external/upstream/a;

    .line 804
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ak$a;->e:Landroidx/media2/exoplayer/external/source/ak$a;

    const/4 p1, 0x1

    .line 805
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/ak$a;->c:Z

    return-void
.end method
