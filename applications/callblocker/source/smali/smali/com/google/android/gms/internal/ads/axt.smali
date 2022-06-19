.class public final Lcom/google/android/gms/internal/ads/axt;
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
        "Lcom/google/android/gms/internal/ads/amm",
        "<",
        "Lcom/google/android/gms/internal/ads/akk;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/afh;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/apb$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/atf;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/axk;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/arz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/afh;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/apb$a;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/atf;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/axk;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/arz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/axt;->a:Lcom/google/android/gms/internal/ads/dig;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/axt;->b:Lcom/google/android/gms/internal/ads/dig;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/axt;->c:Lcom/google/android/gms/internal/ads/dig;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/axt;->d:Lcom/google/android/gms/internal/ads/dig;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/axt;->e:Lcom/google/android/gms/internal/ads/dig;

    .line 7
    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axt;->a:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/afh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axt;->b:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/apb$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/axt;->c:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/atf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/axt;->d:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/axk;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/axt;->e:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/arz;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/afh;->h()Lcom/google/android/gms/internal/ads/alg;

    move-result-object v0

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/apb$a;->a()Lcom/google/android/gms/internal/ads/apb;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/alg;->a(Lcom/google/android/gms/internal/ads/apb;)Lcom/google/android/gms/internal/ads/alg;

    move-result-object v0

    .line 13
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/alg;->a(Lcom/google/android/gms/internal/ads/atf;)Lcom/google/android/gms/internal/ads/alg;

    move-result-object v0

    .line 14
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/alg;->a(Lcom/google/android/gms/internal/ads/axk;)Lcom/google/android/gms/internal/ads/alg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/bsa;

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/bsa;-><init>(Lcom/google/android/gms/internal/ads/u;)V

    .line 15
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/alg;->a(Lcom/google/android/gms/internal/ads/bsa;)Lcom/google/android/gms/internal/ads/alg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ame;

    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/ame;-><init>(Lcom/google/android/gms/internal/ads/arz;)V

    .line 16
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/alg;->a(Lcom/google/android/gms/internal/ads/ame;)Lcom/google/android/gms/internal/ads/alg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/akf;

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/akf;-><init>(Landroid/view/ViewGroup;)V

    .line 17
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/alg;->a(Lcom/google/android/gms/internal/ads/akf;)Lcom/google/android/gms/internal/ads/alg;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/alg;->a()Lcom/google/android/gms/internal/ads/alh;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/alh;->c()Lcom/google/android/gms/internal/ads/amm;

    move-result-object v0

    .line 20
    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/amm;

    .line 21
    return-object v0
.end method
