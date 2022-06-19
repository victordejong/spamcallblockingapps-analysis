.class public final Lcom/google/android/gms/internal/ads/cez;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dht;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dht",
        "<",
        "Lcom/google/android/gms/internal/ads/cev",
        "<",
        "Lcom/google/android/gms/internal/ads/ajy;",
        "Lcom/google/android/gms/internal/ads/ake;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/cik;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/cjc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/cik;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/cjc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cez;->a:Lcom/google/android/gms/internal/ads/dig;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cez;->b:Lcom/google/android/gms/internal/ads/dig;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cez;->c:Lcom/google/android/gms/internal/ads/dig;

    .line 5
    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cez;->a:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cez;->b:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/cik;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cez;->c:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/cjc;

    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/edi;->dv:Lcom/google/android/gms/internal/ads/ect;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    .line 12
    new-instance v3, Lcom/google/android/gms/internal/ads/cdt;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/cdt;-><init>()V

    .line 13
    sget-object v4, Lcom/google/android/gms/internal/ads/cix;->c:Lcom/google/android/gms/internal/ads/cix;

    new-instance v5, Lcom/google/android/gms/internal/ads/ced;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/ads/ced;-><init>(Lcom/google/android/gms/internal/ads/cev;)V

    .line 14
    invoke-virtual {v2, v4, v0, v1, v5}, Lcom/google/android/gms/internal/ads/cjc;->a(Lcom/google/android/gms/internal/ads/cix;Landroid/content/Context;Lcom/google/android/gms/internal/ads/cik;Lcom/google/android/gms/internal/ads/cjo;)Lcom/google/android/gms/internal/ads/cjg;

    move-result-object v1

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/cdy;

    new-instance v2, Lcom/google/android/gms/internal/ads/cem;

    new-instance v3, Lcom/google/android/gms/internal/ads/cen;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/cen;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/cem;-><init>(Lcom/google/android/gms/internal/ads/cev;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/cee;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/cjg;->a:Lcom/google/android/gms/internal/ads/cir;

    sget-object v5, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/crs;

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/cee;-><init>(Lcom/google/android/gms/internal/ads/cir;Ljava/util/concurrent/Executor;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cjg;->b:Lcom/google/android/gms/internal/ads/cjh;

    sget-object v4, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/crs;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/android/gms/internal/ads/cdy;-><init>(Lcom/google/android/gms/internal/ads/cev;Lcom/google/android/gms/internal/ads/cev;Lcom/google/android/gms/internal/ads/cjh;Ljava/util/concurrent/Executor;)V

    .line 17
    :goto_0
    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cev;

    .line 18
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cen;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cen;-><init>()V

    goto :goto_0
.end method
