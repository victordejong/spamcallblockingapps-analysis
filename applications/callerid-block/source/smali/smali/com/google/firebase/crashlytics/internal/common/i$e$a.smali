.class Lcom/google/firebase/crashlytics/internal/common/i$e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/i$e;->b(Ljava/lang/Boolean;)Lcom/google/android/gms/tasks/g;
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
.field final synthetic a:Ljava/lang/Boolean;

.field final synthetic b:Lcom/google/firebase/crashlytics/internal/common/i$e;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/i$e;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/i$e$a;->b:Lcom/google/firebase/crashlytics/internal/common/i$e;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/i$e$a;->a:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tasks/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i$e$a;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Deleting cached crash reports..."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i$e$a;->b:Lcom/google/firebase/crashlytics/internal/common/i$e;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/i$e;->b:Lcom/google/firebase/crashlytics/internal/common/i;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/i;->L()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/i;->l([Ljava/io/File;)V

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i$e$a;->b:Lcom/google/firebase/crashlytics/internal/common/i$e;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/i$e;->b:Lcom/google/firebase/crashlytics/internal/common/i;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/i;->f(Lcom/google/firebase/crashlytics/internal/common/i;)Lcom/google/firebase/crashlytics/internal/common/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/b0;->o()V

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i$e$a;->b:Lcom/google/firebase/crashlytics/internal/common/i$e;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/i$e;->b:Lcom/google/firebase/crashlytics/internal/common/i;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/i;->r:Lcom/google/android/gms/tasks/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->e(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/google/android/gms/tasks/j;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Sending cached crash reports..."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i$e$a;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/i$e$a;->b:Lcom/google/firebase/crashlytics/internal/common/i$e;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/i$e;->b:Lcom/google/firebase/crashlytics/internal/common/i;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/i;->i(Lcom/google/firebase/crashlytics/internal/common/i;)Lcom/google/firebase/crashlytics/internal/common/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/q;->c(Z)V

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i$e$a;->b:Lcom/google/firebase/crashlytics/internal/common/i$e;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/i$e;->b:Lcom/google/firebase/crashlytics/internal/common/i;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/i;->j(Lcom/google/firebase/crashlytics/internal/common/i;)Lcom/google/firebase/crashlytics/internal/common/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/g;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/i$e$a;->b:Lcom/google/firebase/crashlytics/internal/common/i$e;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/i$e;->a:Lcom/google/android/gms/tasks/g;

    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/i$e$a$a;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/crashlytics/internal/common/i$e$a$a;-><init>(Lcom/google/firebase/crashlytics/internal/common/i$e$a;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/tasks/g;->q(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/i$e$a;->a()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method
