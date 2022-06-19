.class public Lcom/explorestack/iab/vast/VastLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/explorestack/iab/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7
    new-instance v0, Lcom/explorestack/iab/utils/Logger;

    const-string v1, "VastLog"

    invoke-direct {v0, v1}, Lcom/explorestack/iab/utils/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/explorestack/iab/vast/VastLog;->a:Lcom/explorestack/iab/utils/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 18
    sget-object v0, Lcom/explorestack/iab/vast/VastLog;->a:Lcom/explorestack/iab/utils/Logger;

    invoke-virtual {v0, p0}, Lcom/explorestack/iab/utils/Logger;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 22
    sget-object v0, Lcom/explorestack/iab/vast/VastLog;->a:Lcom/explorestack/iab/utils/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/explorestack/iab/utils/Logger;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 30
    sget-object v0, Lcom/explorestack/iab/vast/VastLog;->a:Lcom/explorestack/iab/utils/Logger;

    .line 1059
    sget-object v1, Lcom/explorestack/iab/utils/Logger$LogLevel;->error:Lcom/explorestack/iab/utils/Logger$LogLevel;

    invoke-static {v1, p1}, Lcom/explorestack/iab/utils/Logger;->a(Lcom/explorestack/iab/utils/Logger$LogLevel;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1060
    iget-object v0, v0, Lcom/explorestack/iab/utils/Logger;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 26
    sget-object v0, Lcom/explorestack/iab/vast/VastLog;->a:Lcom/explorestack/iab/utils/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/explorestack/iab/utils/Logger;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    sget-object v0, Lcom/explorestack/iab/vast/VastLog;->a:Lcom/explorestack/iab/utils/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/explorestack/iab/utils/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLoggingLevel(Lcom/explorestack/iab/utils/Logger$LogLevel;)V
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/explorestack/iab/utils/Logger;->a(Lcom/explorestack/iab/utils/Logger$LogLevel;)V

    return-void
.end method
