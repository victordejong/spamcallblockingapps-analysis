.class public Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/log/PMLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PMLogMessage"
.end annotation


# static fields
.field static final PMSDK_TAG:Ljava/lang/String; = "OpenWrapSDK: "


# instance fields
.field final mLogLevel:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

.field final mMsg:Ljava/lang/String;

.field final mTAG:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenWrapSDK: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;->mTAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;->mMsg:Ljava/lang/String;

    iput-object p3, p0, Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;->mLogLevel:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    return-void
.end method
