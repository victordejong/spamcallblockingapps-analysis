.class Lcom/callapp/contacts/manager/LocationManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/LocationManager$LocationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/LocationManager;->a(Lcom/callapp/contacts/manager/LocationManager$LocationResult;)V
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

    .line 134
    iput-object p1, p0, Lcom/callapp/contacts/manager/LocationManager$2;->b:Lcom/callapp/contacts/manager/LocationManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/LocationManager$2;->a:Lcom/callapp/contacts/manager/LocationManager$LocationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 2

    .line 137
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Got from last known location: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "LocationManager"

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/callapp/contacts/manager/LocationManager$2;->a:Lcom/callapp/contacts/manager/LocationManager$LocationResult;

    invoke-static {v0, p1}, Lcom/callapp/contacts/manager/LocationManager;->a(Lcom/callapp/contacts/manager/LocationManager$LocationResult;Landroid/location/Location;)V

    return-void

    .line 142
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/preferences/LocationPrefs;->get()Lcom/callapp/contacts/manager/preferences/LocationPrefs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/LocationPrefs;->getLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 144
    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/callapp/contacts/manager/LocationManager$2;->a:Lcom/callapp/contacts/manager/LocationManager$LocationResult;

    invoke-static {v0, p1}, Lcom/callapp/contacts/manager/LocationManager;->a(Lcom/callapp/contacts/manager/LocationManager$LocationResult;Landroid/location/Location;)V

    return-void

    .line 147
    :cond_1
    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/callapp/contacts/manager/LocationManager$2;->b:Lcom/callapp/contacts/manager/LocationManager;

    iget-object v0, p0, Lcom/callapp/contacts/manager/LocationManager$2;->a:Lcom/callapp/contacts/manager/LocationManager$LocationResult;

    invoke-static {p1, v0}, Lcom/callapp/contacts/manager/LocationManager;->a(Lcom/callapp/contacts/manager/LocationManager;Lcom/callapp/contacts/manager/LocationManager$LocationResult;)Z

    return-void
.end method
