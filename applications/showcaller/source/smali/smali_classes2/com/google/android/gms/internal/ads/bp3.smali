.class final synthetic Lcom/google/android/gms/internal/ads/bp3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dp3;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ip3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ip3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bp3;->a:Lcom/google/android/gms/internal/ads/ip3;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/Display;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp3;->a:Lcom/google/android/gms/internal/ads/ip3;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ip3;->l(Landroid/view/Display;)V

    return-void
.end method
