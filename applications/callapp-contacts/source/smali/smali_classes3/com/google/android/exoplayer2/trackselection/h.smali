.class public abstract Lcom/google/android/exoplayer2/trackselection/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/h$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/exoplayer2/trackselection/h$a;

.field private b:Lcom/google/android/exoplayer2/upstream/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a([Lcom/google/android/exoplayer2/ag;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/al;)Lcom/google/android/exoplayer2/trackselection/i;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public final a(Lcom/google/android/exoplayer2/trackselection/h$a;Lcom/google/android/exoplayer2/upstream/c;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/h;->a:Lcom/google/android/exoplayer2/trackselection/h$a;

    .line 113
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/h;->b:Lcom/google/android/exoplayer2/upstream/c;

    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method protected final d()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/h;->a:Lcom/google/android/exoplayer2/trackselection/h$a;

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/h$a;->onTrackSelectionsInvalidated()V

    :cond_0
    return-void
.end method

.method protected final e()Lcom/google/android/exoplayer2/upstream/c;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/h;->b:Lcom/google/android/exoplayer2/upstream/c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/c;

    return-object v0
.end method
