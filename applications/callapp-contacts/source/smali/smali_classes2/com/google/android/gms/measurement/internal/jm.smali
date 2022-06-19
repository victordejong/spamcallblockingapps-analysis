.class final Lcom/google/android/gms/measurement/internal/jm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/jt;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/jo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/jo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/jm;->a:Lcom/google/android/gms/measurement/internal/jo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "_err"

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jm;->a:Lcom/google/android/gms/measurement/internal/jo;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/jo;)Lcom/google/android/gms/measurement/internal/es;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jm;->a:Lcom/google/android/gms/measurement/internal/jo;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/jo;)Lcom/google/android/gms/measurement/internal/es;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 1000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string p2, "AppId not known when logging event"

    .line 2
    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jm;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/measurement/internal/jl;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/google/android/gms/measurement/internal/jl;-><init>(Lcom/google/android/gms/measurement/internal/jm;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/ep;->a(Ljava/lang/Runnable;)V

    return-void
.end method
