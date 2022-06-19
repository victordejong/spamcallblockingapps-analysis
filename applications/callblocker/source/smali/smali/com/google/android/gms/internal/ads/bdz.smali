.class public final Lcom/google/android/gms/internal/ads/bdz;
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
        "Lcom/google/android/gms/internal/ads/bmv",
        "<",
        "Lcom/google/android/gms/internal/ads/bdr;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/brh",
            "<",
            "Lcom/google/android/gms/internal/ads/bdr;",
            "Lcom/google/android/gms/internal/ads/chs;",
            "Lcom/google/android/gms/internal/ads/boe;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/brh",
            "<",
            "Lcom/google/android/gms/internal/ads/bdr;",
            "Lcom/google/android/gms/internal/ads/chs;",
            "Lcom/google/android/gms/internal/ads/bof;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/chh;",
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
            "Lcom/google/android/gms/internal/ads/brh",
            "<",
            "Lcom/google/android/gms/internal/ads/bdr;",
            "Lcom/google/android/gms/internal/ads/chs;",
            "Lcom/google/android/gms/internal/ads/boe;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/brh",
            "<",
            "Lcom/google/android/gms/internal/ads/bdr;",
            "Lcom/google/android/gms/internal/ads/chs;",
            "Lcom/google/android/gms/internal/ads/bof;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/chh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bdz;->a:Lcom/google/android/gms/internal/ads/dig;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bdz;->b:Lcom/google/android/gms/internal/ads/dig;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bdz;->c:Lcom/google/android/gms/internal/ads/dig;

    .line 5
    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bdz;->a:Lcom/google/android/gms/internal/ads/dig;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bdz;->b:Lcom/google/android/gms/internal/ads/dig;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdz;->c:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/chh;

    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/bdw;->a:[I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->n:Lcom/google/android/gms/internal/ads/cgt;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cgt;->a:I

    add-int/lit8 v0, v0, -0x1

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 11
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bmv;

    .line 12
    :goto_0
    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bmv;

    .line 13
    return-object v0

    .line 10
    :pswitch_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bmv;

    goto :goto_0

    .line 9
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
