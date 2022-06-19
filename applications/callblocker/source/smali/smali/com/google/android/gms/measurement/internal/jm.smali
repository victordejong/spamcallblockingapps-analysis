.class Lcom/google/android/gms/measurement/internal/jm;
.super Lcom/google/android/gms/measurement/internal/fz;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/gb;


# instance fields
.field protected final a:Lcom/google/android/gms/measurement/internal/jo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/jo;)V
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/jo;->o()Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/fz;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/jm;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 4
    return-void
.end method


# virtual methods
.method public d()Lcom/google/android/gms/measurement/internal/kf;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jm;->a:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->f()Lcom/google/android/gms/measurement/internal/kf;

    move-result-object v0

    return-object v0
.end method

.method public t_()Lcom/google/android/gms/measurement/internal/ex;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jm;->a:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/ex;

    move-result-object v0

    return-object v0
.end method

.method public u_()Lcom/google/android/gms/measurement/internal/c;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jm;->a:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    return-object v0
.end method

.method public v_()Lcom/google/android/gms/measurement/internal/js;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jm;->a:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v0

    return-object v0
.end method
