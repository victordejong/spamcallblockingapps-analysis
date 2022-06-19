.class final Lcom/google/android/gms/internal/ads/dul;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/view/View;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/dui;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dui;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dul;->b:Lcom/google/android/gms/internal/ads/dui;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dul;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dul;->b:Lcom/google/android/gms/internal/ads/dui;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dul;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dui;->a(Landroid/view/View;)V

    .line 3
    return-void
.end method
