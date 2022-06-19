.class final synthetic Lcom/google/android/gms/cloudmessaging/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/b;


# instance fields
.field private final a:Lcom/google/android/gms/cloudmessaging/b;

.field private final b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/b;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/v;->a:Lcom/google/android/gms/cloudmessaging/b;

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/v;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/h;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/v;->a:Lcom/google/android/gms/cloudmessaging/b;

    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/v;->b:Landroid/os/Bundle;

    .line 1143
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/h;->b()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p1

    .line 1145
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/h;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Lcom/google/android/gms/cloudmessaging/b;->b(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object p1

    .line 1147
    :cond_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cloudmessaging/b;->c(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/cloudmessaging/b;->a:Ljava/util/concurrent/Executor;

    sget-object v1, Lcom/google/android/gms/cloudmessaging/w;->a:Lcom/google/android/gms/tasks/g;

    .line 1148
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/h;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method
