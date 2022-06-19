.class public Lcom/mopub/network/SingleImpression;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/mopub/network/ImpressionData;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mopub/network/ImpressionData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mopub/network/SingleImpression;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mopub/network/SingleImpression;->b:Lcom/mopub/network/ImpressionData;

    return-void
.end method


# virtual methods
.method public sendImpression()V
    .locals 4

    iget-object v0, p0, Lcom/mopub/network/SingleImpression;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mopub/network/SingleImpression;->b:Lcom/mopub/network/ImpressionData;

    invoke-static {v0, v1}, Lcom/mopub/network/ImpressionsEmitter;->b(Ljava/lang/String;Lcom/mopub/network/ImpressionData;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SingleImpression ad unit id may not be null."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
