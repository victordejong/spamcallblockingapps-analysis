.class public final Lcom/google/android/gms/internal/ads/bou;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bmy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bmy",
        "<",
        "Lcom/google/android/gms/internal/ads/avq;",
        "Lcom/google/android/gms/internal/ads/mn;",
        "Lcom/google/android/gms/internal/ads/bof;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/awq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/awq;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bou;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bou;->b:Lcom/google/android/gms/internal/ads/awq;

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/chd;",
            "Lcom/google/android/gms/internal/ads/cgr;",
            "Lcom/google/android/gms/internal/ads/bmx",
            "<",
            "Lcom/google/android/gms/internal/ads/mn;",
            "Lcom/google/android/gms/internal/ads/bof;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5
    :try_start_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/mn;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/cgr;->Q:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/mn;->a(Ljava/lang/String;)V

    .line 6
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/mn;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/cgr;->K:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/cgr;->s:Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bou;->a:Landroid/content/Context;

    .line 8
    invoke-static {v4}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/ads/bow;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p3, v6}, Lcom/google/android/gms/internal/ads/bow;-><init>(Lcom/google/android/gms/internal/ads/bou;Lcom/google/android/gms/internal/ads/bmx;Lcom/google/android/gms/internal/ads/bot;)V

    iget-object v6, p3, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    check-cast v6, Lcom/google/android/gms/internal/ads/ku;

    .line 9
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/mn;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/mc;Lcom/google/android/gms/internal/ads/ku;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdhk;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdhk;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 13
    .line 14
    new-instance v1, Lcom/google/android/gms/internal/ads/boq;

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/mn;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v0, v2}, Lcom/google/android/gms/internal/ads/boq;-><init>(Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/mn;Z)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bou;->b:Lcom/google/android/gms/internal/ads/awq;

    new-instance v2, Lcom/google/android/gms/internal/ads/amy;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/bmx;->a:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/amy;-><init>(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/avv;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/avv;-><init>(Lcom/google/android/gms/internal/ads/awx;)V

    .line 16
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/awq;->a(Lcom/google/android/gms/internal/ads/amy;Lcom/google/android/gms/internal/ads/avv;)Lcom/google/android/gms/internal/ads/avs;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/amj;->d()Lcom/google/android/gms/internal/ads/aqh;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/boq;->a(Lcom/google/android/gms/internal/ads/aqh;)V

    .line 18
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    check-cast v0, Lcom/google/android/gms/internal/ads/bof;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/amj;->g()Lcom/google/android/gms/internal/ads/bri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bof;->a(Lcom/google/android/gms/internal/ads/ku;)V

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/avs;->h()Lcom/google/android/gms/internal/ads/avq;

    move-result-object v0

    .line 20
    return-object v0
.end method
