.class Lcom/google/firebase/crashlytics/internal/settings/c$a;
.super Ljava/lang/Object;
.source "SettingsController.java"

# interfaces
.implements Lcom/google/android/gms/tasks/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/settings/c;->o(Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/f<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/crashlytics/internal/settings/c;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/settings/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/c$a;->a:Lcom/google/firebase/crashlytics/internal/settings/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/c$a;->b(Ljava/lang/Void;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Void;)Lcom/google/android/gms/tasks/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/c$a;->a:Lcom/google/firebase/crashlytics/internal/settings/c;

    .line 2
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/settings/c;->d(Lcom/google/firebase/crashlytics/internal/settings/c;)Lcom/google/firebase/crashlytics/internal/settings/i/b;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/c$a;->a:Lcom/google/firebase/crashlytics/internal/settings/c;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/c;->c(Lcom/google/firebase/crashlytics/internal/settings/c;)Lcom/google/firebase/crashlytics/internal/settings/h/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/crashlytics/internal/settings/i/b;->a(Lcom/google/firebase/crashlytics/internal/settings/h/f;Z)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/c$a;->a:Lcom/google/firebase/crashlytics/internal/settings/c;

    .line 4
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/c;->e(Lcom/google/firebase/crashlytics/internal/settings/c;)Lcom/google/firebase/crashlytics/internal/settings/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/settings/e;->b(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/h/e;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/c$a;->a:Lcom/google/firebase/crashlytics/internal/settings/c;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/settings/c;->f(Lcom/google/firebase/crashlytics/internal/settings/c;)Lcom/google/firebase/crashlytics/internal/settings/a;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/settings/h/e;->d()J

    move-result-wide v2

    .line 7
    invoke-virtual {v1, v2, v3, p1}, Lcom/google/firebase/crashlytics/internal/settings/a;->c(JLorg/json/JSONObject;)V

    .line 8
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/c$a;->a:Lcom/google/firebase/crashlytics/internal/settings/c;

    const-string v2, "Loaded settings: "

    invoke-static {v1, p1, v2}, Lcom/google/firebase/crashlytics/internal/settings/c;->g(Lcom/google/firebase/crashlytics/internal/settings/c;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/c$a;->a:Lcom/google/firebase/crashlytics/internal/settings/c;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/settings/c;->c(Lcom/google/firebase/crashlytics/internal/settings/c;)Lcom/google/firebase/crashlytics/internal/settings/h/f;

    move-result-object v1

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/settings/h/f;->f:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/firebase/crashlytics/internal/settings/c;->h(Lcom/google/firebase/crashlytics/internal/settings/c;Ljava/lang/String;)Z

    .line 10
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/c$a;->a:Lcom/google/firebase/crashlytics/internal/settings/c;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/settings/c;->i(Lcom/google/firebase/crashlytics/internal/settings/c;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/c$a;->a:Lcom/google/firebase/crashlytics/internal/settings/c;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/settings/c;->j(Lcom/google/firebase/crashlytics/internal/settings/c;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tasks/h;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/settings/h/e;->c()Lcom/google/firebase/crashlytics/internal/settings/h/a;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/h;->e(Ljava/lang/Object;)Z

    .line 12
    new-instance p1, Lcom/google/android/gms/tasks/h;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/h;-><init>()V

    .line 13
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/settings/h/e;->c()Lcom/google/firebase/crashlytics/internal/settings/h/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/h;->e(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/c$a;->a:Lcom/google/firebase/crashlytics/internal/settings/c;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/c;->j(Lcom/google/firebase/crashlytics/internal/settings/c;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/tasks/j;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method
