.class Lcom/callapp/contacts/manager/LocationManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/LocationManager;->b(Lcom/callapp/contacts/manager/LocationManager$LocationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/LocationManager$LocationResult;

.field final synthetic b:Lcom/callapp/contacts/manager/LocationManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/LocationManager;Lcom/callapp/contacts/manager/LocationManager$LocationResult;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/callapp/contacts/manager/LocationManager$3;->b:Lcom/callapp/contacts/manager/LocationManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/LocationManager$3;->a:Lcom/callapp/contacts/manager/LocationManager$LocationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 169
    const-class v0, Lcom/callapp/contacts/manager/LocationManager;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 170
    iget-object p1, p0, Lcom/callapp/contacts/manager/LocationManager$3;->a:Lcom/callapp/contacts/manager/LocationManager$LocationResult;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/manager/LocationManager$LocationResult;->a(Landroid/location/Location;)V

    return-void
.end method
