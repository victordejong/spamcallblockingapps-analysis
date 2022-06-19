.class public final Lcom/google/android/gms/internal/ads/bjy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/yd;

.field private final c:Lcom/google/android/gms/internal/ads/chh;

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/chh;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bjy;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bjy;->b:Lcom/google/android/gms/internal/ads/yd;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bjy;->c:Lcom/google/android/gms/internal/ads/chh;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bjy;->d:Ljava/util/concurrent/Executor;

    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/chd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->p()Lcom/google/android/gms/internal/ads/je;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bjy;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bjy;->b:Lcom/google/android/gms/internal/ads/yd;

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/je;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;)Lcom/google/android/gms/internal/ads/jn;

    move-result-object v0

    const-string/jumbo v1, "google.afma.response.normalize"

    sget-object v2, Lcom/google/android/gms/internal/ads/ji;->a:Lcom/google/android/gms/internal/ads/jj;

    sget-object v3, Lcom/google/android/gms/internal/ads/ji;->a:Lcom/google/android/gms/internal/ads/jj;

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/jn;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/jg;Lcom/google/android/gms/internal/ads/jh;)Lcom/google/android/gms/internal/ads/jf;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bjy;->c:Lcom/google/android/gms/internal/ads/chh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dya;->s:Lcom/google/android/gms/internal/ads/dxu;

    .line 11
    const-string/jumbo v2, ""

    .line 12
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/bjx;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/bjx;-><init>(Lcom/google/android/gms/internal/ads/bjy;Lcom/google/android/gms/internal/ads/dxu;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bjy;->d:Ljava/util/concurrent/Executor;

    .line 13
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    .line 14
    new-instance v2, Lcom/google/android/gms/internal/ads/bka;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/bka;-><init>(Lcom/google/android/gms/internal/ads/jf;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bjy;->d:Ljava/util/concurrent/Executor;

    .line 15
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/google/android/gms/internal/ads/bjz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bjz;-><init>(Lcom/google/android/gms/internal/ads/bjy;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bjy;->d:Ljava/util/concurrent/Executor;

    .line 17
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 18
    return-object v0
.end method

.method final synthetic a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/crt;
    .locals 4

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/chd;

    new-instance v1, Lcom/google/android/gms/internal/ads/cgx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bjy;->c:Lcom/google/android/gms/internal/ads/chh;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/cgx;-><init>(Lcom/google/android/gms/internal/ads/chh;)V

    .line 20
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 21
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/cha;->a(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/cha;

    move-result-object v2

    .line 22
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/chd;-><init>(Lcom/google/android/gms/internal/ads/cgx;Lcom/google/android/gms/internal/ads/cha;)V

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
