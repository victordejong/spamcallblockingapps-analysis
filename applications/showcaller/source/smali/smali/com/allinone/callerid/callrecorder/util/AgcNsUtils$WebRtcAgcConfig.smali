.class Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;
.super Ljava/lang/Object;
.source "AgcNsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/callrecorder/util/AgcNsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebRtcAgcConfig"
.end annotation


# instance fields
.field private compressionGaindB:I

.field private limiterEnable:I

.field private targetLevelDbfs:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;->targetLevelDbfs:I

    return p1
.end method

.method static synthetic access$202(Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;->compressionGaindB:I

    return p1
.end method

.method static synthetic access$302(Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig;->limiterEnable:I

    return p1
.end method
