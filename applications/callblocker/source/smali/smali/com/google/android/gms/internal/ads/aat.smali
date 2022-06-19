.class final synthetic Lcom/google/android/gms/internal/ads/aat;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aat;->a:Lcom/google/android/gms/internal/ads/aal;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aat;->a:Lcom/google/android/gms/internal/ads/aal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aal;->f()V

    return-void
.end method
