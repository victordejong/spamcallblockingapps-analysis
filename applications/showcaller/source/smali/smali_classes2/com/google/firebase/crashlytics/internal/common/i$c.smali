.class Lcom/google/firebase/crashlytics/internal/common/i$c;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/i;->E(Lcom/google/firebase/crashlytics/internal/settings/d;Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/tasks/g<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Date;

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Ljava/lang/Thread;

.field final synthetic d:Lcom/google/firebase/crashlytics/internal/settings/d;

.field final synthetic e:Lcom/google/firebase/crashlytics/internal/common/i;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/i;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;Lcom/google/firebase/crashlytics/internal/settings/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/i$c;->e:Lcom/google/firebase/crashlytics/internal/common/i;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/i$c;->a:Ljava/util/Date;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/i$c;->b:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/i$c;->c:Ljava/lang/Thread;

    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/common/i$c;->d:Lcom/google/firebase/crashlytics/internal/settings/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tasks/g;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i$c;->a:Ljava/util/Date;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/i;->a(Ljava/util/Date;)J

    move-result-wide v5

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i$c;->e:Lcom/google/firebase/crashlytics/internal/common/i;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/i;->b(Lcom/google/firebase/crashlytics/internal/common/i;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    if-nez v4, :cond_0

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v1

    const-string v2, "Tried to write a fatal exception while no session was open."

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/d/b;->d(Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/tasks/j;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/i$c;->e:Lcom/google/firebase/crashlytics/internal/common/i;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/i;->e(Lcom/google/firebase/crashlytics/internal/common/i;)Lcom/google/firebase/crashlytics/internal/common/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/common/l;->a()Z

    .line 7
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/i$c;->e:Lcom/google/firebase/crashlytics/internal/common/i;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/i;->f(Lcom/google/firebase/crashlytics/internal/common/i;)Lcom/google/firebase/crashlytics/internal/common/b0;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/i$c;->b:Ljava/lang/Throwable;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/i$c;->c:Ljava/lang/Thread;

    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/crashlytics/internal/common/b0;->l(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V

    .line 8
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/i$c;->e:Lcom/google/firebase/crashlytics/internal/common/i;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/i$c;->a:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/firebase/crashlytics/internal/common/i;->g(Lcom/google/firebase/crashlytics/internal/common/i;J)V

    .line 9
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/i$c;->e:Lcom/google/firebase/crashlytics/internal/common/i;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/common/i;->o()V

    .line 10
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/i$c;->e:Lcom/google/firebase/crashlytics/internal/common/i;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/i;->h(Lcom/google/firebase/crashlytics/internal/common/i;)V

    .line 11
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/i$c;->e:Lcom/google/firebase/crashlytics/internal/common/i;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/i;->i(Lcom/google/firebase/crashlytics/internal/common/i;)Lcom/google/firebase/crashlytics/internal/common/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/common/q;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/tasks/j;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i$c;->e:Lcom/google/firebase/crashlytics/internal/common/i;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/i;->j(Lcom/google/firebase/crashlytics/internal/common/i;)Lcom/google/firebase/crashlytics/internal/common/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/g;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/i$c;->d:Lcom/google/firebase/crashlytics/internal/settings/d;

    .line 15
    invoke-interface {v1}, Lcom/google/firebase/crashlytics/internal/settings/d;->a()Lcom/google/android/gms/tasks/g;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/i$c$a;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/crashlytics/internal/common/i$c$a;-><init>(Lcom/google/firebase/crashlytics/internal/common/i$c;Ljava/util/concurrent/Executor;)V

    .line 16
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/tasks/g;->s(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/i$c;->a()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method
