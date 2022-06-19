.class public final Lcom/google/android/gms/internal/ads/ve0;
.super Lcom/google/android/gms/internal/ads/be0;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/be0;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ve0;->d:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/ve0;->e:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ve0;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/ve0;->e:I

    return v0
.end method
