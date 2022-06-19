.class public abstract Lcom/google/android/gms/internal/ads/uw2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/uw2;

.field private static final b:Lcom/google/android/gms/internal/ads/uw2;

.field private static final c:Lcom/google/android/gms/internal/ads/uw2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/rw2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/rw2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/uw2;->a:Lcom/google/android/gms/internal/ads/uw2;

    new-instance v0, Lcom/google/android/gms/internal/ads/sw2;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/sw2;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/uw2;->b:Lcom/google/android/gms/internal/ads/uw2;

    new-instance v0, Lcom/google/android/gms/internal/ads/sw2;

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/sw2;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/uw2;->c:Lcom/google/android/gms/internal/ads/uw2;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/tw2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic f()Lcom/google/android/gms/internal/ads/uw2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/uw2;->a:Lcom/google/android/gms/internal/ads/uw2;

    return-object v0
.end method

.method static synthetic g()Lcom/google/android/gms/internal/ads/uw2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/uw2;->b:Lcom/google/android/gms/internal/ads/uw2;

    return-object v0
.end method

.method static synthetic h()Lcom/google/android/gms/internal/ads/uw2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/uw2;->c:Lcom/google/android/gms/internal/ads/uw2;

    return-object v0
.end method

.method public static i()Lcom/google/android/gms/internal/ads/uw2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/uw2;->a:Lcom/google/android/gms/internal/ads/uw2;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/uw2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/uw2;"
        }
    .end annotation
.end method

.method public abstract b(II)Lcom/google/android/gms/internal/ads/uw2;
.end method

.method public abstract c(ZZ)Lcom/google/android/gms/internal/ads/uw2;
.end method

.method public abstract d(ZZ)Lcom/google/android/gms/internal/ads/uw2;
.end method

.method public abstract e()I
.end method
