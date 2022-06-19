.class public final Lcom/google/android/exoplayer2/text/SimpleSubtitleOutputBuffer;
.super Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
.source ""


# instance fields
.field private final owner:Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SimpleSubtitleOutputBuffer;->owner:Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SimpleSubtitleOutputBuffer;->owner:Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;->releaseOutputBuffer(Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;)V

    return-void
.end method
