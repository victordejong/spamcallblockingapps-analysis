.class Lcom/criteo/publisher/model/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/model/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    sget-object v0, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->WARNING:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    sput-object v0, Lcom/criteo/publisher/model/t$a;->a:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    return-void
.end method

.method static synthetic a()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;
    .locals 1

    .line 43
    sget-object v0, Lcom/criteo/publisher/model/t$a;->a:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    return-object v0
.end method
