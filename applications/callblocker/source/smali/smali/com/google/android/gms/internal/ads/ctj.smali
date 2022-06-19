.class public abstract Lcom/google/android/gms/internal/ads/ctj;
.super Lcom/google/android/gms/internal/ads/csx;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyProtoT::",
        "Lcom/google/android/gms/internal/ads/deg;",
        "PublicKeyProtoT::",
        "Lcom/google/android/gms/internal/ads/deg;",
        ">",
        "Lcom/google/android/gms/internal/ads/csx",
        "<TKeyProtoT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TPublicKeyProtoT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected varargs constructor <init>(Ljava/lang/Class;Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/csz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TKeyProtoT;>;",
            "Ljava/lang/Class",
            "<TPublicKeyProtoT;>;[",
            "Lcom/google/android/gms/internal/ads/csz",
            "<*TKeyProtoT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/csx;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/csz;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ctj;->a:Ljava/lang/Class;

    .line 3
    return-void
.end method
