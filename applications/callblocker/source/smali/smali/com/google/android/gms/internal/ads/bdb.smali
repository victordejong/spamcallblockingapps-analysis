.class final Lcom/google/android/gms/internal/ads/bdb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/crh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/crh",
        "<",
        "Lcom/google/android/gms/internal/ads/act;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/fa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bcy;Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bdb;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bdb;->b:Lcom/google/android/gms/internal/ads/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/act;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdb;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bdb;->b:Lcom/google/android/gms/internal/ads/fa;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/act;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 5
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 2
    return-void
.end method
