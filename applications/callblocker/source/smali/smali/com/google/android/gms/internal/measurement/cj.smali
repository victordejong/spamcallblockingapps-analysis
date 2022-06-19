.class final Lcom/google/android/gms/internal/measurement/cj;
.super Lcom/google/android/gms/internal/measurement/ce;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ce;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 3
    return-void
.end method
