.class public final Lcom/google/android/gms/internal/ads/r60;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field static final a:Lcom/google/android/gms/ads/internal/util/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/util/e0<",
            "Lcom/google/android/gms/internal/ads/x40;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lcom/google/android/gms/ads/internal/util/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/util/e0<",
            "Lcom/google/android/gms/internal/ads/x40;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/google/android/gms/internal/ads/d60;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/p60;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/p60;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/r60;->a:Lcom/google/android/gms/ads/internal/util/e0;

    new-instance v0, Lcom/google/android/gms/internal/ads/q60;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/q60;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/r60;->b:Lcom/google/android/gms/ads/internal/util/e0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/d60;

    sget-object v4, Lcom/google/android/gms/internal/ads/r60;->a:Lcom/google/android/gms/ads/internal/util/e0;

    sget-object v5, Lcom/google/android/gms/internal/ads/r60;->b:Lcom/google/android/gms/ads/internal/util/e0;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/d60;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/e0;Lcom/google/android/gms/ads/internal/util/e0;)V

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/r60;->c:Lcom/google/android/gms/internal/ads/d60;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/j60;Lcom/google/android/gms/internal/ads/i60;)Lcom/google/android/gms/internal/ads/g60;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/j60<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/i60<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/g60<",
            "TI;TO;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/v60;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/r60;->c:Lcom/google/android/gms/internal/ads/d60;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/v60;-><init>(Lcom/google/android/gms/internal/ads/d60;Ljava/lang/String;Lcom/google/android/gms/internal/ads/j60;Lcom/google/android/gms/internal/ads/i60;)V

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/a70;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/a70;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/r60;->c:Lcom/google/android/gms/internal/ads/d60;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/a70;-><init>(Lcom/google/android/gms/internal/ads/d60;)V

    return-object v0
.end method
