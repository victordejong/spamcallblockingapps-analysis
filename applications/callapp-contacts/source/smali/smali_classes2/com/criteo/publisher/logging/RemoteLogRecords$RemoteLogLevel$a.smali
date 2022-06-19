.class public final Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel$a;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 68
    :cond_0
    sget-object p0, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->ERROR:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    goto :goto_0

    .line 67
    :cond_1
    sget-object p0, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->WARNING:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    goto :goto_0

    .line 66
    :cond_2
    sget-object p0, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->INFO:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    goto :goto_0

    .line 65
    :cond_3
    sget-object p0, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->DEBUG:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    :goto_0
    return-object p0
.end method
