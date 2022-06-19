.class public final Lcom/google/android/gms/internal/ads/bgv;
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
        "Lcom/google/android/gms/internal/ads/bgw;",
        ">;"
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
            "Lcom/google/android/gms/internal/ads/cho;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/bhi;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/chd;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/cgr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;)V
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
            "Lcom/google/android/gms/internal/ads/cho;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/bhi;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/chd;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/cgr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bgv;->a:Lcom/google/android/gms/internal/ads/dig;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bgv;->b:Lcom/google/android/gms/internal/ads/dig;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bgv;->c:Lcom/google/android/gms/internal/ads/dig;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bgv;->d:Lcom/google/android/gms/internal/ads/dig;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bgv;->e:Lcom/google/android/gms/internal/ads/dig;

    .line 7
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;)Lcom/google/android/gms/internal/ads/bgv;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/cho;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/bhi;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/chd;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/cgr;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/bgv;"
        }
    .end annotation

    .prologue
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/bgv;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/bgv;-><init>(Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgv;->a:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgv;->b:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/cho;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgv;->c:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/bhi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgv;->d:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/chd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgv;->e:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/cgr;

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/bgw;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/bgw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/cho;Lcom/google/android/gms/internal/ads/bhi;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)V

    .line 12
    return-object v0
.end method
