.class final Lcom/google/android/gms/measurement/internal/fq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/r;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/google/android/gms/measurement/internal/fj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fj;Lcom/google/android/gms/measurement/internal/r;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fq;->c:Lcom/google/android/gms/measurement/internal/fj;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/fq;->a:Lcom/google/android/gms/measurement/internal/r;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/fq;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fq;->c:Lcom/google/android/gms/measurement/internal/fj;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fj;->a(Lcom/google/android/gms/measurement/internal/fj;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->m()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fq;->c:Lcom/google/android/gms/measurement/internal/fj;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fj;->a(Lcom/google/android/gms/measurement/internal/fj;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fq;->a:Lcom/google/android/gms/measurement/internal/r;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/r;Ljava/lang/String;)V

    .line 4
    return-void
.end method
