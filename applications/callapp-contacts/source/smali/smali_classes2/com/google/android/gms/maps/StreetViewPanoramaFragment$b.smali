.class final Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;
.super Lcom/google/android/gms/dynamic/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/StreetViewPanoramaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/a<",
        "Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Landroid/app/Fragment;

.field private e:Lcom/google/android/gms/dynamic/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/dynamic/e<",
            "Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/app/Activity;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Fragment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/dynamic/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->g:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->d:Landroid/app/Fragment;

    return-void
.end method

.method private final h()V
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->f:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->e:Lcom/google/android/gms/dynamic/e;

    if-eqz v0, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->a:Lcom/google/android/gms/dynamic/c;

    if-nez v0, :cond_1

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->f:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/maps/d;->a(Landroid/content/Context;)I

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->f:Landroid/app/Activity;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/maps/a/ab;->a(Landroid/content/Context;)Lcom/google/android/gms/maps/a/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->f:Landroid/app/Activity;

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/ac;->b(Lcom/google/android/gms/dynamic/b;)Lcom/google/android/gms/maps/a/f;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->e:Lcom/google/android/gms/dynamic/e;

    new-instance v2, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;

    iget-object v3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->d:Landroid/app/Fragment;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;-><init>(Landroid/app/Fragment;Lcom/google/android/gms/maps/a/f;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/dynamic/e;->a(Lcom/google/android/gms/dynamic/c;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/f;

    .line 2000
    iget-object v2, p0, Lcom/google/android/gms/dynamic/a;->a:Lcom/google/android/gms/dynamic/c;

    .line 15
    check-cast v2, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;->a(Lcom/google/android/gms/maps/f;)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_1
    :cond_1
    return-void
.end method


# virtual methods
.method final a(Landroid/app/Activity;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->f:Landroid/app/Activity;

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->h()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/e<",
            "Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;",
            ">;)V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->e:Lcom/google/android/gms/dynamic/e;

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->h()V

    return-void
.end method
