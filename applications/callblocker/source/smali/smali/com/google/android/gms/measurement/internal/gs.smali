.class final Lcom/google/android/gms/measurement/internal/gs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/ge;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/gk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/gk;Lcom/google/android/gms/measurement/internal/ge;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/gs;->b:Lcom/google/android/gms/measurement/internal/gk;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/gs;->a:Lcom/google/android/gms/measurement/internal/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gs;->b:Lcom/google/android/gms/measurement/internal/gk;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/gs;->a:Lcom/google/android/gms/measurement/internal/ge;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/gk;->a(Lcom/google/android/gms/measurement/internal/ge;)V

    .line 3
    return-void
.end method
