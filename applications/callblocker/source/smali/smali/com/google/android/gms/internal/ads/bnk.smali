.class final synthetic Lcom/google/android/gms/internal/ads/bnk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bnd;

.field private final b:Lcom/google/android/gms/internal/ads/act;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bnd;Lcom/google/android/gms/internal/ads/act;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bnk;->a:Lcom/google/android/gms/internal/ads/bnd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bnk;->b:Lcom/google/android/gms/internal/ads/act;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bnk;->a:Lcom/google/android/gms/internal/ads/bnd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bnk;->b:Lcom/google/android/gms/internal/ads/act;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bnd;->a(Lcom/google/android/gms/internal/ads/act;)V

    return-void
.end method
