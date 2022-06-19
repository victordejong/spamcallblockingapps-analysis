.class final Lcom/google/android/gms/internal/ads/fx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/rs0;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/aa;

.field private final c:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/rs0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/aa;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/ms0;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/os0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic g:Lcom/google/android/gms/internal/ads/sx;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/sx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/aa;Lcom/google/android/gms/internal/ads/gw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fx;->g:Lcom/google/android/gms/internal/ads/sx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fx;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/fx;->b:Lcom/google/android/gms/internal/ads/aa;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/fh2;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/eh2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fx;->c:Lcom/google/android/gms/internal/ads/oh2;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/fh2;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/eh2;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fx;->d:Lcom/google/android/gms/internal/ads/oh2;

    new-instance p3, Lcom/google/android/gms/internal/ads/ns0;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/ns0;-><init>(Lcom/google/android/gms/internal/ads/oh2;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/fx;->e:Lcom/google/android/gms/internal/ads/oh2;

    new-instance p2, Lcom/google/android/gms/internal/ads/ps0;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/ps0;-><init>(Lcom/google/android/gms/internal/ads/oh2;Lcom/google/android/gms/internal/ads/oh2;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dh2;->a(Lcom/google/android/gms/internal/ads/oh2;)Lcom/google/android/gms/internal/ads/oh2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fx;->f:Lcom/google/android/gms/internal/ads/oh2;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/fx;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/fx;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/fx;)Lcom/google/android/gms/internal/ads/ms0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/fx;->b:Lcom/google/android/gms/internal/ads/aa;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ns0;->c(Lcom/google/android/gms/internal/ads/aa;)Lcom/google/android/gms/internal/ads/ms0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/ads/is0;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/cx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/cx;-><init>(Lcom/google/android/gms/internal/ads/fx;Lcom/google/android/gms/internal/ads/gw;)V

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/os0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fx;->f:Lcom/google/android/gms/internal/ads/oh2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/oh2;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/os0;

    return-object v0
.end method
