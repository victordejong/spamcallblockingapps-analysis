.class final Lcom/google/android/gms/internal/ads/bax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/anu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/anu<",
        "Lcom/google/android/gms/internal/ads/anv;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/bsk<",
            "Lcom/google/android/gms/internal/ads/anv;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/bsk<",
            "Lcom/google/android/gms/internal/ads/bcf;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/buz<",
            "Lcom/google/android/gms/internal/ads/bcf;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/anu<",
            "Lcom/google/android/gms/internal/ads/alq;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/bcy;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/bcy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/bsk<",
            "Lcom/google/android/gms/internal/ads/anv;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/bsk<",
            "Lcom/google/android/gms/internal/ads/bcf;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/buz<",
            "Lcom/google/android/gms/internal/ads/bcf;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/anu<",
            "Lcom/google/android/gms/internal/ads/alq;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/bcy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bax;->a:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bax;->b:Ljava/util/Map;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bax;->c:Ljava/util/Map;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bax;->d:Lcom/google/android/gms/internal/ads/dsv;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bax;->e:Lcom/google/android/gms/internal/ads/bcy;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/bsk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/bsk<",
            "Lcom/google/android/gms/internal/ads/anv;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bax;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bsk;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    return-object v1

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bax;->c:Ljava/util/Map;

    .line 21
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/buz;

    if-eqz p1, :cond_2

    .line 1007
    new-instance p2, Lcom/google/android/gms/internal/ads/bsj;

    sget-object v0, Lcom/google/android/gms/internal/ads/any;->a:Lcom/google/android/gms/internal/ads/cxu;

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/ads/bsj;-><init>(Lcom/google/android/gms/internal/ads/bsk;Lcom/google/android/gms/internal/ads/cxu;)V

    return-object p2

    .line 24
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bax;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/bsk;

    if-eqz p1, :cond_3

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/anv;->a(Lcom/google/android/gms/internal/ads/bsk;)Lcom/google/android/gms/internal/ads/bsk;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bax;->e:Lcom/google/android/gms/internal/ads/bcy;

    .line 1004
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bcy;->d:Lcom/google/android/gms/internal/ads/fh;

    if-nez v0, :cond_5

    return-object v1

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bax;->d:Lcom/google/android/gms/internal/ads/dsv;

    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/anu;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/anu;->a(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/bsk;

    move-result-object p1

    if-nez p1, :cond_6

    return-object v1

    .line 17
    :cond_6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/anv;->a(Lcom/google/android/gms/internal/ads/bsk;)Lcom/google/android/gms/internal/ads/bsk;

    move-result-object p1

    return-object p1
.end method
