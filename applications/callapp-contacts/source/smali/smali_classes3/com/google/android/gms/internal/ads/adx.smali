.class final Lcom/google/android/gms/internal/ads/adx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/view/View;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/vy;

.field private final synthetic c:I

.field private final synthetic d:Lcom/google/android/gms/internal/ads/ads;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ads;Landroid/view/View;Lcom/google/android/gms/internal/ads/vy;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adx;->d:Lcom/google/android/gms/internal/ads/ads;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/adx;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/adx;->b:Lcom/google/android/gms/internal/ads/vy;

    iput p4, p0, Lcom/google/android/gms/internal/ads/adx;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adx;->d:Lcom/google/android/gms/internal/ads/ads;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adx;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/adx;->b:Lcom/google/android/gms/internal/ads/vy;

    iget v3, p0, Lcom/google/android/gms/internal/ads/adx;->c:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/ads;->a(Lcom/google/android/gms/internal/ads/ads;Landroid/view/View;Lcom/google/android/gms/internal/ads/vy;I)V

    return-void
.end method
