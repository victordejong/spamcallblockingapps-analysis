.class public final Lcom/google/android/gms/internal/ads/ddk;
.super Lcom/google/android/gms/internal/ads/dcs;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dct;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PrimitiveT:",
        "Ljava/lang/Object;",
        "KeyProtoT::",
        "Lcom/google/android/gms/internal/ads/dot;",
        "PublicKeyProtoT::",
        "Lcom/google/android/gms/internal/ads/dot;",
        ">",
        "Lcom/google/android/gms/internal/ads/dcs<",
        "TPrimitiveT;TKeyProtoT;>;",
        "Lcom/google/android/gms/internal/ads/dct<",
        "TPrimitiveT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ddj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ddj<",
            "TKeyProtoT;TPublicKeyProtoT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/dcu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dcu<",
            "TPublicKeyProtoT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ddj;Lcom/google/android/gms/internal/ads/dcu;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ddj<",
            "TKeyProtoT;TPublicKeyProtoT;>;",
            "Lcom/google/android/gms/internal/ads/dcu<",
            "TPublicKeyProtoT;>;",
            "Ljava/lang/Class<",
            "TPrimitiveT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/dcs;-><init>(Lcom/google/android/gms/internal/ads/dcu;Ljava/lang/Class;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ddk;->a:Lcom/google/android/gms/internal/ads/ddj;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ddk;->b:Lcom/google/android/gms/internal/ads/dcu;

    return-void
.end method
