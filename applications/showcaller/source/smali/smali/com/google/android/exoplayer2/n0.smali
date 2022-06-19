.class public final synthetic Lcom/google/android/exoplayer2/n0;
.super Ljava/lang/Object;
.source "Player.java"


# direct methods
.method public static a(Lcom/google/android/exoplayer2/o0$a;Z)V
    .locals 0

    return-void
.end method

.method public static b(Lcom/google/android/exoplayer2/o0$a;Z)V
    .locals 0

    return-void
.end method

.method public static c(Lcom/google/android/exoplayer2/o0$a;Lcom/google/android/exoplayer2/l0;)V
    .locals 0

    return-void
.end method

.method public static d(Lcom/google/android/exoplayer2/o0$a;I)V
    .locals 0

    return-void
.end method

.method public static e(Lcom/google/android/exoplayer2/o0$a;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    return-void
.end method

.method public static f(Lcom/google/android/exoplayer2/o0$a;I)V
    .locals 0

    return-void
.end method

.method public static g(Lcom/google/android/exoplayer2/o0$a;I)V
    .locals 0

    return-void
.end method

.method public static h(Lcom/google/android/exoplayer2/o0$a;)V
    .locals 0

    return-void
.end method

.method public static i(Lcom/google/android/exoplayer2/o0$a;Z)V
    .locals 0

    return-void
.end method

.method public static j(Lcom/google/android/exoplayer2/o0$a;Lcom/google/android/exoplayer2/y0;I)V
    .locals 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/o0$a;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/y0;->p()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/y0$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/y0$c;-><init>()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1, v0}, Lcom/google/android/exoplayer2/y0;->n(ILcom/google/android/exoplayer2/y0$c;)Lcom/google/android/exoplayer2/y0$c;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/y0$c;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-interface {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/o0$a;->onTimelineChanged(Lcom/google/android/exoplayer2/y0;Ljava/lang/Object;I)V

    return-void
.end method

.method public static k(Lcom/google/android/exoplayer2/o0$a;Lcom/google/android/exoplayer2/y0;Ljava/lang/Object;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static l(Lcom/google/android/exoplayer2/o0$a;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/g;)V
    .locals 0

    return-void
.end method
