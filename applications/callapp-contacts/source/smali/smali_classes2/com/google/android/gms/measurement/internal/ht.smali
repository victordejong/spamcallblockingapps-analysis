.class final Lcom/google/android/gms/measurement/internal/ht;
.super Lcom/google/android/gms/measurement/internal/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/ik;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ik;Lcom/google/android/gms/measurement/internal/fo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ht;->a:Lcom/google/android/gms/measurement/internal/ik;

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/l;-><init>(Lcom/google/android/gms/measurement/internal/fo;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ht;->a:Lcom/google/android/gms/measurement/internal/ik;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ik;->e()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 1000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Inactivity, disconnecting from the service"

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ik;->p()V

    return-void
.end method
