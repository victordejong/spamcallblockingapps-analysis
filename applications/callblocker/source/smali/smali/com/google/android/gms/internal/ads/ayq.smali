.class final synthetic Lcom/google/android/gms/internal/ads/ayq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aym;

.field private final b:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aym;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ayq;->a:Lcom/google/android/gms/internal/ads/aym;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/ayq;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayq;->a:Lcom/google/android/gms/internal/ads/aym;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ayq;->b:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aym;->a(Z)V

    return-void
.end method
