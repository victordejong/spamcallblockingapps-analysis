.class public final Lcom/google/android/exoplayer2/mediacodec/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/media/MediaCodec;)Lcom/google/android/exoplayer2/mediacodec/f;
    .locals 2

    .line 43
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/j;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/mediacodec/j;-><init>(Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/mediacodec/j$1;)V

    return-object v0
.end method
