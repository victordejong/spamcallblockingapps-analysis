.class public final Lcom/google/android/exoplayer2/audio/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/google/android/exoplayer2/audio/d$a;->a:I

    .line 56
    iput v0, p0, Lcom/google/android/exoplayer2/audio/d$a;->c:I

    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lcom/google/android/exoplayer2/audio/d$a;->b:I

    .line 58
    iput v0, p0, Lcom/google/android/exoplayer2/audio/d$a;->d:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/exoplayer2/audio/d;
    .locals 7

    .line 93
    new-instance v6, Lcom/google/android/exoplayer2/audio/d;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/d$a;->a:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/d$a;->c:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/d$a;->b:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/d$a;->d:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/d;-><init>(IIIILcom/google/android/exoplayer2/audio/d$1;)V

    return-object v6
.end method
