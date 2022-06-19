.class public final Lcom/google/android/gms/internal/ads/ctg;
.super Lcom/google/android/gms/internal/ads/csv;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/css;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PrimitiveT:",
        "Ljava/lang/Object;",
        "KeyProtoT::",
        "Lcom/google/android/gms/internal/ads/deg;",
        "PublicKeyProtoT::",
        "Lcom/google/android/gms/internal/ads/deg;",
        ">",
        "Lcom/google/android/gms/internal/ads/csv",
        "<TPrimitiveT;TKeyProtoT;>;",
        "Lcom/google/android/gms/internal/ads/css",
        "<TPrimitiveT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ctj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ctj",
            "<TKeyProtoT;TPublicKeyProtoT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/csx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/csx",
            "<TPublicKeyProtoT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ctj;Lcom/google/android/gms/internal/ads/csx;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ctj",
            "<TKeyProtoT;TPublicKeyProtoT;>;",
            "Lcom/google/android/gms/internal/ads/csx",
            "<TPublicKeyProtoT;>;",
            "Ljava/lang/Class",
            "<TPrimitiveT;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/csv;-><init>(Lcom/google/android/gms/internal/ads/csx;Ljava/lang/Class;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ctg;->a:Lcom/google/android/gms/internal/ads/ctj;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ctg;->b:Lcom/google/android/gms/internal/ads/csx;

    .line 4
    return-void
.end method
