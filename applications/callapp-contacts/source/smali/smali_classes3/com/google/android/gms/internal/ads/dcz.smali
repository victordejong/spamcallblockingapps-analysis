.class public final Lcom/google/android/gms/internal/ads/dcz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/dip;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dip;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dcz;->a:Lcom/google/android/gms/internal/ads/dip;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcz;->a:Lcom/google/android/gms/internal/ads/dip;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ddq;->a(Lcom/google/android/gms/internal/ads/dip;)Lcom/google/android/gms/internal/ads/dis;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
