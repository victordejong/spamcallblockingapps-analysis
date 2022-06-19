.class final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/y;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uz2;


# instance fields
.field private final a:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

.field private final b:[Lcom/google/android/gms/internal/ads/qj1;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;[Lcom/google/android/gms/internal/ads/qj1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/y;->a:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/y;->b:[Lcom/google/android/gms/internal/ads/qj1;

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/y;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/y;->a:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/y;->b:[Lcom/google/android/gms/internal/ads/qj1;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/y;->c:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/qj1;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->F6([Lcom/google/android/gms/internal/ads/qj1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qj1;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
