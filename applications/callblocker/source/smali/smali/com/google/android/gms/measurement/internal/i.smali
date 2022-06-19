.class final Lcom/google/android/gms/measurement/internal/i;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/gb;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/j;Lcom/google/android/gms/measurement/internal/gb;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i;->b:Lcom/google/android/gms/measurement/internal/j;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/i;->a:Lcom/google/android/gms/measurement/internal/gb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->a:Lcom/google/android/gms/measurement/internal/gb;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/gb;->y()Lcom/google/android/gms/measurement/internal/kk;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/kk;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->a:Lcom/google/android/gms/measurement/internal/gb;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/gb;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 8
    :cond_0
    :goto_0
    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->b:Lcom/google/android/gms/measurement/internal/j;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j;->b()Z

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/i;->b:Lcom/google/android/gms/measurement/internal/j;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/j;->a(Lcom/google/android/gms/measurement/internal/j;J)J

    .line 6
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->b:Lcom/google/android/gms/measurement/internal/j;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j;->a()V

    goto :goto_0
.end method
