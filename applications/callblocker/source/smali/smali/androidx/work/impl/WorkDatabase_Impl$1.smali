.class Landroidx/work/impl/WorkDatabase_Impl$1;
.super Landroidx/room/k$a;
.source "WorkDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkDatabase_Impl;->b(Landroidx/room/a;)Landroidx/i/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/work/impl/WorkDatabase_Impl;


# direct methods
.method constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;I)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->b:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/k$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/i/a/b;)V
    .locals 3

    .prologue
    .line 79
    const-string/jumbo v0, "DROP TABLE IF EXISTS `Dependency`"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 80
    const-string/jumbo v0, "DROP TABLE IF EXISTS `WorkSpec`"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 81
    const-string/jumbo v0, "DROP TABLE IF EXISTS `WorkTag`"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v0, "DROP TABLE IF EXISTS `SystemIdInfo`"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v0, "DROP TABLE IF EXISTS `WorkName`"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v0, "DROP TABLE IF EXISTS `WorkProgress`"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v0, "DROP TABLE IF EXISTS `Preference`"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->b:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->a(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->b:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v1}, Landroidx/work/impl/WorkDatabase_Impl;->b(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 88
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->b:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->c(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/i$b;

    invoke-virtual {v0, p1}, Landroidx/room/i$b;->c(Landroidx/i/a/b;)V

    .line 87
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method

.method public b(Landroidx/i/a/b;)V
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `period_start_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `required_network_type` INTEGER, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB, PRIMARY KEY(`id`))"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `WorkSpec` (`period_start_time`)"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 73
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'cf029002fffdcadf079e8d0a1c9a70ac\')"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public c(Landroidx/i/a/b;)V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->b:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v0, p1}, Landroidx/work/impl/WorkDatabase_Impl;->a(Landroidx/work/impl/WorkDatabase_Impl;Landroidx/i/a/b;)Landroidx/i/a/b;

    .line 105
    const-string/jumbo v0, "PRAGMA foreign_keys = ON"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->b:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v0, p1}, Landroidx/work/impl/WorkDatabase_Impl;->b(Landroidx/work/impl/WorkDatabase_Impl;Landroidx/i/a/b;)V

    .line 107
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->b:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->g(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->b:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v1}, Landroidx/work/impl/WorkDatabase_Impl;->h(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 109
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->b:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->i(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/i$b;

    invoke-virtual {v0, p1}, Landroidx/room/i$b;->b(Landroidx/i/a/b;)V

    .line 108
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method protected d(Landroidx/i/a/b;)V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->b:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->d(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->b:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v1}, Landroidx/work/impl/WorkDatabase_Impl;->e(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 97
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->b:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->f(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/i$b;

    invoke-virtual {v0, p1}, Landroidx/room/i$b;->a(Landroidx/i/a/b;)V

    .line 96
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method

.method protected f(Landroidx/i/a/b;)Landroidx/room/k$b;
    .locals 10

    .prologue
    .line 125
    new-instance v7, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 126
    const-string/jumbo v8, "work_spec_id"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "work_spec_id"

    const-string/jumbo v2, "TEXT"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string/jumbo v8, "prerequisite_id"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "prerequisite_id"

    const-string/jumbo v2, "TEXT"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v6, Ljava/util/HashSet;

    const/4 v0, 0x2

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 129
    new-instance v0, Landroidx/room/b/f$b;

    const-string/jumbo v1, "WorkSpec"

    const-string/jumbo v2, "CASCADE"

    const-string/jumbo v3, "CASCADE"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v8, "work_spec_id"

    aput-object v8, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "id"

    aput-object v9, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroidx/room/b/f$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v0, Landroidx/room/b/f$b;

    const-string/jumbo v1, "WorkSpec"

    const-string/jumbo v2, "CASCADE"

    const-string/jumbo v3, "CASCADE"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v8, "prerequisite_id"

    aput-object v8, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "id"

    aput-object v9, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroidx/room/b/f$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 132
    new-instance v1, Landroidx/room/b/f$d;

    const-string/jumbo v2, "index_Dependency_work_spec_id"

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v8, "work_spec_id"

    aput-object v8, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroidx/room/b/f$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v1, Landroidx/room/b/f$d;

    const-string/jumbo v2, "index_Dependency_prerequisite_id"

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v8, "prerequisite_id"

    aput-object v8, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroidx/room/b/f$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v1, Landroidx/room/b/f;

    const-string/jumbo v2, "Dependency"

    invoke-direct {v1, v2, v7, v6, v0}, Landroidx/room/b/f;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 135
    const-string/jumbo v0, "Dependency"

    invoke-static {p1, v0}, Landroidx/room/b/f;->a(Landroidx/i/a/b;Ljava/lang/String;)Landroidx/room/b/f;

    move-result-object v2

    .line 136
    invoke-virtual {v1, v2}, Landroidx/room/b/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Landroidx/room/k$b;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\n Found:\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroidx/room/k$b;-><init>(ZLjava/lang/String;)V

    .line 243
    :goto_0
    return-object v0

    .line 141
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    const/16 v0, 0x18

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 142
    const-string/jumbo v8, "id"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "TEXT"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo v8, "state"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "state"

    const-string/jumbo v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v8, "worker_class_name"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "worker_class_name"

    const-string/jumbo v2, "TEXT"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v8, "input_merger_class_name"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "input_merger_class_name"

    const-string/jumbo v2, "TEXT"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v8, "input"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "input"

    const-string/jumbo v2, "BLOB"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string/jumbo v8, "output"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "output"

    const-string/jumbo v2, "BLOB"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string/jumbo v8, "initial_delay"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "initial_delay"

    const-string/jumbo v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string/jumbo v8, "interval_duration"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "interval_duration"

    const-string/jumbo v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string/jumbo v8, "flex_duration"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "flex_duration"

    const-string/jumbo v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string/jumbo v8, "run_attempt_count"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "run_attempt_count"

    const-string/jumbo v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string/jumbo v8, "backoff_policy"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "backoff_policy"

    const-string/jumbo v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string/jumbo v8, "backoff_delay_duration"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "backoff_delay_duration"

    const-string/jumbo v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string/jumbo v8, "period_start_time"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "period_start_time"

    const-string/jumbo v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string/jumbo v8, "minimum_retention_duration"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "minimum_retention_duration"

    const-string/jumbo v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v8, "schedule_requested_at"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "schedule_requested_at"

    const-string/jumbo v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v8, "run_in_foreground"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "run_in_foreground"

    const-string/jumbo v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string/jumbo v8, "required_network_type"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "required_network_type"

    const-string/jumbo v2, "INTEGER"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string/jumbo v8, "requires_charging"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "requires_charging"

    const-string/jumbo v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string/jumbo v8, "requires_device_idle"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "requires_device_idle"

    const-string/jumbo v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string/jumbo v8, "requires_battery_not_low"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "requires_battery_not_low"

    const-string/jumbo v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string/jumbo v8, "requires_storage_not_low"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "requires_storage_not_low"

    const-string/jumbo v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v8, "trigger_content_update_delay"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "trigger_content_update_delay"

    const-string/jumbo v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string/jumbo v8, "trigger_max_content_delay"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "trigger_max_content_delay"

    const-string/jumbo v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string/jumbo v8, "content_uri_triggers"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "content_uri_triggers"

    const-string/jumbo v2, "BLOB"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 167
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 168
    new-instance v2, Landroidx/room/b/f$d;

    const-string/jumbo v3, "index_WorkSpec_schedule_requested_at"

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v8, "schedule_requested_at"

    aput-object v8, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroidx/room/b/f$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v2, Landroidx/room/b/f$d;

    const-string/jumbo v3, "index_WorkSpec_period_start_time"

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v8, "period_start_time"

    aput-object v8, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroidx/room/b/f$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v2, Landroidx/room/b/f;

    const-string/jumbo v3, "WorkSpec"

    invoke-direct {v2, v3, v7, v0, v1}, Landroidx/room/b/f;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 171
    const-string/jumbo v0, "WorkSpec"

    invoke-static {p1, v0}, Landroidx/room/b/f;->a(Landroidx/i/a/b;Ljava/lang/String;)Landroidx/room/b/f;

    move-result-object v1

    .line 172
    invoke-virtual {v2, v1}, Landroidx/room/b/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    new-instance v0, Landroidx/room/k$b;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\n Found:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroidx/room/k$b;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 178
    const-string/jumbo v8, "tag"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "tag"

    const-string/jumbo v2, "TEXT"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string/jumbo v8, "work_spec_id"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "work_spec_id"

    const-string/jumbo v2, "TEXT"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v6, Ljava/util/HashSet;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 181
    new-instance v0, Landroidx/room/b/f$b;

    const-string/jumbo v1, "WorkSpec"

    const-string/jumbo v2, "CASCADE"

    const-string/jumbo v3, "CASCADE"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v8, "work_spec_id"

    aput-object v8, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "id"

    aput-object v9, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroidx/room/b/f$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 183
    new-instance v1, Landroidx/room/b/f$d;

    const-string/jumbo v2, "index_WorkTag_work_spec_id"

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v8, "work_spec_id"

    aput-object v8, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroidx/room/b/f$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v1, Landroidx/room/b/f;

    const-string/jumbo v2, "WorkTag"

    invoke-direct {v1, v2, v7, v6, v0}, Landroidx/room/b/f;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 185
    const-string/jumbo v0, "WorkTag"

    invoke-static {p1, v0}, Landroidx/room/b/f;->a(Landroidx/i/a/b;Ljava/lang/String;)Landroidx/room/b/f;

    move-result-object v2

    .line 186
    invoke-virtual {v1, v2}, Landroidx/room/b/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    new-instance v0, Landroidx/room/k$b;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\n Found:\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroidx/room/k$b;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 191
    :cond_2
    new-instance v7, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 192
    const-string/jumbo v8, "work_spec_id"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "work_spec_id"

    const-string/jumbo v2, "TEXT"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string/jumbo v8, "system_id"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "system_id"

    const-string/jumbo v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v6, Ljava/util/HashSet;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 195
    new-instance v0, Landroidx/room/b/f$b;

    const-string/jumbo v1, "WorkSpec"

    const-string/jumbo v2, "CASCADE"

    const-string/jumbo v3, "CASCADE"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v8, "work_spec_id"

    aput-object v8, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "id"

    aput-object v9, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroidx/room/b/f$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 197
    new-instance v1, Landroidx/room/b/f;

    const-string/jumbo v2, "SystemIdInfo"

    invoke-direct {v1, v2, v7, v6, v0}, Landroidx/room/b/f;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 198
    const-string/jumbo v0, "SystemIdInfo"

    invoke-static {p1, v0}, Landroidx/room/b/f;->a(Landroidx/i/a/b;Ljava/lang/String;)Landroidx/room/b/f;

    move-result-object v2

    .line 199
    invoke-virtual {v1, v2}, Landroidx/room/b/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 200
    new-instance v0, Landroidx/room/k$b;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\n Found:\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroidx/room/k$b;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 204
    :cond_3
    new-instance v7, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 205
    const-string/jumbo v8, "name"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "name"

    const-string/jumbo v2, "TEXT"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string/jumbo v8, "work_spec_id"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "work_spec_id"

    const-string/jumbo v2, "TEXT"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v6, Ljava/util/HashSet;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 208
    new-instance v0, Landroidx/room/b/f$b;

    const-string/jumbo v1, "WorkSpec"

    const-string/jumbo v2, "CASCADE"

    const-string/jumbo v3, "CASCADE"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v8, "work_spec_id"

    aput-object v8, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "id"

    aput-object v9, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroidx/room/b/f$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 210
    new-instance v1, Landroidx/room/b/f$d;

    const-string/jumbo v2, "index_WorkName_work_spec_id"

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v8, "work_spec_id"

    aput-object v8, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroidx/room/b/f$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v1, Landroidx/room/b/f;

    const-string/jumbo v2, "WorkName"

    invoke-direct {v1, v2, v7, v6, v0}, Landroidx/room/b/f;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 212
    const-string/jumbo v0, "WorkName"

    invoke-static {p1, v0}, Landroidx/room/b/f;->a(Landroidx/i/a/b;Ljava/lang/String;)Landroidx/room/b/f;

    move-result-object v2

    .line 213
    invoke-virtual {v1, v2}, Landroidx/room/b/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 214
    new-instance v0, Landroidx/room/k$b;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\n Found:\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroidx/room/k$b;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_4
    new-instance v7, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 219
    const-string/jumbo v8, "work_spec_id"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "work_spec_id"

    const-string/jumbo v2, "TEXT"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string/jumbo v8, "progress"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "progress"

    const-string/jumbo v2, "BLOB"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v6, Ljava/util/HashSet;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 222
    new-instance v0, Landroidx/room/b/f$b;

    const-string/jumbo v1, "WorkSpec"

    const-string/jumbo v2, "CASCADE"

    const-string/jumbo v3, "CASCADE"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v8, "work_spec_id"

    aput-object v8, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "id"

    aput-object v9, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroidx/room/b/f$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 224
    new-instance v1, Landroidx/room/b/f;

    const-string/jumbo v2, "WorkProgress"

    invoke-direct {v1, v2, v7, v6, v0}, Landroidx/room/b/f;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 225
    const-string/jumbo v0, "WorkProgress"

    invoke-static {p1, v0}, Landroidx/room/b/f;->a(Landroidx/i/a/b;Ljava/lang/String;)Landroidx/room/b/f;

    move-result-object v2

    .line 226
    invoke-virtual {v1, v2}, Landroidx/room/b/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 227
    new-instance v0, Landroidx/room/k$b;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\n Found:\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroidx/room/k$b;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 231
    :cond_5
    new-instance v7, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 232
    const-string/jumbo v8, "key"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "key"

    const-string/jumbo v2, "TEXT"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string/jumbo v8, "long_value"

    new-instance v0, Landroidx/room/b/f$a;

    const-string/jumbo v1, "long_value"

    const-string/jumbo v2, "INTEGER"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 235
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 236
    new-instance v2, Landroidx/room/b/f;

    const-string/jumbo v3, "Preference"

    invoke-direct {v2, v3, v7, v0, v1}, Landroidx/room/b/f;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 237
    const-string/jumbo v0, "Preference"

    invoke-static {p1, v0}, Landroidx/room/b/f;->a(Landroidx/i/a/b;Ljava/lang/String;)Landroidx/room/b/f;

    move-result-object v1

    .line 238
    invoke-virtual {v2, v1}, Landroidx/room/b/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 239
    new-instance v0, Landroidx/room/k$b;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Preference(androidx.work.impl.model.Preference).\n Expected:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\n Found:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroidx/room/k$b;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 243
    :cond_6
    new-instance v0, Landroidx/room/k$b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/room/k$b;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public g(Landroidx/i/a/b;)V
    .locals 0

    .prologue
    .line 116
    invoke-static {p1}, Landroidx/room/b/c;->a(Landroidx/i/a/b;)V

    .line 117
    return-void
.end method

.method public h(Landroidx/i/a/b;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method
