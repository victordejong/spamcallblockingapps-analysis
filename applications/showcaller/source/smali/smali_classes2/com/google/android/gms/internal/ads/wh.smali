.class public interface abstract Lcom/google/android/gms/internal/ads/wh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qh;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/mi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/mi<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/uh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/uh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/wh;->a:Lcom/google/android/gms/internal/ads/mi;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
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
