.class public final Lcom/google/android/gms/internal/ads/ebh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Bundle;

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Bundle;

.field private final f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Landroid/location/Location;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Z

.field private q:Lcom/google/android/gms/ads/f/a;

.field private r:I

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->a:Ljava/util/HashSet;

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->b:Landroid/os/Bundle;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->c:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->d:Ljava/util/HashSet;

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->e:Landroid/os/Bundle;

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->f:Ljava/util/HashSet;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->i:Ljava/util/List;

    .line 9
    iput v1, p0, Lcom/google/android/gms/internal/ads/ebh;->j:I

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ebh;->l:Z

    .line 11
    iput v1, p0, Lcom/google/android/gms/internal/ads/ebh;->o:I

    .line 12
    iput v1, p0, Lcom/google/android/gms/internal/ads/ebh;->r:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ebh;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->g:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/ebh;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/ebh;)Ljava/util/List;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/ebh;)I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/google/android/gms/internal/ads/ebh;->j:I

    return v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/ebh;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->a:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/ebh;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->k:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/ebh;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ebh;->l:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/ads/ebh;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/ads/ebh;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/ads/ebh;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/gms/internal/ads/ebh;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/gms/internal/ads/ebh;)I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/google/android/gms/internal/ads/ebh;->o:I

    return v0
.end method

.method static synthetic m(Lcom/google/android/gms/internal/ads/ebh;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->d:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic n(Lcom/google/android/gms/internal/ads/ebh;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic o(Lcom/google/android/gms/internal/ads/ebh;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->f:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic p(Lcom/google/android/gms/internal/ads/ebh;)Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ebh;->p:Z

    return v0
.end method

.method static synthetic q(Lcom/google/android/gms/internal/ads/ebh;)Lcom/google/android/gms/ads/f/a;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->q:Lcom/google/android/gms/ads/f/a;

    return-object v0
.end method

.method static synthetic r(Lcom/google/android/gms/internal/ads/ebh;)I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/google/android/gms/internal/ads/ebh;->r:I

    return v0
.end method

.method static synthetic s(Lcom/google/android/gms/internal/ads/ebh;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->s:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    iput p1, p0, Lcom/google/android/gms/internal/ads/ebh;->j:I

    .line 46
    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ebh;->k:Landroid/location/Location;

    .line 48
    return-void
.end method

.method public final a(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->b:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 22
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    return-void
.end method

.method public final a(Ljava/util/Date;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ebh;->g:Ljava/util/Date;

    .line 34
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    .line 56
    if-eqz p1, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 58
    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/ebh;->o:I

    .line 59
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ebh;->p:Z

    .line 65
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebh;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method
