.class public Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mNoAdsFound:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Unknown error"

    .line 15
    :cond_0
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;->mMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isNoAdsFound()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;->mNoAdsFound:Z

    return v0
.end method

.method public setNoAdsFound()V
    .locals 1

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;->mNoAdsFound:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlayerInfo{message=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
