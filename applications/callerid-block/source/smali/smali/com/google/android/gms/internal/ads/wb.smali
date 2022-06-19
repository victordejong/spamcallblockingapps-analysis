.class final Lcom/google/android/gms/internal/ads/wb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/h9;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/h9<",
        "Lcom/google/android/gms/internal/ads/jt;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/h9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/h9<",
            "-",
            "Lcom/google/android/gms/internal/ads/wc;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/android/gms/internal/ads/xb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/xb;Lcom/google/android/gms/internal/ads/h9;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/h9<",
            "-",
            "Lcom/google/android/gms/internal/ads/wc;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wb;->b:Lcom/google/android/gms/internal/ads/xb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wb;->a:Lcom/google/android/gms/internal/ads/h9;

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/wb;)Lcom/google/android/gms/internal/ads/h9;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/wb;->a:Lcom/google/android/gms/internal/ads/h9;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/jt;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wb;->a:Lcom/google/android/gms/internal/ads/h9;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wb;->b:Lcom/google/android/gms/internal/ads/xb;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/h9;->a(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
