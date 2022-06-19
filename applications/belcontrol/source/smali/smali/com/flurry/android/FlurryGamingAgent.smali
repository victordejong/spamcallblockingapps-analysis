.class public final Lcom/flurry/android/FlurryGamingAgent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/android/FlurryGamingAgent$AcquireReason;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "FlurryGamingAgent"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logAchievement(Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryGamingAgent;->logAchievement(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logAchievement(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p1, "String achievementId passed to logAchievement was null or empty."

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "fl.AchievementID"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    const-string p1, "Flurry.Achievement"

    invoke-static {p1, v1, p0}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string v1, "Failed to log event: Flurry.Achievement"

    invoke-static {p1, v1, p0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static logCharacterDeath(Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryGamingAgent;->logCharacterDeath(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logCharacterDeath(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p1, "String characterId passed to logCharacterDeath was null or empty."

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "fl.CharacterID"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    const-string p1, "Flurry.CharacterDeath"

    invoke-static {p1, v1, p0}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string v1, "Failed to log event: Flurry.CharacterDeath"

    invoke-static {p1, v1, p0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static logCharacterLevel(Ljava/lang/String;D)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/flurry/android/FlurryGamingAgent;->logCharacterLevel(Ljava/lang/String;DLjava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logCharacterLevel(Ljava/lang/String;DLjava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p1, "String characterId passed to logCharacterLevel was null or empty."

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "fl.CharacterID"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    const-string p1, "fl.Level"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_1

    invoke-interface {v1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    const-string p1, "Flurry.CharacterLevel"

    invoke-static {p1, v1, p0}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p2, "Failed to log event Flurry.CharacterLevel"

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static logCurrencyAcquired(DLjava/lang/String;Lcom/flurry/android/FlurryGamingAgent$AcquireReason;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/flurry/android/FlurryGamingAgent;->logCurrencyAcquired(DLjava/lang/String;Lcom/flurry/android/FlurryGamingAgent$AcquireReason;Ljava/lang/Double;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logCurrencyAcquired(DLjava/lang/String;Lcom/flurry/android/FlurryGamingAgent$AcquireReason;Ljava/lang/Double;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 6

    const/4 v5, 0x0

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/flurry/android/FlurryGamingAgent;->logCurrencyAcquired(DLjava/lang/String;Lcom/flurry/android/FlurryGamingAgent$AcquireReason;Ljava/lang/Double;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logCurrencyAcquired(DLjava/lang/String;Lcom/flurry/android/FlurryGamingAgent$AcquireReason;Ljava/lang/Double;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/String;",
            "Lcom/flurry/android/FlurryGamingAgent$AcquireReason;",
            "Ljava/lang/Double;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p1, "String currencyType passed to logCurrencyAcquired was null or empty."

    :goto_0
    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p3, :cond_1

    sget-object p0, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p1, "reason was null."

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    const-string p1, "fl.Amount"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fl.CurType"

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string p1, "fl.Reason"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    const-string p1, "fl.Balance"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p5, :cond_3

    invoke-interface {p5}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_3

    invoke-interface {v1, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_3
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    const-string p1, "Flurry.VCAcquired"

    invoke-static {p1, v1, p0}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p2, "Failed to log event: Flurry.VCAcquired"

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method public static logCurrencySpent(DLjava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/flurry/android/FlurryGamingAgent;->logCurrencySpent(DLjava/lang/String;Ljava/lang/Double;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logCurrencySpent(DLjava/lang/String;Ljava/lang/Double;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/flurry/android/FlurryGamingAgent;->logCurrencySpent(DLjava/lang/String;Ljava/lang/Double;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logCurrencySpent(DLjava/lang/String;Ljava/lang/Double;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p1, "String currencyType passed to logCurrencySpent was null or empty."

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    const-string p1, "fl.Amount"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fl.CurType"

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    const-string p1, "fl.Balance"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_2

    invoke-interface {v1, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    const-string p1, "Flurry.VCSpent"

    invoke-static {p1, v1, p0}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p2, "Failed to log event: Flurry.VCSpent"

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static logItemAcquired(Ljava/lang/String;D)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/flurry/android/FlurryGamingAgent;->logItemAcquired(Ljava/lang/String;DLjava/lang/Double;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logItemAcquired(Ljava/lang/String;DLjava/lang/Double;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/flurry/android/FlurryGamingAgent;->logItemAcquired(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logItemAcquired(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/flurry/android/FlurryGamingAgent;->logItemAcquired(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logItemAcquired(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p1, "String itemId passed to logItemAcquired was null or empty."

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "fl.ItemID"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    const-string p1, "fl.Amount"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    const-string p1, "fl.Balance"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    const-string p1, "fl.Cost"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "fl.CurType"

    invoke-interface {v1, p0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p6, :cond_4

    invoke-interface {p6}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_4

    invoke-interface {v1, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    const-string p1, "Flurry.ItemAcquired"

    invoke-static {p1, v1, p0}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p2, "Failed to log event: Flurry.ItemAcquired"

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static logItemAcquired(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/flurry/android/FlurryGamingAgent;->logItemAcquired(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logItemDisposed(Ljava/lang/String;D)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/flurry/android/FlurryGamingAgent;->logItemDisposed(Ljava/lang/String;DLjava/lang/Double;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logItemDisposed(Ljava/lang/String;DLjava/lang/Double;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/flurry/android/FlurryGamingAgent;->logItemDisposed(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logItemDisposed(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/flurry/android/FlurryGamingAgent;->logItemDisposed(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logItemDisposed(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p1, "String itemId passed to logItemDisposed was null or empty."

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "fl.ItemID"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    const-string p1, "fl.Amount"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    const-string p1, "fl.Balance"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    const-string p1, "fl.Cost"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "fl.CurType"

    invoke-interface {v1, p0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p6, :cond_4

    invoke-interface {p6}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_4

    invoke-interface {v1, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    const-string p1, "Flurry.ItemDisposed"

    invoke-static {p1, v1, p0}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p2, "Failed to log event: Flurry.ItemDisposed"

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static logItemDisposed(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/flurry/android/FlurryGamingAgent;->logItemDisposed(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logLevelEnd(Ljava/lang/String;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/flurry/android/FlurryGamingAgent;->logLevelEnd(Ljava/lang/String;ZLjava/lang/Double;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logLevelEnd(Ljava/lang/String;ZLjava/lang/Double;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/flurry/android/FlurryGamingAgent;->logLevelEnd(Ljava/lang/String;ZLjava/lang/Double;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logLevelEnd(Ljava/lang/String;ZLjava/lang/Double;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Double;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p1, "String levelId passed to logLevelEnd was null or empty."

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "fl.LevelID"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string p0, "True"

    goto :goto_0

    :cond_1
    const-string p0, "False"

    :goto_0
    const-string p1, "fl.Success"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    const-string p1, "fl.Score"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_3

    invoke-interface {v1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_3
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    const-string p1, "Flurry.LevelEnd"

    invoke-static {p1, v1, p0}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p2, "Failed to log event: Flurry.LevelEnd"

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method public static logLevelStart(Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryGamingAgent;->logLevelStart(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logLevelStart(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p1, "String levelId passed to logLevelStart was null or empty."

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "fl.LevelID"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    const-string p1, "Flurry.LevelStart"

    invoke-static {p1, v1, p0}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string v1, "Failed to log event: Flurry.LevelStart"

    invoke-static {p1, v1, p0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static logPlayerLevel(D)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/flurry/android/FlurryGamingAgent;->logPlayerLevel(DLjava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logPlayerLevel(DLjava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    const-string p1, "fl.Level"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    const-string p1, "Flurry.PlayerLevel"

    invoke-static {p1, v1, p0}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p2, "Failed to log event: Flurry.PlayerLevel"

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method
