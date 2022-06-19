.class final Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/TrackSelectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public constructor <init>(IILcom/google/android/exoplayer2/Format;)V
    .locals 0

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;->a:I

    .line 440
    iput p2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;->b:I

    .line 441
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;->c:Lcom/google/android/exoplayer2/Format;

    return-void
.end method
