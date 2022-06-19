.class final Lcom/google/android/gms/measurement/internal/er;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/fv;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/es;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/es;Lcom/google/android/gms/measurement/internal/fv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/er;->b:Lcom/google/android/gms/measurement/internal/es;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/er;->a:Lcom/google/android/gms/measurement/internal/fv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/er;->b:Lcom/google/android/gms/measurement/internal/es;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/er;->a:Lcom/google/android/gms/measurement/internal/fv;

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/es;->a(Lcom/google/android/gms/measurement/internal/es;Lcom/google/android/gms/measurement/internal/fv;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/er;->b:Lcom/google/android/gms/measurement/internal/es;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/er;->a:Lcom/google/android/gms/measurement/internal/fv;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/fv;->g:Lcom/google/android/gms/internal/measurement/zzz;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/es;->a(Lcom/google/android/gms/internal/measurement/zzz;)V

    return-void
.end method
