.class public final Lcom/flurry/sdk/jx$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/jx;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/jx;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/jx$a;->a:Lcom/flurry/sdk/jx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/jx$a;->a:Lcom/flurry/sdk/jx;

    invoke-static {v0, p1}, Lcom/flurry/sdk/jx;->a(Lcom/flurry/sdk/jx;Landroid/location/Location;)Landroid/location/Location;

    :cond_0
    iget-object p1, p0, Lcom/flurry/sdk/jx$a;->a:Lcom/flurry/sdk/jx;

    invoke-static {p1}, Lcom/flurry/sdk/jx;->c(Lcom/flurry/sdk/jx;)I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    const/4 p1, 0x4

    invoke-static {}, Lcom/flurry/sdk/jx;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Max location reports reached, stopping"

    invoke-static {p1, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/flurry/sdk/jx$a;->a:Lcom/flurry/sdk/jx;

    invoke-static {p1}, Lcom/flurry/sdk/jx;->b(Lcom/flurry/sdk/jx;)V

    :cond_1
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
