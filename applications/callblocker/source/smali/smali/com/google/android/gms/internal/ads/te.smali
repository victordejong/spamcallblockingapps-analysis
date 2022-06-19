.class final synthetic Lcom/google/android/gms/internal/ads/te;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ta;

.field private final b:Lcom/google/android/gms/internal/ads/tr;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ta;Lcom/google/android/gms/internal/ads/tr;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/te;->a:Lcom/google/android/gms/internal/ads/ta;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/te;->b:Lcom/google/android/gms/internal/ads/tr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/te;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->a:Lcom/google/android/gms/internal/ads/ta;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/te;->b:Lcom/google/android/gms/internal/ads/tr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/te;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ta;->a(Lcom/google/android/gms/internal/ads/tr;Ljava/lang/String;)V

    return-void
.end method
