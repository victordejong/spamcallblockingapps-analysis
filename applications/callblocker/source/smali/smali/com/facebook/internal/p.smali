.class public Lcom/facebook/internal/p;
.super Ljava/lang/Object;
.source "InternalSettings.java"


# static fields
.field private static volatile a:Ljava/lang/String;


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/facebook/internal/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/internal/p;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/internal/p;->a:Ljava/lang/String;

    const-string/jumbo v1, "Unity."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
