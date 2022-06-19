.class final Lcom/google/android/gms/measurement/internal/em;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/ej;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ej;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/em;->b:Lcom/google/android/gms/measurement/internal/ej;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/em;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/em;->b:Lcom/google/android/gms/measurement/internal/ej;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/ej;->a(Lcom/google/android/gms/measurement/internal/ej;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/em;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Z)V

    .line 3
    return-void
.end method
