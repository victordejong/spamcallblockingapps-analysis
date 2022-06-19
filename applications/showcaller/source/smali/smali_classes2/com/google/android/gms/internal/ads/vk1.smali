.class final synthetic Lcom/google/android/gms/internal/ads/vk1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/al1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/al1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vk1;->d:Lcom/google/android/gms/internal/ads/al1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vk1;->d:Lcom/google/android/gms/internal/ads/al1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/al1;->d(Landroid/view/View;)V

    return-void
.end method
