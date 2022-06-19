.class final enum Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$2;
.super Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;-><init>(Ljava/lang/String;ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$1;)V

    return-void
.end method


# virtual methods
.method protected final verify(Landroid/net/NetworkInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
