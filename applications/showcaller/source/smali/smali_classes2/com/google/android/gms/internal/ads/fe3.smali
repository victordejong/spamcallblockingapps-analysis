.class public abstract Lcom/google/android/gms/internal/ads/fe3;
.super Lcom/google/android/gms/internal/ads/ie3;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nf3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/fe3<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/ie3<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/ads/nf3;"
    }
.end annotation


# instance fields
.field protected final zzb:Lcom/google/android/gms/internal/ads/ae3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ie3;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/ae3;->a()Lcom/google/android/gms/internal/ads/ae3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fe3;->zzb:Lcom/google/android/gms/internal/ads/ae3;

    return-void
.end method
