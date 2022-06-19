.class final synthetic Lcom/google/android/gms/internal/ads/m9;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/r9;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/r9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/m9;->d:Lcom/google/android/gms/internal/ads/r9;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m9;->d:Lcom/google/android/gms/internal/ads/r9;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/r9;->g(Landroid/os/Message;)Z

    const/4 p1, 0x1

    return p1
.end method
