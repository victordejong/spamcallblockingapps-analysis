.class public final Lcom/google/android/gms/internal/ads/ou;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Bundle;

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;*>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Bundle;

.field private final f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Date;

.field private h:Ljava/lang/String;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Landroid/location/Location;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Z

.field private p:Lcom/google/android/gms/ads/y/a;

.field private q:Ljava/lang/String;

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ou;->a:Ljava/util/HashSet;

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ou;->b:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ou;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    .line 4
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ou;->d:Ljava/util/HashSet;

    new-instance v0, Landroid/os/Bundle;

    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ou;->e:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ou;->f:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ou;->i:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ou;->j:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/ou;->n:I

    const v0, 0xea60

    iput v0, p0, Lcom/google/android/gms/internal/ads/ou;->r:I

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/ou;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ou;->a:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/ou;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ou;->b:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/ou;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ou;->c:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/ads/ou;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ou;->d:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/ads/ou;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ou;->e:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/ads/ou;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ou;->f:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic k(Lcom/google/android/gms/internal/ads/ou;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ou;->g:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic l(Lcom/google/android/gms/internal/ads/ou;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ou;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lcom/google/android/gms/internal/ads/ou;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ou;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic n(Lcom/google/android/gms/internal/ads/ou;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/ou;->j:I

    return p0
.end method

.method static synthetic o(Lcom/google/android/gms/internal/ads/ou;)Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ou;->k:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic p(Lcom/google/android/gms/internal/ads/ou;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ou;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic q(Lcom/google/android/gms/internal/ads/ou;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ou;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic r(Lcom/google/android/gms/internal/ads/ou;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/ou;->n:I

    return p0
.end method

.method static synthetic s(Lcom/google/android/gms/internal/ads/ou;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/ou;->o:Z

    return p0
.end method

.method static synthetic t(Lcom/google/android/gms/internal/ads/ou;)Lcom/google/android/gms/ads/y/a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ou;->p:Lcom/google/android/gms/ads/y/a;

    return-object p0
.end method

.method static synthetic u(Lcom/google/android/gms/internal/ads/ou;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ou;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic v(Lcom/google/android/gms/internal/ads/ou;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/ou;->r:I

    return p0
.end method


# virtual methods
.method public final A(Ljava/util/Date;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ou;->g:Ljava/util/Date;

    return-void
.end method

.method public final a(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/internal/ads/ou;->j:I

    return-void
.end method

.method public final b(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ou;->k:Landroid/location/Location;

    return-void
.end method

.method public final c(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/internal/ads/ou;->n:I

    return-void
.end method

.method public final d(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ou;->o:Z

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ou;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final x(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ou;->b:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ou;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ou;->d:Ljava/util/HashSet;

    const-string v0, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
