.class public Lcom/verizon/ads/support/ViewabilityWatcherRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/support/utils/ViewabilityWatcher$ViewabilityListener;


# static fields
.field private static final a:Lcom/verizon/ads/Logger;


# instance fields
.field private b:Z

.field private final c:Z

.field private final d:I

.field private volatile e:J

.field private volatile f:J

.field private g:Lcom/verizon/ads/support/utils/ViewabilityWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/verizon/ads/support/ViewabilityWatcherRule;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method protected constructor <init>(Landroid/view/View;IIZ)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p3, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->d:I

    .line 41
    iput-boolean p4, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->c:Z

    const/4 p3, 0x0

    .line 43
    iput-boolean p3, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->b:Z

    const-wide/16 p3, 0x0

    .line 44
    iput-wide p3, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->e:J

    .line 1092
    new-instance p3, Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-direct {p3, p1, p0}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/verizon/ads/support/utils/ViewabilityWatcher$ViewabilityListener;)V

    iput-object p3, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->g:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    .line 1093
    invoke-virtual {p3, p2}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->setMinViewabilityPercent(I)V

    .line 1094
    iget-object p1, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->g:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-virtual {p1}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->startWatching()V

    return-void
.end method

.method public static convertJSONToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 207
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 208
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 209
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 210
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 211
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    .line 217
    sget-object v1, Lcom/verizon/ads/support/ViewabilityWatcherRule;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Error converting JSON to map"

    invoke-virtual {v1, v2, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private e()J
    .locals 4

    .line 1184
    iget-boolean v0, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->b:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/verizon/ads/support/ViewabilityWatcherRule;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->f:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected b()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method final f()Landroid/view/View;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->g:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final g()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->g:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->viewable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final h()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->d:I

    return v0
.end method

.method final i()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->g:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->stopWatching()V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->g:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    :cond_0
    return-void
.end method

.method final j()V
    .locals 2

    .line 147
    iget-boolean v0, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->b:Z

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Already tracking"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/verizon/ads/support/ViewabilityWatcherRule;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    sget-object v0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Tracking criteria not satisifed -- not tracking"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 157
    :cond_1
    sget-object v0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Starting tracking"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->b:Z

    .line 160
    invoke-virtual {p0}, Lcom/verizon/ads/support/ViewabilityWatcherRule;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->f:J

    .line 162
    invoke-virtual {p0}, Lcom/verizon/ads/support/ViewabilityWatcherRule;->c()V

    return-void
.end method

.method k()V
    .locals 5

    .line 168
    iget-boolean v0, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    sget-object v0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Stopping tracking"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 174
    iget-boolean v0, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->c:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    move-wide v3, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/verizon/ads/support/ViewabilityWatcherRule;->m()J

    move-result-wide v3

    :goto_0
    iput-wide v3, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->e:J

    .line 175
    iput-wide v1, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->f:J

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->b:Z

    .line 178
    invoke-virtual {p0}, Lcom/verizon/ads/support/ViewabilityWatcherRule;->d()V

    return-void
.end method

.method final l()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->b:Z

    return v0
.end method

.method final m()J
    .locals 4

    .line 196
    iget-wide v0, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->e:J

    invoke-direct {p0}, Lcom/verizon/ads/support/ViewabilityWatcherRule;->e()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public onViewableChanged(Z)V
    .locals 4

    const/4 v0, 0x3

    .line 53
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->a:Lcom/verizon/ads/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string v2, "onViewableChanged: %s, %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/verizon/ads/support/ViewabilityWatcherRule;->j()V

    return-void

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/verizon/ads/support/ViewabilityWatcherRule;->k()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 85
    sget-object v0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Releasing"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/verizon/ads/support/ViewabilityWatcherRule;->i()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->g:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    if-nez v0, :cond_0

    const-string v0, "ViewabilityWatcherRule"

    return-object v0

    :cond_0
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 117
    invoke-virtual {v0}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->getView()Landroid/view/View;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->g:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-virtual {v2}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->getMinViewabilityPercent()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget v2, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x3

    iget-boolean v2, p0, Lcom/verizon/ads/support/ViewabilityWatcherRule;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/verizon/ads/support/ViewabilityWatcherRule;->m()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "ViewabilityWatcherRule{view: %s, percentage: %d, duration: %d, continuous: %s, time in view: %d}"

    .line 115
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
