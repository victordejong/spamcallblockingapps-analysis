.class final Lcom/google/android/gms/internal/ads/axi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/amm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/amm",
        "<",
        "Lcom/google/android/gms/internal/ads/amn;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/bmv",
            "<",
            "Lcom/google/android/gms/internal/ads/amn;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/bmv",
            "<",
            "Lcom/google/android/gms/internal/ads/aym;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/box",
            "<",
            "Lcom/google/android/gms/internal/ads/aym;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/amm",
            "<",
            "Lcom/google/android/gms/internal/ads/akk;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/azg;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/azg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/bmv",
            "<",
            "Lcom/google/android/gms/internal/ads/amn;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/bmv",
            "<",
            "Lcom/google/android/gms/internal/ads/aym;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/box",
            "<",
            "Lcom/google/android/gms/internal/ads/aym;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/amm",
            "<",
            "Lcom/google/android/gms/internal/ads/akk;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/azg;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/axi;->a:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/axi;->b:Ljava/util/Map;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/axi;->c:Ljava/util/Map;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/axi;->d:Lcom/google/android/gms/internal/ads/dig;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/axi;->e:Lcom/google/android/gms/internal/ads/azg;

    .line 7
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/bmv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/bmv",
            "<",
            "Lcom/google/android/gms/internal/ads/amn;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axi;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bmv;

    .line 9
    if-eqz v0, :cond_0

    .line 29
    :goto_0
    return-object v0

    .line 11
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    .line 29
    goto :goto_0

    .line 13
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axi;->e:Lcom/google/android/gms/internal/ads/azg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/azg;->d()Lcom/google/android/gms/internal/ads/dj;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axi;->d:Lcom/google/android/gms/internal/ads/dig;

    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/amm;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/amm;->a(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/bmv;

    move-result-object v0

    .line 17
    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/amn;->a(Lcom/google/android/gms/internal/ads/bmv;)Lcom/google/android/gms/internal/ads/bmv;

    move-result-object v0

    goto :goto_0

    .line 20
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axi;->c:Ljava/util/Map;

    .line 21
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/box;

    .line 22
    if-eqz v0, :cond_3

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/amn;->a(Lcom/google/android/gms/internal/ads/box;)Lcom/google/android/gms/internal/ads/bmv;

    move-result-object v0

    goto :goto_0

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axi;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bmv;

    .line 25
    if-eqz v0, :cond_4

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/amn;->a(Lcom/google/android/gms/internal/ads/bmv;)Lcom/google/android/gms/internal/ads/bmv;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 28
    goto :goto_0

    .line 11
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
