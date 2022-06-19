.class public abstract Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;
    }
.end annotation


# instance fields
.field protected a:Landroid/os/HandlerThread;

.field protected b:Landroid/os/Handler;

.field protected c:Ljava/lang/String;

.field protected d:J

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->d:J

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->e:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->f:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->g:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->h:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->i:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->j:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->k:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->l:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->m:Ljava/lang/String;

    return-void
.end method

.method public static d(Ljava/lang/String;)Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;
    .locals 10

    .line 271
    const-class v0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Starting fetch UTM params for: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 274
    :try_start_0
    new-instance v2, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;

    invoke-direct {v2}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 275
    :try_start_1
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v1, "&"

    .line 276
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 277
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v6, v1, v5

    const-string v7, "="

    const/4 v8, 0x2

    .line 278
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 279
    invoke-static {v6}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    array-length v7, v6

    if-ne v7, v8, :cond_3

    .line 280
    aget-object v7, v6, v4

    const/4 v8, 0x1

    .line 281
    aget-object v6, v6, v8

    const-string v8, "ref_key"

    .line 282
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 283
    iput-object v6, v2, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;->a:Ljava/lang/String;

    .line 284
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Found referrer_key: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v8, "utm_source"

    .line 285
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 286
    iput-object v6, v2, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;->b:Ljava/lang/String;

    .line 287
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Found utm_source: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v8, "utm_medium"

    .line 288
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 289
    iput-object v6, v2, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;->c:Ljava/lang/String;

    .line 290
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Found utm_medium: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v8, "utm_campaign"

    .line 291
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 292
    iput-object v6, v2, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;->d:Ljava/lang/String;

    .line 293
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Found utm_campaign: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 298
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Didn\'t find referrer in URL for: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    .line 302
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed fetch UTM params: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 305
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Finished fetch UTM params for "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    new-array v7, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 175
    invoke-virtual/range {v1 .. v7}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    new-array v7, v0, [Ljava/lang/String;

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 171
    invoke-virtual/range {v1 .. v7}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 9

    .line 226
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->b:Landroid/os/Handler;

    new-instance v8, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$4;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$4;-><init>(Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 11

    move-object v8, p0

    .line 212
    iget-object v9, v8, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->b:Landroid/os/Handler;

    new-instance v10, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$3;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$3;-><init>(Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V
    .locals 11

    move-object v8, p0

    .line 183
    iget-object v9, v8, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->b:Landroid/os/Handler;

    new-instance v10, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$1;-><init>(Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->b:Landroid/os/Handler;

    new-instance v1, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$2;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$2;-><init>(Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected abstract b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
.end method

.method protected abstract b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
.end method

.method protected varargs abstract b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method protected abstract c(Ljava/lang/String;)V
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->j()V

    .line 161
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method protected abstract i()V
.end method

.method public init()V
    .locals 3

    const v0, 0x7f120688

    .line 97
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->c:Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getDaysSinceInstall()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->d:J

    .line 99
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->X:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->e:Ljava/lang/String;

    .line 100
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->d(Ljava/lang/String;)Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 103
    iget-object v2, v0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->f:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 105
    iput-object v1, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->f:Ljava/lang/String;

    .line 107
    :cond_0
    iget-object v2, v0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->g:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 109
    iput-object v1, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->g:Ljava/lang/String;

    .line 111
    :cond_1
    iget-object v0, v0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->h:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 113
    iput-object v1, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->h:Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_2
    iput-object v1, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->e:Ljava/lang/String;

    .line 120
    :cond_3
    :goto_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fj:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->i:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 122
    iput-object v1, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->i:Ljava/lang/String;

    .line 124
    :cond_4
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fk:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->j:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 126
    iput-object v1, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->j:Ljava/lang/String;

    .line 128
    :cond_5
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fl:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->k:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 130
    iput-object v1, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->k:Ljava/lang/String;

    .line 132
    :cond_6
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fm:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->l:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 134
    iput-object v1, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->l:Ljava/lang/String;

    .line 137
    :cond_7
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->m:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 139
    iput-object v1, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->m:Ljava/lang/String;

    .line 143
    :cond_8
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->a:Landroid/os/HandlerThread;

    .line 144
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 145
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 146
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->b:Landroid/os/Handler;

    .line 149
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->a()V

    return-void
.end method

.method public j()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->b:Landroid/os/Handler;

    new-instance v1, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$5;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$5;-><init>(Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
