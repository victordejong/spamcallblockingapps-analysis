.class final Lcom/google/android/gms/internal/ads/dpy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/io/IOException;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/dpt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dpt;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dpy;->b:Lcom/google/android/gms/internal/ads/dpt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dpy;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpy;->b:Lcom/google/android/gms/internal/ads/dpt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dpt;->e(Lcom/google/android/gms/internal/ads/dpt;)Lcom/google/android/gms/internal/ads/dqb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpy;->a:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dqb;->a(Ljava/io/IOException;)V

    .line 3
    return-void
.end method
