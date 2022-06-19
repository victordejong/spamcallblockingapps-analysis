.class final Lcom/google/android/gms/maps/s;
.super Lcom/google/android/gms/maps/a/t;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/maps/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/j$a;Lcom/google/android/gms/maps/f;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/s;->a:Lcom/google/android/gms/maps/f;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/a/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/h;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/h;-><init>(Lcom/google/android/gms/maps/a/e;)V

    return-void
.end method
