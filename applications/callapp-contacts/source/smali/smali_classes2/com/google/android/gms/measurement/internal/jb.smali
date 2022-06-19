.class final Lcom/google/android/gms/measurement/internal/jb;
.super Lcom/google/android/gms/measurement/internal/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/jc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/jc;Lcom/google/android/gms/measurement/internal/fo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/jb;->a:Lcom/google/android/gms/measurement/internal/jc;

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/l;-><init>(Lcom/google/android/gms/measurement/internal/fo;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jb;->a:Lcom/google/android/gms/measurement/internal/jc;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jc;->b()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jb;->a:Lcom/google/android/gms/measurement/internal/jc;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v1, "Starting upload from DelayedRunnable"

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jb;->a:Lcom/google/android/gms/measurement/internal/jc;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/jc;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->l()V

    return-void
.end method
