.class final Lcom/google/android/exoplayer2/source/w$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public final b:[Z

.field public final c:[Z

.field public final d:[Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroupArray;[Z)V
    .locals 0

    .line 1113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1114
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w$e;->a:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 1115
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/w$e;->b:[Z

    .line 1116
    iget p2, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array p2, p2, [Z

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/w$e;->c:[Z

    .line 1117
    iget p1, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w$e;->d:[Z

    return-void
.end method
