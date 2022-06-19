.class public final Lcom/google/android/gms/internal/ads/cje;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cjb;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cje;->a:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 4
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/cje;

    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 7
    :goto_0
    return v0

    .line 6
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/cje;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cje;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/cje;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cje;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cje;->a:Ljava/lang/String;

    return-object v0
.end method
