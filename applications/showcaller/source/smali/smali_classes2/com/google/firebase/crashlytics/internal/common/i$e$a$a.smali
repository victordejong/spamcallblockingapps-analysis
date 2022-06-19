.class Lcom/google/firebase/crashlytics/internal/common/i$e$a$a;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/google/android/gms/tasks/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/i$e$a;->a()Lcom/google/android/gms/tasks/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/f<",
        "Lcom/google/firebase/crashlytics/internal/settings/h/a;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Executor;

.field final synthetic b:Lcom/google/firebase/crashlytics/internal/common/i$e$a;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/i$e$a;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/i$e$a$a;->b:Lcom/google/firebase/crashlytics/internal/common/i$e$a;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/i$e$a$a;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/firebase/crashlytics/internal/settings/h/a;

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/i$e$a$a;->b(Lcom/google/firebase/crashlytics/internal/settings/h/a;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/firebase/crashlytics/internal/settings/h/a;)Lcom/google/android/gms/tasks/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/settings/h/a;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string v1, "Received null app settings at app startup. Cannot send cached reports"

    .line 2
    invoke-virtual {p1, v1}, Lcom/google/firebase/crashlytics/d/b;->k(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/tasks/j;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/i$e$a$a;->b:Lcom/google/firebase/crashlytics/internal/common/i$e$a;

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/i$e$a;->b:Lcom/google/firebase/crashlytics/internal/common/i$e;

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/i$e;->b:Lcom/google/firebase/crashlytics/internal/common/i;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/i;->k(Lcom/google/firebase/crashlytics/internal/common/i;)Lcom/google/android/gms/tasks/g;

    .line 5
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/i$e$a$a;->b:Lcom/google/firebase/crashlytics/internal/common/i$e$a;

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/i$e$a;->b:Lcom/google/firebase/crashlytics/internal/common/i$e;

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/i$e;->b:Lcom/google/firebase/crashlytics/internal/common/i;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/i;->f(Lcom/google/firebase/crashlytics/internal/common/i;)Lcom/google/firebase/crashlytics/internal/common/b0;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/i$e$a$a;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1}, Lcom/google/firebase/crashlytics/internal/common/b0;->n(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/g;

    .line 6
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/i$e$a$a;->b:Lcom/google/firebase/crashlytics/internal/common/i$e$a;

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/i$e$a;->b:Lcom/google/firebase/crashlytics/internal/common/i$e;

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/i$e;->b:Lcom/google/firebase/crashlytics/internal/common/i;

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/i;->s:Lcom/google/android/gms/tasks/h;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/h;->e(Ljava/lang/Object;)Z

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/tasks/j;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method
