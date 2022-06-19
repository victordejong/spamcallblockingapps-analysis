.class public final Landroidx/media2/exoplayer/external/trackselection/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final b:I

.field final c:[I

.field public final d:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field private final e:[I

.field private final f:[[[I

.field private final g:Landroidx/media2/exoplayer/external/source/TrackGroupArray;


# direct methods
.method constructor <init>([I[Landroidx/media2/exoplayer/external/source/TrackGroupArray;[I[[[ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/d$a;->c:[I

    .line 120
    iput-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/d$a;->d:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 121
    iput-object p4, p0, Landroidx/media2/exoplayer/external/trackselection/d$a;->f:[[[I

    .line 122
    iput-object p3, p0, Landroidx/media2/exoplayer/external/trackselection/d$a;->e:[I

    .line 123
    iput-object p5, p0, Landroidx/media2/exoplayer/external/trackselection/d$a;->g:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 124
    array-length p1, p1

    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/d$a;->b:I

    .line 125
    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/d$a;->a:I

    return-void
.end method
