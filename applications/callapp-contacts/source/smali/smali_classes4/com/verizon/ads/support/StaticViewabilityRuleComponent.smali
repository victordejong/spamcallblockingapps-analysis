.class public Lcom/verizon/ads/support/StaticViewabilityRuleComponent;
.super Lcom/verizon/ads/support/ViewabilityWatcherRule;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/RuleComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/support/StaticViewabilityRuleComponent$Factory;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private d:Z

.field private e:Lcom/verizon/ads/RuleComponent$RuleListener;

.field private volatile f:Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/verizon/ads/RuleComponent$RuleListener;IIZLjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/verizon/ads/RuleComponent$RuleListener;",
            "IIZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/verizon/ads/support/ViewabilityWatcherRule;-><init>(Landroid/view/View;IIZ)V

    .line 128
    iput-object p2, p0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->e:Lcom/verizon/ads/RuleComponent$RuleListener;

    .line 129
    iput-object p6, p0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->c:Ljava/lang/String;

    .line 130
    iput-object p7, p0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->b:Ljava/util/Map;

    const/4 p1, 0x0

    .line 132
    iput-boolean p1, p0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->d:Z

    return-void
.end method

.method static synthetic e()Lcom/verizon/ads/Logger;
    .locals 1

    .line 28
    sget-object v0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final b()J
    .locals 2

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final c()V
    .locals 6

    .line 231
    invoke-virtual {p0}, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->h()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->m()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const/4 v2, 0x3

    .line 233
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    sget-object v2, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->a:Lcom/verizon/ads/Logger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    const-string v4, "Starting rule timer with delay: %d, %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 237
    :cond_0
    new-instance v2, Lcom/verizon/ads/support/-$$Lambda$WzxyVz7HRgOSKd5-lSmlGrLu-l8;

    invoke-direct {v2, p0}, Lcom/verizon/ads/support/-$$Lambda$WzxyVz7HRgOSKd5-lSmlGrLu-l8;-><init>(Lcom/verizon/ads/support/StaticViewabilityRuleComponent;)V

    .line 1263
    invoke-static {v2, v0, v1}, Lcom/verizon/ads/utils/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    .line 237
    iput-object v0, p0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->f:Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;

    return-void
.end method

.method protected final d()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->f:Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 245
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->a:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "Stopping rule timer: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->f:Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    const/4 v0, 0x0

    .line 250
    iput-object v0, p0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->f:Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;

    :cond_1
    return-void
.end method

.method public fire()V
    .locals 4

    .line 1257
    invoke-static {}, Lcom/verizon/ads/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    sget-object v0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Must be on the UI thread to fire rule"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 159
    :cond_0
    iget-boolean v0, p0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->d:Z

    if-eqz v0, :cond_1

    .line 160
    sget-object v0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Rule has already fired"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x3

    .line 165
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 166
    sget-object v0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->a:Lcom/verizon/ads/Logger;

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string v3, "Firing rule: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 169
    :cond_2
    iput-boolean v1, p0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->d:Z

    .line 172
    invoke-virtual {p0}, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->k()V

    .line 173
    invoke-virtual {p0}, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->i()V

    .line 175
    iget-object v0, p0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->e:Lcom/verizon/ads/RuleComponent$RuleListener;

    if-eqz v0, :cond_3

    .line 176
    invoke-interface {v0, p0}, Lcom/verizon/ads/RuleComponent$RuleListener;->onRuleFired(Lcom/verizon/ads/RuleComponent;)V

    :cond_3
    return-void
.end method

.method public getEventArgs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->b:Ljava/util/Map;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hasFired()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->d:Z

    return v0
.end method

.method public release()V
    .locals 2

    .line 197
    sget-object v0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Releasing"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->k()V

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->e:Lcom/verizon/ads/RuleComponent$RuleListener;

    .line 202
    invoke-super {p0}, Lcom/verizon/ads/support/ViewabilityWatcherRule;->release()V

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 210
    iget-object v1, p0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->c:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-super {p0}, Lcom/verizon/ads/support/ViewabilityWatcherRule;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "StaticViewabilityRuleComponent{eventId: %s, %s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
