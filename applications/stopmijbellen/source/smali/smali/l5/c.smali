.class public Ll5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll5/d;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lm5/f;

.field public final c:Ll5/e;

.field public final d:Lb0/a;

.field public final e:Li4/j;

.field public final f:Lj4/s1;

.field public final g:Le5/a0;

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lm5/d;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lm5/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lm5/f;Lb0/a;Ll5/e;Li4/j;Lj4/s1;Le5/a0;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, v0, Ll5/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v4, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Ll5/c;->i:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v3, p1

    .line 4
    iput-object v3, v0, Ll5/c;->a:Landroid/content/Context;

    move-object v3, p2

    .line 5
    iput-object v3, v0, Ll5/c;->b:Lm5/f;

    .line 6
    iput-object v1, v0, Ll5/c;->d:Lb0/a;

    move-object/from16 v3, p4

    .line 7
    iput-object v3, v0, Ll5/c;->c:Ll5/e;

    move-object/from16 v3, p5

    .line 8
    iput-object v3, v0, Ll5/c;->e:Li4/j;

    move-object/from16 v3, p6

    .line 9
    iput-object v3, v0, Ll5/c;->f:Lj4/s1;

    move-object/from16 v3, p7

    .line 10
    iput-object v3, v0, Ll5/c;->g:Le5/a0;

    .line 11
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "max_custom_exception_events"

    const/16 v5, 0x8

    .line 12
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 13
    new-instance v9, Lm5/c;

    const/4 v5, 0x4

    invoke-direct {v9, v4, v5}, Lm5/c;-><init>(II)V

    const-string v4, "collect_reports"

    const/4 v5, 0x1

    .line 14
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 15
    new-instance v10, Lm5/b;

    invoke-direct {v10, v4}, Lm5/b;-><init>(Z)V

    const-wide/16 v4, 0xe10

    .line 16
    invoke-static {v1, v4, v5, v3}, Ll5/a;->b(Lb0/a;JLorg/json/JSONObject;)J

    move-result-wide v6

    .line 17
    new-instance v1, Lm5/e;

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe10

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lm5/e;-><init>(JLm5/a;Lm5/c;Lm5/b;II)V

    .line 18
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lm5/e;
    .locals 9

    const/4 v0, 0x2

    .line 1
    :try_start_0
    invoke-static {v0, p1}, Lt/g;->b(II)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2
    iget-object v1, p0, Ll5/c;->e:Li4/j;

    invoke-virtual {v1}, Li4/j;->b()Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "FirebaseCrashlytics"

    const/4 v3, 0x3

    if-eqz v1, :cond_3

    .line 3
    :try_start_1
    iget-object v4, p0, Ll5/c;->c:Ll5/e;

    invoke-virtual {v4, v1}, Ll5/e;->a(Lorg/json/JSONObject;)Lm5/e;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 5
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 6
    iget-object v1, p0, Ll5/c;->d:Lb0/a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 8
    invoke-static {v3, p1}, Lt/g;->b(II)Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-wide v7, v4, Lm5/e;->d:J

    cmp-long p1, v7, v5

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 11
    :cond_2
    :goto_1
    :try_start_2
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 12
    :cond_3
    :try_start_3
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_4
    :goto_2
    const/4 v4, 0x0

    :catch_1
    :goto_3
    return-object v4
.end method

.method public b()Lm5/d;
    .locals 1

    .line 1
    iget-object v0, p0, Ll5/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm5/d;

    return-object v0
.end method
