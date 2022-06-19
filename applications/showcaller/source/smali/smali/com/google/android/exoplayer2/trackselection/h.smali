.class public abstract Lcom/google/android/exoplayer2/trackselection/h;
.super Ljava/lang/Object;
.source "TrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/h$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/exoplayer2/trackselection/h$a;

.field private b:Lcom/google/android/exoplayer2/upstream/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/exoplayer2/upstream/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/h;->b:Lcom/google/android/exoplayer2/upstream/f;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/f;

    return-object v0
.end method

.method public final b(Lcom/google/android/exoplayer2/trackselection/h$a;Lcom/google/android/exoplayer2/upstream/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/h;->a:Lcom/google/android/exoplayer2/trackselection/h$a;

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/h;->b:Lcom/google/android/exoplayer2/upstream/f;

    return-void
.end method

.method public abstract c(Ljava/lang/Object;)V
.end method

.method public abstract d([Lcom/google/android/exoplayer2/t0;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/source/v$a;Lcom/google/android/exoplayer2/y0;)Lcom/google/android/exoplayer2/trackselection/i;
.end method
