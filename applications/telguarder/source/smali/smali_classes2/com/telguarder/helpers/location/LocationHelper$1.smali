.class Lcom/telguarder/helpers/location/LocationHelper$1;
.super Ljava/lang/Object;
.source "LocationHelper.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/helpers/location/LocationHelper;->updateCoarseLocation(Landroid/content/Context;Lcom/google/android/gms/tasks/OnSuccessListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/helpers/location/LocationHelper;

.field final synthetic val$completionHandler:Lcom/google/android/gms/tasks/OnSuccessListener;


# direct methods
.method constructor <init>(Lcom/telguarder/helpers/location/LocationHelper;Lcom/google/android/gms/tasks/OnSuccessListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/telguarder/helpers/location/LocationHelper$1;->this$0:Lcom/telguarder/helpers/location/LocationHelper;

    iput-object p2, p0, Lcom/telguarder/helpers/location/LocationHelper$1;->val$completionHandler:Lcom/google/android/gms/tasks/OnSuccessListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/location/Location;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/telguarder/helpers/location/LocationHelper$1;->this$0:Lcom/telguarder/helpers/location/LocationHelper;

    invoke-static {v0, p1}, Lcom/telguarder/helpers/location/LocationHelper;->access$002(Lcom/telguarder/helpers/location/LocationHelper;Landroid/location/Location;)Landroid/location/Location;

    .line 54
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/helpers/location/LocationHelper$1;->this$0:Lcom/telguarder/helpers/location/LocationHelper;

    invoke-static {v0}, Lcom/telguarder/helpers/location/LocationHelper;->access$000(Lcom/telguarder/helpers/location/LocationHelper;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveCurrentCoarseLocation(Landroid/location/Location;)V

    .line 55
    iget-object p1, p0, Lcom/telguarder/helpers/location/LocationHelper$1;->val$completionHandler:Lcom/google/android/gms/tasks/OnSuccessListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/telguarder/helpers/location/LocationHelper$1;->this$0:Lcom/telguarder/helpers/location/LocationHelper;

    invoke-static {v0}, Lcom/telguarder/helpers/location/LocationHelper;->access$000(Lcom/telguarder/helpers/location/LocationHelper;)Landroid/location/Location;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/telguarder/helpers/location/LocationHelper$1;->onSuccess(Landroid/location/Location;)V

    return-void
.end method
