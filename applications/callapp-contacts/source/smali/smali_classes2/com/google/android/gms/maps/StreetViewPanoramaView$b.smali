.class final Lcom/google/android/gms/maps/StreetViewPanoramaView$b;
.super Lcom/google/android/gms/dynamic/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/StreetViewPanoramaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/a<",
        "Lcom/google/android/gms/maps/StreetViewPanoramaView$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Landroid/view/ViewGroup;

.field private final e:Landroid/content/Context;

.field private f:Lcom/google/android/gms/dynamic/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/dynamic/e<",
            "Lcom/google/android/gms/maps/StreetViewPanoramaView$a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/dynamic/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->h:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->d:Landroid/view/ViewGroup;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->e:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->g:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/dynamic/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/e<",
            "Lcom/google/android/gms/maps/StreetViewPanoramaView$a;",
            ">;)V"
        }
    .end annotation

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->f:Lcom/google/android/gms/dynamic/e;

    if-eqz p1, :cond_1

    .line 1000
    iget-object p1, p0, Lcom/google/android/gms/dynamic/a;->a:Lcom/google/android/gms/dynamic/c;

    if-nez p1, :cond_1

    .line 10
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/maps/d;->a(Landroid/content/Context;)I

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->e:Landroid/content/Context;

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/maps/a/ab;->a(Landroid/content/Context;)Lcom/google/android/gms/maps/a/ac;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->e:Landroid/content/Context;

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->g:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/maps/a/ac;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)Lcom/google/android/gms/maps/a/g;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->f:Lcom/google/android/gms/dynamic/e;

    new-instance v1, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->d:Landroid/view/ViewGroup;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;-><init>(Landroid/view/ViewGroup;Lcom/google/android/gms/maps/a/g;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/dynamic/e;->a(Lcom/google/android/gms/dynamic/c;)V

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/f;

    .line 2000
    iget-object v1, p0, Lcom/google/android/gms/dynamic/a;->a:Lcom/google/android/gms/dynamic/c;

    .line 16
    check-cast v1, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2049
    :try_start_1
    iget-object v2, v1, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->a:Lcom/google/android/gms/maps/a/g;

    new-instance v3, Lcom/google/android/gms/maps/q;

    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/maps/q;-><init>(Lcom/google/android/gms/maps/StreetViewPanoramaView$a;Lcom/google/android/gms/maps/f;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/maps/a/g;->a(Lcom/google/android/gms/maps/a/s;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2052
    :try_start_2
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_1
    move-exception p1

    .line 21
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0

    :catch_2
    :cond_1
    return-void
.end method
