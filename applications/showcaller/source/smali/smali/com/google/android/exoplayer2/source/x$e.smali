.class final Lcom/google/android/exoplayer2/source/x$e;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Lcom/google/android/exoplayer2/source/x;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/x;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x$e;->b:Lcom/google/android/exoplayer2/source/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/exoplayer2/source/x$e;->a:I

    return-void
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/source/x$e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/source/x$e;->a:I

    return p0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/f0;Lcom/google/android/exoplayer2/b1/e;Z)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x$e;->b:Lcom/google/android/exoplayer2/source/x;

    iget v1, p0, Lcom/google/android/exoplayer2/source/x$e;->a:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/x;->Z(ILcom/google/android/exoplayer2/f0;Lcom/google/android/exoplayer2/b1/e;Z)I

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x$e;->b:Lcom/google/android/exoplayer2/source/x;

    iget v1, p0, Lcom/google/android/exoplayer2/source/x$e;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/x;->U(I)V

    return-void
.end method

.method public c(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x$e;->b:Lcom/google/android/exoplayer2/source/x;

    iget v1, p0, Lcom/google/android/exoplayer2/source/x$e;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/x;->c0(IJ)I

    move-result p1

    return p1
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x$e;->b:Lcom/google/android/exoplayer2/source/x;

    iget v1, p0, Lcom/google/android/exoplayer2/source/x$e;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/x;->M(I)Z

    move-result v0

    return v0
.end method
