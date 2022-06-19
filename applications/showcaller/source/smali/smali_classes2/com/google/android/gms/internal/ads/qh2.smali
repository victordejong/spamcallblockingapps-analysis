.class final synthetic Lcom/google/android/gms/internal/ads/qh2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fg2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/nd0;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/nd0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qh2;->a:Lcom/google/android/gms/internal/ads/nd0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qh2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/qh2;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qh2;->a:Lcom/google/android/gms/internal/ads/nd0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qh2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qh2;->c:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/pd0;

    .line 2
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/pd0;->a3(Lcom/google/android/gms/internal/ads/nd0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
