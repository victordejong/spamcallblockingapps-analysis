.class public final Lcom/google/android/gms/internal/ads/bpa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/box;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/box",
        "<",
        "Lcom/google/android/gms/internal/ads/aym;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/axo;

.field private final b:Lcom/google/android/gms/internal/ads/crs;

.field private final c:Lcom/google/android/gms/internal/ads/baz;

.field private final d:Lcom/google/android/gms/internal/ads/chr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/chr",
            "<",
            "Lcom/google/android/gms/internal/ads/bcy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/axo;Lcom/google/android/gms/internal/ads/crs;Lcom/google/android/gms/internal/ads/baz;Lcom/google/android/gms/internal/ads/chr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/axo;",
            "Lcom/google/android/gms/internal/ads/crs;",
            "Lcom/google/android/gms/internal/ads/baz;",
            "Lcom/google/android/gms/internal/ads/chr",
            "<",
            "Lcom/google/android/gms/internal/ads/bcy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bpa;->a:Lcom/google/android/gms/internal/ads/axo;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bpa;->b:Lcom/google/android/gms/internal/ads/crs;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bpa;->c:Lcom/google/android/gms/internal/ads/baz;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bpa;->d:Lcom/google/android/gms/internal/ads/chr;

    .line 6
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/crt;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/chd;",
            "Lcom/google/android/gms/internal/ads/cgr;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/aym;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpa;->d:Lcom/google/android/gms/internal/ads/chr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/chr;->a()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v3

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpa;->c:Lcom/google/android/gms/internal/ads/baz;

    .line 14
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/baz;->a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v2

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/crt;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->b([Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crm;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/ads/bpd;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/bpd;-><init>(Lcom/google/android/gms/internal/ads/bpa;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpa;->b:Lcom/google/android/gms/internal/ads/crs;

    .line 16
    invoke-virtual {v7, v0, v1}, Lcom/google/android/gms/internal/ads/crm;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 17
    return-object v0
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/aym;
    .locals 6

    .prologue
    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/crt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ayx;

    .line 19
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/crt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/bcy;

    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bpa;->a:Lcom/google/android/gms/internal/ads/axo;

    new-instance v3, Lcom/google/android/gms/internal/ads/amy;

    const/4 v4, 0x0

    invoke-direct {v3, p3, p4, v4}, Lcom/google/android/gms/internal/ads/amy;-><init>(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/azl;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/ads/azl;-><init>(Lcom/google/android/gms/internal/ads/ayx;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/aya;

    invoke-direct {v5, p5, v1}, Lcom/google/android/gms/internal/ads/aya;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/bcy;)V

    .line 21
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/axo;->a(Lcom/google/android/gms/internal/ads/amy;Lcom/google/android/gms/internal/ads/azl;Lcom/google/android/gms/internal/ads/aya;)Lcom/google/android/gms/internal/ads/ayz;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ayz;->i()Lcom/google/android/gms/internal/ads/bcv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/bcv;->a()V

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ayz;->j()Lcom/google/android/gms/internal/ads/bdh;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/bdh;->a(Lcom/google/android/gms/internal/ads/bcy;)V

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ayz;->k()Lcom/google/android/gms/internal/ads/bca;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->v()Lcom/google/android/gms/internal/ads/act;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/bca;->a(Lcom/google/android/gms/internal/ads/act;)V

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ayw;->h()Lcom/google/android/gms/internal/ads/aym;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/bcy;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/crt;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpa;->d:Lcom/google/android/gms/internal/ads/chr;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/chr;->a(Lcom/google/android/gms/internal/ads/crt;)V

    .line 27
    const-string/jumbo v0, "success"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzake;

    const-string/jumbo v1, "process json failed"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzake;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    const-string/jumbo v0, "json"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "ads"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bcy;)Lcom/google/android/gms/internal/ads/crt;
    .locals 4

    .prologue
    .line 51
    .line 52
    const-string/jumbo v0, "isNonagon"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/wy;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 53
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 54
    const-string/jumbo v2, "response"

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/cgr;->p:Lcom/google/android/gms/internal/ads/cgu;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cgu;->c:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string/jumbo v2, "sdk_params"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string/jumbo v0, "google.afma.nativeAds.preProcessJson"

    .line 57
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/bcy;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/bpb;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/bpb;-><init>(Lcom/google/android/gms/internal/ads/bpa;Lcom/google/android/gms/internal/ads/bcy;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bpa;->b:Lcom/google/android/gms/internal/ads/crs;

    .line 58
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 59
    return-object v0
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lorg/json/JSONArray;)Lcom/google/android/gms/internal/ads/crt;
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 30
    .line 31
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjk;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzcjk;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    .line 33
    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget v1, v1, Lcom/google/android/gms/internal/ads/chh;->k:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 35
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 36
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bpa;->d:Lcom/google/android/gms/internal/ads/chr;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget v3, v3, Lcom/google/android/gms/internal/ads/chh;->k:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/chr;->a(I)V

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget v3, v3, Lcom/google/android/gms/internal/ads/chh;->k:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    :goto_1
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget v3, v3, Lcom/google/android/gms/internal/ads/chh;->k:I

    if-ge v0, v3, :cond_2

    .line 39
    if-ge v0, v1, :cond_1

    .line 40
    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/bpa;->a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 41
    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzcjk;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzcjk;-><init>(I)V

    .line 42
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v3

    .line 43
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 46
    :cond_2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/bpa;->a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/bpe;->a:Lcom/google/android/gms/internal/ads/coe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bpa;->b:Lcom/google/android/gms/internal/ads/crs;

    .line 49
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)Z
    .locals 1

    .prologue
    .line 7
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/cgr;->p:Lcom/google/android/gms/internal/ads/cgu;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/cgr;->p:Lcom/google/android/gms/internal/ads/cgu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgu;->c:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/chd;",
            "Lcom/google/android/gms/internal/ads/cgr;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/aym;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpa;->d:Lcom/google/android/gms/internal/ads/chr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/chr;->a()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/boz;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/boz;-><init>(Lcom/google/android/gms/internal/ads/bpa;Lcom/google/android/gms/internal/ads/cgr;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bpa;->b:Lcom/google/android/gms/internal/ads/crs;

    .line 10
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/bpc;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/bpc;-><init>(Lcom/google/android/gms/internal/ads/bpa;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bpa;->b:Lcom/google/android/gms/internal/ads/crs;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
