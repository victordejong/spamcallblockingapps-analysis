.class final Lcom/google/android/gms/internal/ads/qr0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bp1;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/h30;

.field private final c:Lcom/google/android/gms/internal/ads/fs0;

.field private final d:Lcom/google/android/gms/internal/ads/qr0;

.field private final e:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/bp1;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/h30;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/wo1;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/yo1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/fs0;Landroid/content/Context;Lcom/google/android/gms/internal/ads/h30;Lcom/google/android/gms/internal/ads/wr0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/qr0;->d:Lcom/google/android/gms/internal/ads/qr0;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qr0;->c:Lcom/google/android/gms/internal/ads/fs0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qr0;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/qr0;->b:Lcom/google/android/gms/internal/ads/h30;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dj3;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cj3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qr0;->e:Lcom/google/android/gms/internal/ads/pj3;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/dj3;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cj3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qr0;->f:Lcom/google/android/gms/internal/ads/pj3;

    new-instance p3, Lcom/google/android/gms/internal/ads/xo1;

    .line 3
    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/xo1;-><init>(Lcom/google/android/gms/internal/ads/pj3;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/qr0;->g:Lcom/google/android/gms/internal/ads/pj3;

    new-instance p2, Lcom/google/android/gms/internal/ads/zo1;

    .line 4
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zo1;-><init>(Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;)V

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/aj3;->a(Lcom/google/android/gms/internal/ads/pj3;)Lcom/google/android/gms/internal/ads/pj3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qr0;->h:Lcom/google/android/gms/internal/ads/pj3;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/qr0;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/qr0;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/qr0;)Lcom/google/android/gms/internal/ads/wo1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/qr0;->b:Lcom/google/android/gms/internal/ads/h30;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/xo1;->c(Lcom/google/android/gms/internal/ads/h30;)Lcom/google/android/gms/internal/ads/wo1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()Lcom/google/android/gms/internal/ads/yo1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qr0;->h:Lcom/google/android/gms/internal/ads/pj3;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pj3;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yo1;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/so1;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/nr0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qr0;->c:Lcom/google/android/gms/internal/ads/fs0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qr0;->d:Lcom/google/android/gms/internal/ads/qr0;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/nr0;-><init>(Lcom/google/android/gms/internal/ads/fs0;Lcom/google/android/gms/internal/ads/qr0;Lcom/google/android/gms/internal/ads/wr0;)V

    return-object v0
.end method
