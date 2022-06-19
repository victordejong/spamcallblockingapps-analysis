.class final synthetic Lcom/google/android/gms/internal/ads/azs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/azt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/azt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azs;->a:Lcom/google/android/gms/internal/ads/azt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azs;->a:Lcom/google/android/gms/internal/ads/azt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/azt;->j()V

    return-void
.end method
