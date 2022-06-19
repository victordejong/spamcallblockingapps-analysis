.class public final Lcom/google/android/gms/internal/location/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/location/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/location/u<",
        "Lcom/google/android/gms/internal/location/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/location/ak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/location/aj;->a:Lcom/google/android/gms/internal/location/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/location/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/location/aj;->a:Lcom/google/android/gms/internal/location/ak;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/location/ak;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/h;

    return-object v0
.end method
