.class public final Lcom/google/android/gms/maps/u;
.super Lcom/google/android/gms/maps/a/v;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/maps/c$c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/c$c;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/u;->a:Lcom/google/android/gms/maps/c$c;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/maps/u;->a:Lcom/google/android/gms/maps/c$c;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/c$c;->onSnapshotReady(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/maps/u;->a:Lcom/google/android/gms/maps/c$c;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/c$c;->onSnapshotReady(Landroid/graphics/Bitmap;)V

    return-void
.end method
