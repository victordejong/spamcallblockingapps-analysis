.class public final Lcom/google/android/gms/internal/ads/jd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field static final b:Lcom/google/android/gms/ads/internal/util/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/util/r<",
            "Lcom/google/android/gms/internal/ads/pb;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Lcom/google/android/gms/ads/internal/util/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/util/r<",
            "Lcom/google/android/gms/internal/ads/pb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/vc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/hd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/hd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/jd;->b:Lcom/google/android/gms/ads/internal/util/r;

    new-instance v0, Lcom/google/android/gms/internal/ads/id;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/id;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/jd;->c:Lcom/google/android/gms/ads/internal/util/r;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/vc;

    sget-object v4, Lcom/google/android/gms/internal/ads/jd;->b:Lcom/google/android/gms/ads/internal/util/r;

    sget-object v5, Lcom/google/android/gms/internal/ads/jd;->c:Lcom/google/android/gms/ads/internal/util/r;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/vc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/r;Lcom/google/android/gms/ads/internal/util/r;)V

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/jd;->a:Lcom/google/android/gms/internal/ads/vc;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/bd;Lcom/google/android/gms/internal/ads/ad;)Lcom/google/android/gms/internal/ads/yc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/bd<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/ad<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/yc<",
            "TI;TO;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/nd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jd;->a:Lcom/google/android/gms/internal/ads/vc;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/nd;-><init>(Lcom/google/android/gms/internal/ads/vc;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bd;Lcom/google/android/gms/internal/ads/ad;)V

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/sd;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/sd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jd;->a:Lcom/google/android/gms/internal/ads/vc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/sd;-><init>(Lcom/google/android/gms/internal/ads/vc;)V

    return-object v0
.end method
