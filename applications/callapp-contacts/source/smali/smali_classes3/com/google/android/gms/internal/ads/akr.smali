.class public final Lcom/google/android/gms/internal/ads/akr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cty;

.field private final b:Lcom/google/android/gms/internal/ads/bli;

.field private final c:Lcom/google/android/gms/internal/ads/cpk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bli;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cty;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/akr;->a:Lcom/google/android/gms/internal/ads/cty;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/akr;->b:Lcom/google/android/gms/internal/ads/bli;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/akr;->c:Lcom/google/android/gms/internal/ads/cpk;

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/aku;->a:[I

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    aget p0, v0, p0

    if-eq p0, v1, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "u"

    return-object p0

    :cond_0
    const-string p0, "cb"

    return-object p0

    :cond_1
    const-string p0, "ac"

    return-object p0

    :cond_2
    const-string p0, "cc"

    return-object p0

    :cond_3
    const-string p0, "h"

    return-object p0

    :cond_4
    const-string p0, "bb"

    return-object p0
.end method


# virtual methods
.method public final a(JI)V
    .locals 7

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->fe:Lcom/google/android/gms/internal/ads/af;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "acr"

    const-string v2, "app_open_ad"

    const-string v3, "ad_format"

    const-string v4, "show_time"

    const-string v5, "ad_closed"

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akr;->a:Lcom/google/android/gms/internal/ads/cty;

    .line 10
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/akr;->c:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    .line 11
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/ctz;->a(Lcom/google/android/gms/internal/ads/coz;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v5

    .line 12
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v4, p1}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object p1

    .line 14
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/akr;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object p1

    .line 15
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/cty;->a(Lcom/google/android/gms/internal/ads/ctz;)V

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akr;->b:Lcom/google/android/gms/internal/ads/bli;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bli;->a()Lcom/google/android/gms/internal/ads/blh;

    move-result-object v0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/akr;->c:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    .line 18
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/blh;->a(Lcom/google/android/gms/internal/ads/coz;)Lcom/google/android/gms/internal/ads/blh;

    move-result-object v0

    const-string v6, "action"

    .line 19
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/ads/blh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    move-result-object v0

    .line 20
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lcom/google/android/gms/internal/ads/blh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/blh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    move-result-object p1

    .line 22
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/akr;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/internal/ads/blh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/blh;->a()V

    return-void
.end method
