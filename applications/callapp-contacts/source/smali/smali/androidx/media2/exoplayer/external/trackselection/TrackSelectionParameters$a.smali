.class public Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Z

.field h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    sget-object v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->DEFAULT:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$a;-><init>(Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iget-object v0, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->preferredAudioLanguage:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$a;->e:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->preferredTextLanguage:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$a;->f:Ljava/lang/String;

    .line 59
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$a;->g:Z

    .line 60
    iget p1, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->disabledTextTrackSelectionFlags:I

    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$a;->h:I

    return-void
.end method


# virtual methods
.method public c(Z)Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$a;
    .locals 0

    .line 97
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$a;->g:Z

    return-object p0
.end method
