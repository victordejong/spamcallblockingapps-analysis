.class public Landroidx/work/impl/utils/c;
.super Ljava/lang/Object;
.source "IdGenerator.java"


# instance fields
.field private final a:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/work/impl/utils/c;->a:Landroidx/work/impl/WorkDatabase;

    .line 55
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 89
    iget-object v1, p0, Landroidx/work/impl/utils/c;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->g()V

    .line 91
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/utils/c;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->u()Landroidx/work/impl/b/e;

    move-result-object v1

    invoke-interface {v1, p1}, Landroidx/work/impl/b/e;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    .line 93
    :goto_0
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    .line 94
    :goto_1
    invoke-direct {p0, p1, v0}, Landroidx/work/impl/utils/c;->a(Ljava/lang/String;I)V

    .line 95
    iget-object v0, p0, Landroidx/work/impl/utils/c;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object v0, p0, Landroidx/work/impl/utils/c;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 96
    return v1

    :cond_0
    move v1, v0

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 98
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/utils/c;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 99
    throw v0
.end method

.method public static a(Landroid/content/Context;Landroidx/i/a/b;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 119
    const-string/jumbo v0, "androidx.work.util.id"

    .line 120
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "next_job_scheduler_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "next_job_scheduler_id"

    .line 124
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    :cond_0
    const-string/jumbo v1, "next_job_scheduler_id"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 127
    const-string/jumbo v2, "next_alarm_manager_id"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 129
    invoke-interface {p1}, Landroidx/i/a/b;->a()V

    .line 131
    :try_start_0
    const-string/jumbo v3, "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "next_job_scheduler_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    .line 131
    invoke-interface {p1, v3, v4}, Landroidx/i/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    const-string/jumbo v1, "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "next_alarm_manager_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    .line 134
    invoke-interface {p1, v1, v3}, Landroidx/i/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    invoke-interface {p1}, Landroidx/i/a/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-interface {p1}, Landroidx/i/a/b;->b()V

    .line 147
    :cond_1
    return-void

    .line 143
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroidx/i/a/b;->b()V

    .line 144
    throw v0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Landroidx/work/impl/utils/c;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->u()Landroidx/work/impl/b/e;

    move-result-object v0

    new-instance v1, Landroidx/work/impl/b/d;

    int-to-long v2, p2

    invoke-direct {v1, p1, v2, v3}, Landroidx/work/impl/b/d;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Landroidx/work/impl/b/e;->a(Landroidx/work/impl/b/d;)V

    .line 105
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 76
    const-class v1, Landroidx/work/impl/utils/c;

    monitor-enter v1

    .line 77
    :try_start_0
    const-string/jumbo v0, "next_alarm_manager_id"

    invoke-direct {p0, v0}, Landroidx/work/impl/utils/c;->a(Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(II)I
    .locals 3

    .prologue
    .line 61
    const-class v1, Landroidx/work/impl/utils/c;

    monitor-enter v1

    .line 62
    :try_start_0
    const-string/jumbo v0, "next_job_scheduler_id"

    invoke-direct {p0, v0}, Landroidx/work/impl/utils/c;->a(Ljava/lang/String;)I

    move-result v0

    .line 63
    if-lt v0, p1, :cond_0

    if-le v0, p2, :cond_1

    .line 66
    :cond_0
    const-string/jumbo v0, "next_job_scheduler_id"

    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v0, v2}, Landroidx/work/impl/utils/c;->a(Ljava/lang/String;I)V

    .line 68
    :goto_0
    monitor-exit v1

    return p1

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move p1, v0

    goto :goto_0
.end method
