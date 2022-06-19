.class public Landroidx/work/impl/utils/e;
.super Ljava/lang/Object;
.source "PreferenceUtils.java"


# instance fields
.field private final a:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/work/impl/utils/e;->a:Landroidx/work/impl/WorkDatabase;

    .line 52
    return-void
.end method

.method public static a(Landroid/content/Context;Landroidx/i/a/b;)V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v6, 0x0

    .line 118
    const-string/jumbo v2, "androidx.work.util.preferences"

    .line 119
    invoke-virtual {p0, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 122
    const-string/jumbo v3, "reschedule_needed"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "last_cancel_all_time_ms"

    .line 123
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    :cond_0
    const-string/jumbo v3, "last_cancel_all_time_ms"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 126
    const-string/jumbo v3, "reschedule_needed"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 127
    if-eqz v3, :cond_1

    const-wide/16 v0, 0x1

    .line 128
    :cond_1
    invoke-interface {p1}, Landroidx/i/a/b;->a()V

    .line 131
    :try_start_0
    const-string/jumbo v3, "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "last_cancel_all_time_ms"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 132
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v7

    .line 131
    invoke-interface {p1, v3, v6}, Landroidx/i/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    const-string/jumbo v3, "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "reschedule_needed"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 135
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    .line 134
    invoke-interface {p1, v3, v4}, Landroidx/i/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 142
    invoke-interface {p1}, Landroidx/i/a/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-interface {p1}, Landroidx/i/a/b;->b()V

    .line 147
    :cond_2
    return-void

    .line 144
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroidx/i/a/b;->b()V

    .line 145
    throw v0
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Landroidx/work/impl/b/d;

    const-string/jumbo v1, "reschedule_needed"

    invoke-direct {v0, v1, p1}, Landroidx/work/impl/b/d;-><init>(Ljava/lang/String;Z)V

    .line 105
    iget-object v1, p0, Landroidx/work/impl/utils/e;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->u()Landroidx/work/impl/b/e;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/work/impl/b/e;->a(Landroidx/work/impl/b/d;)V

    .line 106
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Landroidx/work/impl/utils/e;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->u()Landroidx/work/impl/b/e;

    move-result-object v0

    const-string/jumbo v1, "reschedule_needed"

    invoke-interface {v0, v1}, Landroidx/work/impl/b/e;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
