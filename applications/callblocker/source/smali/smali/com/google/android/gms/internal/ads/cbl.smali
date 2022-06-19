.class final synthetic Lcom/google/android/gms/internal/ads/cbl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/coe;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cbk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cbk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cbl;->a:Lcom/google/android/gms/internal/ads/cbk;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cbl;->a:Lcom/google/android/gms/internal/ads/cbk;

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cbk;->a(Ljava/lang/Exception;)Lcom/google/android/gms/internal/ads/cbh;

    move-result-object v0

    return-object v0
.end method
