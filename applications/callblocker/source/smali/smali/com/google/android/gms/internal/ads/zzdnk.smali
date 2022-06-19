.class public final Lcom/google/android/gms/internal/ads/zzdnk;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdnk;->a:I

    .line 3
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdnk;->a:I

    .line 6
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdnk;->a:I

    return v0
.end method
