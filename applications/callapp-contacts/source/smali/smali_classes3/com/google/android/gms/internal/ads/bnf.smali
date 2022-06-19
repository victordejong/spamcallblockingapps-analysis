.class public final Lcom/google/android/gms/internal/ads/bnf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/dbt<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/cti;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/cti;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bnf;->a:Lcom/google/android/gms/internal/ads/dsv;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bnf;->b:Lcom/google/android/gms/internal/ads/dsv;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;)Lcom/google/android/gms/internal/ads/bnf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/cti;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/bnf;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/bnf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/bnf;-><init>(Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bnf;->a:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cti;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bnf;->b:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/internal/util/zzr;->zzbi(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object v1

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/ads/ctj;->zzhub:Lcom/google/android/gms/internal/ads/ctj;

    .line 11
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/cst;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/csx;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/bnb;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/bnb;-><init>(Landroid/webkit/CookieManager;)V

    .line 1007
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/csx;->a:Lcom/google/android/gms/internal/ads/cst;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/cst;->a(Lcom/google/android/gms/internal/ads/cst;)Lcom/google/android/gms/internal/ads/dbs;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/csx;->a(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/dbs;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object v0

    .line 12
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    .line 13
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/csz;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object v0

    const-class v1, Ljava/lang/Exception;

    sget-object v2, Lcom/google/android/gms/internal/ads/bne;->a:Lcom/google/android/gms/internal/ads/css;

    .line 1017
    new-instance v3, Lcom/google/android/gms/internal/ads/ctf;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/ctf;-><init>(Lcom/google/android/gms/internal/ads/css;)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/csz;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/daq;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/csz;->a()Lcom/google/android/gms/internal/ads/csu;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbt;

    return-object v0
.end method
