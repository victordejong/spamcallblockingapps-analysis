.class public final Lcom/google/android/gms/internal/ads/zzzu;
.super Lcom/google/android/gms/internal/ads/zzyq;
.source ""


# instance fields
.field private final description:Ljava/lang/String;

.field private final zzclg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzu;->description:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzu;->zzclg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzu;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final zzre()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzu;->zzclg:Ljava/lang/String;

    return-object v0
.end method
