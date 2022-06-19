.class final synthetic Lcom/google/android/gms/internal/ads/bbq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/coe;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bbq;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbq;->a:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/bh;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/bbt;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/bbt;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/bh;)V

    .line 3
    return-object v1
.end method
