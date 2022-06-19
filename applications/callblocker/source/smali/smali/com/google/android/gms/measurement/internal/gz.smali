.class final Lcom/google/android/gms/measurement/internal/gz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/gk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/gk;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/gz;->b:Lcom/google/android/gms/measurement/internal/gk;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/gz;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gz;->b:Lcom/google/android/gms/measurement/internal/gk;

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/gz;->a:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/gk;->a(Lcom/google/android/gms/measurement/internal/gk;Z)V

    .line 3
    return-void
.end method
