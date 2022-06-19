.class final Lcom/google/android/gms/measurement/internal/hq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/ho;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ho;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/hq;->a:Lcom/google/android/gms/measurement/internal/ho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hq;->a:Lcom/google/android/gms/measurement/internal/ho;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hq;->a:Lcom/google/android/gms/measurement/internal/ho;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/ho;->a(Lcom/google/android/gms/measurement/internal/ho;)Lcom/google/android/gms/measurement/internal/hp;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ho;->a:Lcom/google/android/gms/measurement/internal/hp;

    .line 3
    return-void
.end method
