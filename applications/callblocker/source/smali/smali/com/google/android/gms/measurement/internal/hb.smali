.class final Lcom/google/android/gms/measurement/internal/hb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/gk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/gk;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/hb;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hb;->a:Lcom/google/android/gms/measurement/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/gk;->b:Lcom/google/android/gms/measurement/internal/kc;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/kc;->a()V

    .line 3
    return-void
.end method
