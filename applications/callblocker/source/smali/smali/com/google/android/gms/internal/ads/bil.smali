.class final synthetic Lcom/google/android/gms/internal/ads/bil;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bij;

.field private final b:Lcom/google/android/gms/internal/ads/yo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bij;Lcom/google/android/gms/internal/ads/yo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bil;->a:Lcom/google/android/gms/internal/ads/bij;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bil;->b:Lcom/google/android/gms/internal/ads/yo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bil;->a:Lcom/google/android/gms/internal/ads/bij;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bil;->b:Lcom/google/android/gms/internal/ads/yo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bij;->a(Lcom/google/android/gms/internal/ads/yo;)V

    return-void
.end method
