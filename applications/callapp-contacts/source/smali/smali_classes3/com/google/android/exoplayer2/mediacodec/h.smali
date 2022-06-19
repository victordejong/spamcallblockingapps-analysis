.class public interface abstract Lcom/google/android/exoplayer2/mediacodec/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/exoplayer2/mediacodec/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$ZF--0FkO7PTUMMlKaM7LXX4A5lM;->INSTANCE:Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$ZF--0FkO7PTUMMlKaM7LXX4A5lM;

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/h;->a:Lcom/google/android/exoplayer2/mediacodec/h;

    return-void
.end method


# virtual methods
.method public abstract getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/g;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method
