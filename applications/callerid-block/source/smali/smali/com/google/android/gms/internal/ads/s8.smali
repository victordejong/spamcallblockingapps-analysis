.class final synthetic Lcom/google/android/gms/internal/ads/s8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/h9;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/h9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/s8;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/s8;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/s8;->a:Lcom/google/android/gms/internal/ads/h9;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/jt;

    sget-object v0, Lcom/google/android/gms/internal/ads/g9;->a:Lcom/google/android/gms/internal/ads/h9;

    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p1, "URL missing from click GMSG."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/g9;->a(Lcom/google/android/gms/internal/ads/jt;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/x8;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/x8;-><init>(Lcom/google/android/gms/internal/ads/jt;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zo;->a:Lcom/google/android/gms/internal/ads/sz1;

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/kz1;->o(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/gz1;Ljava/util/concurrent/Executor;)V

    return-void
.end method
