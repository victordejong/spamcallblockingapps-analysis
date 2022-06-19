.class public Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->a:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b;->a:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->b:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b;->b:Ljava/lang/String;

    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->c:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b;->c:Z

    iget p1, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->d:I

    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b;->d:I

    return-void
.end method


# virtual methods
.method public a(Z)Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b;
    .locals 0

    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b;->c:Z

    return-object p0
.end method
