.class Lcom/callapp/contacts/manager/LocationManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/LocationManager;->b(Lcom/callapp/contacts/manager/LocationManager$LocationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/f<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/LocationManager$LocationResult;

.field final synthetic b:Lcom/callapp/contacts/manager/LocationManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/LocationManager;Lcom/callapp/contacts/manager/LocationManager$LocationResult;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/callapp/contacts/manager/LocationManager$4;->b:Lcom/callapp/contacts/manager/LocationManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/LocationManager$4;->a:Lcom/callapp/contacts/manager/LocationManager$LocationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 161
    check-cast p1, Landroid/location/Location;

    .line 1164
    iget-object v0, p0, Lcom/callapp/contacts/manager/LocationManager$4;->a:Lcom/callapp/contacts/manager/LocationManager$LocationResult;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/manager/LocationManager$LocationResult;->a(Landroid/location/Location;)V

    return-void
.end method
