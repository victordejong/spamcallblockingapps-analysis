.class public interface abstract Lcom/google/android/gms/internal/ads/zzot;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzon;


# static fields
.field public static final zzbin:Lcom/google/android/gms/internal/ads/zzpp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzpp<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzow;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzow;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzot;->zzbin:Lcom/google/android/gms/internal/ads/zzpp;

    return-void
.end method


# virtual methods
.method public abstract getResponseHeaders()Ljava/util/Map;
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
