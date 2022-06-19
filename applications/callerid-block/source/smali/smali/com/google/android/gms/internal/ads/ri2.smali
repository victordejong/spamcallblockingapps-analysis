.class final Lcom/google/android/gms/internal/ads/ri2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/si2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/si2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ri2;->b:Lcom/google/android/gms/internal/ads/si2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri2;->b:Lcom/google/android/gms/internal/ads/si2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/si2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/m3;->a(Landroid/content/Context;)V

    return-void
.end method
