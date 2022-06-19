.class final Lcom/google/android/gms/measurement/internal/fv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/measurement/internal/jx;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/kb;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/fj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fj;Lcom/google/android/gms/measurement/internal/kb;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fv;->b:Lcom/google/android/gms/measurement/internal/fj;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/fv;->a:Lcom/google/android/gms/measurement/internal/kb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fv;->b:Lcom/google/android/gms/measurement/internal/fj;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fj;->a(Lcom/google/android/gms/measurement/internal/fj;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->m()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fv;->b:Lcom/google/android/gms/measurement/internal/fj;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fj;->a(Lcom/google/android/gms/measurement/internal/fj;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fv;->a:Lcom/google/android/gms/measurement/internal/kb;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 7
    return-object v0
.end method
