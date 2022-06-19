.class public Landroidx/work/impl/background/systemjob/b;
.super Ljava/lang/Object;
.source "SystemJobScheduler.java"

# interfaces
.implements Landroidx/work/impl/d;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/app/job/JobScheduler;

.field private final d:Landroidx/work/impl/i;

.field private final e:Landroidx/work/impl/background/systemjob/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "SystemJobScheduler"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemjob/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/i;)V
    .locals 2

    .prologue
    .line 64
    const-string/jumbo v0, "jobscheduler"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    new-instance v1, Landroidx/work/impl/background/systemjob/a;

    invoke-direct {v1, p1}, Landroidx/work/impl/background/systemjob/a;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/work/impl/background/systemjob/b;-><init>(Landroid/content/Context;Landroidx/work/impl/i;Landroid/app/job/JobScheduler;Landroidx/work/impl/background/systemjob/a;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/i;Landroid/app/job/JobScheduler;Landroidx/work/impl/background/systemjob/a;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroidx/work/impl/background/systemjob/b;->b:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Landroidx/work/impl/background/systemjob/b;->d:Landroidx/work/impl/i;

    .line 78
    iput-object p3, p0, Landroidx/work/impl/background/systemjob/b;->c:Landroid/app/job/JobScheduler;

    .line 79
    iput-object p4, p0, Landroidx/work/impl/background/systemjob/b;->e:Landroidx/work/impl/background/systemjob/a;

    .line 80
    return-void
.end method

.method private static a(Landroid/app/job/JobInfo;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v1, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    const-string/jumbo v1, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 345
    :goto_0
    return-object v0

    .line 341
    :catch_0
    move-exception v0

    .line 345
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/job/JobScheduler;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 278
    .line 283
    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 290
    :goto_0
    if-nez v2, :cond_0

    .line 302
    :goto_1
    return-object v0

    .line 284
    :catch_0
    move-exception v1

    .line 286
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/background/systemjob/b;->a:Ljava/lang/String;

    const-string/jumbo v4, "getAllPendingJobs() is not reliable on this device."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroidx/work/l;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-object v2, v0

    goto :goto_0

    .line 295
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    new-instance v3, Landroid/content/ComponentName;

    const-class v0, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {v3, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 298
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 299
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 302
    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/job/JobScheduler;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    invoke-static {p0, p1}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v0

    .line 318
    if-nez v0, :cond_0

    .line 319
    const/4 v0, 0x0

    .line 331
    :goto_0
    return-object v0

    .line 323
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 325
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 326
    invoke-static {v0}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/app/job/JobInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 331
    goto :goto_0
.end method

.method private static a(Landroid/app/job/JobScheduler;I)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 223
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 226
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/background/systemjob/b;->a:Ljava/lang/String;

    .line 228
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "Exception while trying to cancel job (%d)"

    new-array v5, v8, [Ljava/lang/Object;

    .line 230
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 227
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Throwable;

    aput-object v0, v4, v7

    .line 226
    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/l;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 241
    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 242
    if-eqz v0, :cond_0

    .line 243
    invoke-static {p0, v0}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v1

    .line 244
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    .line 246
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    .line 250
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 261
    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 262
    if-eqz v0, :cond_1

    .line 263
    invoke-static {p0, v0}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v1

    .line 264
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 265
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    .line 266
    invoke-static {v1}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/app/job/JobInfo;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 267
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    .line 272
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroidx/work/impl/b/p;I)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/b;->e:Landroidx/work/impl/background/systemjob/a;

    invoke-virtual {v0, p1, p2}, Landroidx/work/impl/background/systemjob/a;->a(Landroidx/work/impl/b/p;I)Landroid/app/job/JobInfo;

    move-result-object v0

    .line 177
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/background/systemjob/b;->a:Ljava/lang/String;

    const-string/jumbo v4, "Scheduling work ID %s Job ID %s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p1, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    aput-object v6, v5, v1

    .line 179
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Throwable;

    .line 177
    invoke-virtual {v2, v3, v4, v5}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 181
    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/background/systemjob/b;->c:Landroid/app/job/JobScheduler;

    invoke-virtual {v2, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 185
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/b;->b:Landroid/content/Context;

    iget-object v3, p0, Landroidx/work/impl/background/systemjob/b;->c:Landroid/app/job/JobScheduler;

    invoke-static {v0, v3}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 188
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 192
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    iget-object v0, p0, Landroidx/work/impl/background/systemjob/b;->d:Landroidx/work/impl/i;

    .line 193
    invoke-virtual {v0}, Landroidx/work/impl/i;->c()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->o()Landroidx/work/impl/b/q;

    move-result-object v0

    invoke-interface {v0}, Landroidx/work/impl/b/q;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    iget-object v0, p0, Landroidx/work/impl/background/systemjob/b;->d:Landroidx/work/impl/i;

    .line 194
    invoke-virtual {v0}, Landroidx/work/impl/i;->d()Landroidx/work/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/b;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    .line 188
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v3

    sget-object v4, Landroidx/work/impl/background/systemjob/b;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v0, v1}, Landroidx/work/l;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 199
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move v0, v1

    .line 186
    goto :goto_1

    .line 200
    :catch_1
    move-exception v0

    .line 202
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/background/systemjob/b;->a:Ljava/lang/String;

    const-string/jumbo v4, "Unable to schedule %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Throwable;

    aput-object v0, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroidx/work/l;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/b;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/work/impl/background/systemjob/b;->c:Landroid/app/job/JobScheduler;

    invoke-static {v0, v1, p1}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 210
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 211
    iget-object v2, p0, Landroidx/work/impl/background/systemjob/b;->c:Landroid/app/job/JobScheduler;

    invoke-static {v2, v0}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/b;->d:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->c()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->r()Landroidx/work/impl/b/h;

    move-result-object v0

    .line 217
    invoke-interface {v0, p1}, Landroidx/work/impl/b/h;->b(Ljava/lang/String;)V

    .line 219
    :cond_1
    return-void
.end method

.method public varargs a([Landroidx/work/impl/b/p;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Landroidx/work/impl/background/systemjob/b;->d:Landroidx/work/impl/i;

    invoke-virtual {v1}, Landroidx/work/impl/i;->c()Landroidx/work/impl/WorkDatabase;

    move-result-object v2

    .line 85
    new-instance v3, Landroidx/work/impl/utils/c;

    invoke-direct {v3, v2}, Landroidx/work/impl/utils/c;-><init>(Landroidx/work/impl/WorkDatabase;)V

    .line 87
    array-length v4, p1

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_7

    aget-object v5, p1, v1

    .line 88
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->g()V

    .line 90
    :try_start_0
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->o()Landroidx/work/impl/b/q;

    move-result-object v0

    iget-object v6, v5, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    invoke-interface {v0, v6}, Landroidx/work/impl/b/q;->b(Ljava/lang/String;)Landroidx/work/impl/b/p;

    move-result-object v0

    .line 91
    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v6, Landroidx/work/impl/background/systemjob/b;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Skipping scheduling "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, v5, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " because it\'s no longer in the DB"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Throwable;

    invoke-virtual {v0, v6, v5, v7}, Landroidx/work/l;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 99
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 87
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 101
    :cond_0
    :try_start_1
    iget-object v0, v0, Landroidx/work/impl/b/p;->b:Landroidx/work/s$a;

    sget-object v6, Landroidx/work/s$a;->a:Landroidx/work/s$a;

    if-eq v0, v6, :cond_1

    .line 102
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v6, Landroidx/work/impl/background/systemjob/b;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Skipping scheduling "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, v5, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " because it is no longer enqueued"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Throwable;

    invoke-virtual {v0, v6, v5, v7}, Landroidx/work/l;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 109
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->h()V

    goto :goto_1

    .line 113
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->r()Landroidx/work/impl/b/h;

    move-result-object v0

    iget-object v6, v5, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    .line 114
    invoke-interface {v0, v6}, Landroidx/work/impl/b/h;->a(Ljava/lang/String;)Landroidx/work/impl/b/g;

    move-result-object v6

    .line 116
    if-eqz v6, :cond_5

    iget v0, v6, Landroidx/work/impl/b/g;->b:I

    .line 120
    :goto_2
    if-nez v6, :cond_2

    .line 121
    new-instance v6, Landroidx/work/impl/b/g;

    iget-object v7, v5, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    invoke-direct {v6, v7, v0}, Landroidx/work/impl/b/g;-><init>(Ljava/lang/String;I)V

    .line 122
    iget-object v7, p0, Landroidx/work/impl/background/systemjob/b;->d:Landroidx/work/impl/i;

    invoke-virtual {v7}, Landroidx/work/impl/i;->c()Landroidx/work/impl/WorkDatabase;

    move-result-object v7

    .line 123
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->r()Landroidx/work/impl/b/h;

    move-result-object v7

    .line 124
    invoke-interface {v7, v6}, Landroidx/work/impl/b/h;->a(Landroidx/work/impl/b/g;)V

    .line 127
    :cond_2
    invoke-virtual {p0, v5, v0}, Landroidx/work/impl/background/systemjob/b;->a(Landroidx/work/impl/b/p;I)V

    .line 134
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-ne v6, v7, :cond_4

    .line 137
    iget-object v6, p0, Landroidx/work/impl/background/systemjob/b;->b:Landroid/content/Context;

    iget-object v7, p0, Landroidx/work/impl/background/systemjob/b;->c:Landroid/app/job/JobScheduler;

    iget-object v8, v5, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 142
    if-eqz v6, :cond_4

    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 145
    if-ltz v0, :cond_3

    .line 146
    invoke-interface {v6, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 150
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 152
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 159
    :goto_3
    invoke-virtual {p0, v5, v0}, Landroidx/work/impl/background/systemjob/b;->a(Landroidx/work/impl/b/p;I)V

    .line 162
    :cond_4
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->h()V

    goto/16 :goto_1

    .line 116
    :cond_5
    :try_start_3
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/b;->d:Landroidx/work/impl/i;

    .line 117
    invoke-virtual {v0}, Landroidx/work/impl/i;->d()Landroidx/work/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/b;->f()I

    move-result v0

    iget-object v7, p0, Landroidx/work/impl/background/systemjob/b;->d:Landroidx/work/impl/i;

    .line 118
    invoke-virtual {v7}, Landroidx/work/impl/i;->d()Landroidx/work/b;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/work/b;->g()I

    move-result v7

    .line 116
    invoke-virtual {v3, v0, v7}, Landroidx/work/impl/utils/c;->a(II)I

    move-result v0

    goto :goto_2

    .line 155
    :cond_6
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/b;->d:Landroidx/work/impl/i;

    .line 156
    invoke-virtual {v0}, Landroidx/work/impl/i;->d()Landroidx/work/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/b;->f()I

    move-result v0

    iget-object v6, p0, Landroidx/work/impl/background/systemjob/b;->d:Landroidx/work/impl/i;

    .line 157
    invoke-virtual {v6}, Landroidx/work/impl/i;->d()Landroidx/work/b;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/work/b;->g()I

    move-result v6

    .line 155
    invoke-virtual {v3, v0, v6}, Landroidx/work/impl/utils/c;->a(II)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    goto :goto_3

    .line 164
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 165
    throw v0

    .line 167
    :cond_7
    return-void
.end method
