.class public final Landroidx/media2/exoplayer/external/trackselection/c;
.super Landroidx/media2/exoplayer/external/trackselection/b;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/trackselection/c;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;IILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;IILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 92
    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/trackselection/b;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    .line 93
    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/c;->a:I

    .line 94
    iput-object p4, p0, Landroidx/media2/exoplayer/external/trackselection/c;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(JJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ)V"
        }
    .end annotation

    return-void
.end method

.method public final b()I
    .locals 1

    .line 114
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/c;->a:I

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    .line 120
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/c;->f:Ljava/lang/Object;

    return-object v0
.end method
