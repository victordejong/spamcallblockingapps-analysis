.class public final Lcom/twitter/sdk/android/core/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/i$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/twitter/sdk/android/core/models/User;Lcom/twitter/sdk/android/core/internal/i$a;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    .line 48
    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/User;->profileImageUrlHttps:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 49
    iget-object p0, p0, Lcom/twitter/sdk/android/core/models/User;->profileImageUrlHttps:Ljava/lang/String;

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Lcom/twitter/sdk/android/core/internal/i$1;->a:[I

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/internal/i$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    return-object p0

    .line 60
    :cond_1
    sget-object v0, Lcom/twitter/sdk/android/core/internal/i$a;->NORMAL:Lcom/twitter/sdk/android/core/internal/i$a;

    .line 61
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/i$a;->getSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/internal/i$a;->getSuffix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
