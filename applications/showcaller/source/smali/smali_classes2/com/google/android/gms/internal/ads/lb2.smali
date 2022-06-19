.class final synthetic Lcom/google/android/gms/internal/ads/lb2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nu2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/mb2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/mb2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lb2;->a:Lcom/google/android/gms/internal/ads/mb2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb2;->a:Lcom/google/android/gms/internal/ads/mb2;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/mb2;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/nb2;

    move-result-object p1

    return-object p1
.end method
