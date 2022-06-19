.class final synthetic Lcom/google/android/gms/internal/ads/pf1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/rf1;

.field private final e:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rf1;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pf1;->d:Lcom/google/android/gms/internal/ads/rf1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pf1;->e:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pf1;->d:Lcom/google/android/gms/internal/ads/rf1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pf1;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rf1;->e(Landroid/view/ViewGroup;)V

    return-void
.end method
