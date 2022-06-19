.class final synthetic Lcom/google/android/gms/internal/ads/mo0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/ro0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ro0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mo0;->b:Lcom/google/android/gms/internal/ads/ro0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mo0;->b:Lcom/google/android/gms/internal/ads/ro0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ro0;->b(Landroid/view/View;)V

    return-void
.end method
