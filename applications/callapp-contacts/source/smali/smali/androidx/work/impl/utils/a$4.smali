.class final Landroidx/work/impl/utils/a$4;
.super Landroidx/work/impl/utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/a;->b(Landroidx/work/impl/j;)Landroidx/work/impl/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/work/impl/j;


# direct methods
.method constructor <init>(Landroidx/work/impl/j;)V
    .locals 0

    .line 207
    iput-object p1, p0, Landroidx/work/impl/utils/a$4;->b:Landroidx/work/impl/j;

    invoke-direct {p0}, Landroidx/work/impl/utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 6

    .line 211
    iget-object v0, p0, Landroidx/work/impl/utils/a$4;->b:Landroidx/work/impl/j;

    .line 1317
    iget-object v0, v0, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 212
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->e()V

    .line 214
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v1

    .line 215
    invoke-interface {v1}, Landroidx/work/impl/model/WorkSpecDao;->getAllUnfinishedWork()Ljava/util/List;

    move-result-object v1

    .line 216
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 217
    iget-object v3, p0, Landroidx/work/impl/utils/a$4;->b:Landroidx/work/impl/j;

    invoke-static {v3, v2}, Landroidx/work/impl/utils/a$4;->a(Landroidx/work/impl/j;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_0
    new-instance v1, Landroidx/work/impl/utils/e;

    iget-object v2, p0, Landroidx/work/impl/utils/a$4;->b:Landroidx/work/impl/j;

    .line 2317
    iget-object v2, v2, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 220
    invoke-direct {v1, v2}, Landroidx/work/impl/utils/e;-><init>(Landroidx/work/impl/WorkDatabase;)V

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3087
    new-instance v4, Landroidx/work/impl/model/Preference;

    const-string v5, "last_cancel_all_time_ms"

    invoke-direct {v4, v5, v2, v3}, Landroidx/work/impl/model/Preference;-><init>(Ljava/lang/String;J)V

    .line 3088
    iget-object v1, v1, Landroidx/work/impl/utils/e;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->p()Landroidx/work/impl/model/PreferenceDao;

    move-result-object v1

    invoke-interface {v1, v4}, Landroidx/work/impl/model/PreferenceDao;->insertPreference(Landroidx/work/impl/model/Preference;)V

    .line 222
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 225
    throw v1
.end method
