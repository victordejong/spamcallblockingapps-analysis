.class final synthetic Lcom/google/android/gms/internal/ads/bbl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/crt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/crt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bbl;->a:Lcom/google/android/gms/internal/ads/crt;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbl;->a:Lcom/google/android/gms/internal/ads/crt;

    check-cast p1, Lcom/google/android/gms/internal/ads/act;

    .line 2
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->d()Lcom/google/android/gms/internal/ads/adn;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqm;

    const-string/jumbo v1, "Retrieve video view in instream ad response failed."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 5
    :cond_1
    return-object v0
.end method
