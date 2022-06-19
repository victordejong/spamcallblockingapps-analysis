.class public Lio/bidmachine/core/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/core/Logger$a;,
        Lio/bidmachine/core/Logger$LoggerMessageBuilder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "Logger"

.field private static isLoggingEnabled:Z = false

.field private static messageBuilder:Lio/bidmachine/core/Logger$LoggerMessageBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lio/bidmachine/core/Logger$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/core/Logger$a;-><init>(Lio/bidmachine/core/Logger$1;)V

    sput-object v0, Lio/bidmachine/core/Logger;->messageBuilder:Lio/bidmachine/core/Logger$LoggerMessageBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    .line 28
    sget-boolean v0, Lio/bidmachine/core/Logger;->isLoggingEnabled:Z

    return v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 5

    .line 42
    sget-boolean v0, Lio/bidmachine/core/Logger;->isLoggingEnabled:Z

    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v4, v2, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/core/Logger;->sendLog(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    return-void

    .line 50
    :cond_1
    invoke-static {p0}, Lio/bidmachine/core/Logger;->sendLog(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 56
    sget-boolean v0, Lio/bidmachine/core/Logger;->isLoggingEnabled:Z

    if-eqz v0, :cond_a

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    const-string v2, "Empty"

    if-eqz p1, :cond_8

    .line 58
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 61
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v4, 0x0

    .line 64
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/util/Collection;

    if-eqz v5, :cond_6

    .line 65
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 69
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 73
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 74
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 77
    :cond_6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 78
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 80
    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 59
    :cond_8
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const/4 p1, 0x0

    .line 83
    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/core/Logger;->sendLog(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public static log(Ljava/lang/Throwable;)V
    .locals 1

    .line 36
    sget-boolean v0, Lio/bidmachine/core/Logger;->isLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private static sendLog(Ljava/lang/String;)V
    .locals 1

    .line 89
    sget-object v0, Lio/bidmachine/core/Logger;->messageBuilder:Lio/bidmachine/core/Logger$LoggerMessageBuilder;

    invoke-interface {v0, p0}, Lio/bidmachine/core/Logger$LoggerMessageBuilder;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static setLoggingEnabled(Z)V
    .locals 0

    .line 24
    sput-boolean p0, Lio/bidmachine/core/Logger;->isLoggingEnabled:Z

    return-void
.end method

.method public static setMessageBuilder(Lio/bidmachine/core/Logger$LoggerMessageBuilder;)V
    .locals 0

    .line 32
    sput-object p0, Lio/bidmachine/core/Logger;->messageBuilder:Lio/bidmachine/core/Logger$LoggerMessageBuilder;

    return-void
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 0

    .line 20
    sput-object p0, Lio/bidmachine/core/Logger;->TAG:Ljava/lang/String;

    return-void
.end method
