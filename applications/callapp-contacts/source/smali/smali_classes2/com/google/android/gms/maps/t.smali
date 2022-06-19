.class final Lcom/google/android/gms/maps/t;
.super Lcom/google/android/gms/maps/a/o;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/maps/c$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/c$b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/t;->a:Lcom/google/android/gms/maps/c$b;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/maps/t;->a:Lcom/google/android/gms/maps/c$b;

    invoke-interface {v0}, Lcom/google/android/gms/maps/c$b;->a()V

    return-void
.end method
