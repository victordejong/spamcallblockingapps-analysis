.class public final Lcom/google/android/gms/internal/ads/ww;
.super Lcom/google/android/gms/internal/ads/dts;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dts",
        "<",
        "Lcom/google/android/gms/internal/ads/drt;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/yo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/yo",
            "<",
            "Lcom/google/android/gms/internal/ads/drt;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/xv;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/yo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/yo",
            "<",
            "Lcom/google/android/gms/internal/ads/drt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/ww;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/yo;)V

    .line 2
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/yo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/yo",
            "<",
            "Lcom/google/android/gms/internal/ads/drt;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3
    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/internal/ads/wv;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/ads/wv;-><init>(Lcom/google/android/gms/internal/ads/yo;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/ads/dts;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/ebp;)V

    .line 4
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/ww;->b:Ljava/util/Map;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ww;->a:Lcom/google/android/gms/internal/ads/yo;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/xv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/xv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ww;->c:Lcom/google/android/gms/internal/ads/xv;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ww;->c:Lcom/google/android/gms/internal/ads/xv;

    const-string/jumbo v1, "GET"

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/google/android/gms/internal/ads/xv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    .line 8
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ads/drt;)Lcom/google/android/gms/internal/ads/ecj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/drt;",
            ")",
            "Lcom/google/android/gms/internal/ads/ecj",
            "<",
            "Lcom/google/android/gms/internal/ads/drt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qn;->a(Lcom/google/android/gms/internal/ads/drt;)Lcom/google/android/gms/internal/ads/bzv;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/ecj;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/bzv;)Lcom/google/android/gms/internal/ads/ecj;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 10
    check-cast p1, Lcom/google/android/gms/internal/ads/drt;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ww;->c:Lcom/google/android/gms/internal/ads/xv;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/drt;->c:Ljava/util/Map;

    iget v2, p1, Lcom/google/android/gms/internal/ads/drt;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/xv;->a(Ljava/util/Map;I)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ww;->c:Lcom/google/android/gms/internal/ads/xv;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/drt;->b:[B

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/xv;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xv;->a([B)V

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ww;->a:Lcom/google/android/gms/internal/ads/yo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/yo;->b(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method
