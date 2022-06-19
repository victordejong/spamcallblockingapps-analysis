.class final Lcom/google/android/gms/internal/ads/dpa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dpb;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/dnh;

    sget v0, Lcom/google/android/gms/internal/ads/dnh$d;->d:I

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/dnh;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
