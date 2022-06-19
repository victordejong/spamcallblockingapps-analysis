.class final synthetic Lcom/google/android/gms/internal/ads/bju;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bjr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bjr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bju;->a:Lcom/google/android/gms/internal/ads/bjr;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bju;->a:Lcom/google/android/gms/internal/ads/bjr;

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bjr;->a(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
