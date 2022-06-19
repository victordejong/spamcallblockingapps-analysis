.class public final Lcom/google/firebase/e/e;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@19.3.0"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    :try_start_0
    sget-object v0, Lkotlin/KotlinVersion;->CURRENT:Lkotlin/KotlinVersion;

    invoke-virtual {v0}, Lkotlin/KotlinVersion;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const/4 v0, 0x0

    goto :goto_0
.end method
