.class public final synthetic Le5/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld5/a;


# instance fields
.field public final synthetic a:Le5/v;


# direct methods
.method public synthetic constructor <init>(Le5/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le5/s;->a:Le5/v;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Le5/s;->a:Le5/v;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Le5/v;->c:J

    sub-long/2addr v1, v3

    .line 2
    iget-object v0, v0, Le5/v;->f:Le5/p;

    .line 3
    iget-object v3, v0, Le5/p;->d:Le5/f;

    new-instance v4, Le5/q;

    invoke-direct {v4, v0, v1, v2, p1}, Le5/q;-><init>(Le5/p;JLjava/lang/String;)V

    invoke-virtual {v3, v4}, Le5/f;->b(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
