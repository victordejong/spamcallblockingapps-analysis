.class public abstract Lcom/criteo/publisher/model/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/criteo/publisher/model/y;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 59
    invoke-static/range {v0 .. v9}, Lcom/criteo/publisher/model/y;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;)Lcom/criteo/publisher/model/y;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;)Lcom/criteo/publisher/model/y;
    .locals 12

    .line 43
    new-instance v11, Lcom/criteo/publisher/model/l;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/criteo/publisher/model/l;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;)V

    return-object v11
.end method

.method public static a(Lcom/google/gson/f;)Lcom/google/gson/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/f;",
            ")",
            "Lcom/google/gson/j<",
            "Lcom/criteo/publisher/model/y;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/criteo/publisher/model/l$a;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/model/l$a;-><init>(Lcom/google/gson/f;)V

    return-object v0
.end method


# virtual methods
.method abstract b()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "AndroidAdTagDataMacro"
    .end annotation
.end method

.method abstract c()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "AndroidAdTagDataMode"
    .end annotation
.end method

.method abstract d()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "AndroidAdTagUrlMode"
    .end annotation
.end method

.method abstract e()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "AndroidDisplayUrlMacro"
    .end annotation
.end method

.method public abstract f()Ljava/lang/Boolean;
.end method

.method public abstract g()Ljava/lang/Boolean;
.end method

.method public abstract h()Ljava/lang/Boolean;
.end method

.method public abstract i()Ljava/lang/Integer;
.end method

.method public abstract j()Ljava/lang/Boolean;
.end method

.method public abstract k()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;
.end method
