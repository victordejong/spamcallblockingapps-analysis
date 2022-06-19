.class final Lcom/google/android/gms/measurement/internal/ff;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/gg;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/fd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fd;Lcom/google/android/gms/measurement/internal/gg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ff;->b:Lcom/google/android/gms/measurement/internal/fd;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ff;->a:Lcom/google/android/gms/measurement/internal/gg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ff;->b:Lcom/google/android/gms/measurement/internal/fd;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ff;->a:Lcom/google/android/gms/measurement/internal/gg;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->a(Lcom/google/android/gms/measurement/internal/fd;Lcom/google/android/gms/measurement/internal/gg;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ff;->b:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->a()V

    .line 4
    return-void
.end method
