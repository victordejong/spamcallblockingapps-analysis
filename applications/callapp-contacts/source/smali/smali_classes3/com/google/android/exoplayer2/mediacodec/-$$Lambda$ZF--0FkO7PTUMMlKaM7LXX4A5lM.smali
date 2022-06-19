.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$ZF--0FkO7PTUMMlKaM7LXX4A5lM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/h;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$ZF--0FkO7PTUMMlKaM7LXX4A5lM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$ZF--0FkO7PTUMMlKaM7LXX4A5lM;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$ZF--0FkO7PTUMMlKaM7LXX4A5lM;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$ZF--0FkO7PTUMMlKaM7LXX4A5lM;->INSTANCE:Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$ZF--0FkO7PTUMMlKaM7LXX4A5lM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
