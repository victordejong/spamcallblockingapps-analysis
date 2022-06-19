.class final synthetic Lcom/google/android/gms/internal/ads/amx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/amt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/amt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/amx;->a:Lcom/google/android/gms/internal/ads/amt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amx;->a:Lcom/google/android/gms/internal/ads/amt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amt;->b()V

    return-void
.end method
