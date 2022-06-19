.class public final Lcom/google/android/exoplayer2/ui/TrackSelectionView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/ui/TrackSelectionView;->getDialog(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;I)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$selectionView:Lcom/google/android/exoplayer2/ui/TrackSelectionView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/TrackSelectionView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$1;->val$selectionView:Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$1;->val$selectionView:Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->access$000(Lcom/google/android/exoplayer2/ui/TrackSelectionView;)V

    return-void
.end method
