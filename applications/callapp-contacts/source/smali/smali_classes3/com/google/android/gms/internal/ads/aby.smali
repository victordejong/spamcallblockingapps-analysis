.class final synthetic Lcom/google/android/gms/internal/ads/aby;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ecd;


# instance fields
.field private final a:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aby;->a:[B

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/ecb;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aby;->a:[B

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/ecc;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/ecc;-><init>([B)V

    return-object v1
.end method
