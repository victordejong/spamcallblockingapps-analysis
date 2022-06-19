.class public final Lcom/google/android/exoplayer2/source/r$a;
.super Lcom/google/android/exoplayer2/source/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/q;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/q;-><init>(Lcom/google/android/exoplayer2/source/q;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/q;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJ)V
    .locals 0

    .line 98
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/q;-><init>(Ljava/lang/Object;IIJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/q;-><init>(Ljava/lang/Object;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/q;-><init>(Ljava/lang/Object;JI)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/q;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/r$a;->b(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/r$a;
    .locals 1

    .line 108
    new-instance v0, Lcom/google/android/exoplayer2/source/r$a;

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/q;->a(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/q;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/r$a;-><init>(Lcom/google/android/exoplayer2/source/q;)V

    return-object v0
.end method
