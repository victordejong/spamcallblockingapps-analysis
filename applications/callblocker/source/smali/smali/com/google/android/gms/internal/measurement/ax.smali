.class final Lcom/google/android/gms/internal/measurement/ax;
.super Landroid/database/ContentObserver;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/av;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/av;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ax;->a:Lcom/google/android/gms/internal/measurement/av;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ax;->a:Lcom/google/android/gms/internal/measurement/av;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/av;->b()V

    .line 3
    return-void
.end method
