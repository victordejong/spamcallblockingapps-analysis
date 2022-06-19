.class final synthetic Lcom/google/android/gms/internal/ads/jw1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private final d:Lcom/google/android/gms/ads/internal/overlay/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jw1;->d:Lcom/google/android/gms/ads/internal/overlay/l;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/jw1;->d:Lcom/google/android/gms/ads/internal/overlay/l;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/l;->b()V

    :cond_0
    return-void
.end method
