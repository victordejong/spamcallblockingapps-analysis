.class final Lcom/google/android/gms/measurement/internal/ff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/zzas;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/fl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fl;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ff;->c:Lcom/google/android/gms/measurement/internal/fl;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ff;->a:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/ff;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ff;->c:Lcom/google/android/gms/measurement/internal/fl;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fl;->a(Lcom/google/android/gms/measurement/internal/fl;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->n()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ff;->c:Lcom/google/android/gms/measurement/internal/fl;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fl;->a(Lcom/google/android/gms/measurement/internal/fl;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ff;->a:Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ff;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V

    return-void
.end method
