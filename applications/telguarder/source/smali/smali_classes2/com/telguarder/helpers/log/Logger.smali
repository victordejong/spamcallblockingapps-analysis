.class public Lcom/telguarder/helpers/log/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final LOG_TAG_BACKEND:Ljava/lang/String; = "telguarder.backend"

.field public static final LOG_TAG_DEFAULT:Ljava/lang/String; = "telguarder"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1

    const-string v0, "telguarder"

    .line 23
    invoke-static {v0, p0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
