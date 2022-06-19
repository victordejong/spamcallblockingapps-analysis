.class final synthetic Lcom/google/android/gms/ads/internal/util/r;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private final d:Lcom/google/android/gms/ads/internal/util/w;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/r;->d:Lcom/google/android/gms/ads/internal/util/w;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/r;->d:Lcom/google/android/gms/ads/internal/util/w;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/w;->b()V

    return-void
.end method
