.class final Lcom/google/android/gms/measurement/internal/fr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/r;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/kb;

.field private final synthetic c:Lcom/google/android/gms/measurement/internal/fj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fj;Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fr;->c:Lcom/google/android/gms/measurement/internal/fj;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/fr;->a:Lcom/google/android/gms/measurement/internal/r;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/fr;->b:Lcom/google/android/gms/measurement/internal/kb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fr;->c:Lcom/google/android/gms/measurement/internal/fj;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fr;->a:Lcom/google/android/gms/measurement/internal/r;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fr;->b:Lcom/google/android/gms/measurement/internal/kb;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/fj;->b(Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)Lcom/google/android/gms/measurement/internal/r;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fr;->c:Lcom/google/android/gms/measurement/internal/fj;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/fj;->a(Lcom/google/android/gms/measurement/internal/fj;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jo;->m()V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fr;->c:Lcom/google/android/gms/measurement/internal/fj;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/fj;->a(Lcom/google/android/gms/measurement/internal/fj;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fr;->b:Lcom/google/android/gms/measurement/internal/kb;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)V

    .line 6
    return-void
.end method
