.class final Lcom/google/android/gms/measurement/internal/it;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/im;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/im;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/it;->a:Lcom/google/android/gms/measurement/internal/im;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/it;->a:Lcom/google/android/gms/measurement/internal/im;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/im;->a:Lcom/google/android/gms/measurement/internal/hu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/hu;->a(Lcom/google/android/gms/measurement/internal/hu;Lcom/google/android/gms/measurement/internal/dq;)Lcom/google/android/gms/measurement/internal/dq;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/it;->a:Lcom/google/android/gms/measurement/internal/im;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/im;->a:Lcom/google/android/gms/measurement/internal/hu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/hu;->b(Lcom/google/android/gms/measurement/internal/hu;)V

    .line 4
    return-void
.end method
