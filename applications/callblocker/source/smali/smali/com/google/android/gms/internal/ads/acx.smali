.class final Lcom/google/android/gms/internal/ads/acx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/view/View;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/st;

.field private final synthetic c:I

.field private final synthetic d:Lcom/google/android/gms/internal/ads/acs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/acs;Landroid/view/View;Lcom/google/android/gms/internal/ads/st;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/acx;->d:Lcom/google/android/gms/internal/ads/acs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/acx;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/acx;->b:Lcom/google/android/gms/internal/ads/st;

    iput p4, p0, Lcom/google/android/gms/internal/ads/acx;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acx;->d:Lcom/google/android/gms/internal/ads/acs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acx;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/acx;->b:Lcom/google/android/gms/internal/ads/st;

    iget v3, p0, Lcom/google/android/gms/internal/ads/acx;->c:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/acs;->a(Lcom/google/android/gms/internal/ads/acs;Landroid/view/View;Lcom/google/android/gms/internal/ads/st;I)V

    .line 3
    return-void
.end method
