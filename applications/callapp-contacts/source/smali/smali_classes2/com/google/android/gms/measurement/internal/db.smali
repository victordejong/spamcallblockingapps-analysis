.class Lcom/google/android/gms/measurement/internal/db;
.super Lcom/google/android/gms/measurement/internal/fm;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/fo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/es;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/fm;-><init>(Lcom/google/android/gms/measurement/internal/es;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final S_()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/db;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    return-void
.end method
