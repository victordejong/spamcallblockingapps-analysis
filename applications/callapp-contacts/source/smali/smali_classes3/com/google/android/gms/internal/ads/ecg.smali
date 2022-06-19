.class public interface abstract Lcom/google/android/gms/internal/ads/ecg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ecb;


# static fields
.field public static final c:Lcom/google/android/gms/internal/ads/eda;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/eda<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/eci;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/eci;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ecg;->c:Lcom/google/android/gms/internal/ads/eda;

    return-void
.end method


# virtual methods
.method public abstract b()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method
