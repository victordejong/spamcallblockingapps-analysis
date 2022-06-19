.class public final synthetic Lcom/google/android/gms/internal/ads/zzdgm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvz;


# static fields
.field public static final zzeaj:Lcom/google/android/gms/internal/ads/zzdvz;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdgm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdgm;->zzeaj:Lcom/google/android/gms/internal/ads/zzdvz;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgl;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdgl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
