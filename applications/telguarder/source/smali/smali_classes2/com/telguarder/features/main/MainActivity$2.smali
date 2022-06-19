.class Lcom/telguarder/features/main/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/telguarder/helpers/ui/DialogEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/main/MainActivity;->requestIgnoreBatteryOptimisations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/main/MainActivity;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/telguarder/features/main/MainActivity$2;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeSelected()V
    .locals 2

    .line 228
    invoke-static {}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->getInstance()Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity$2;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->checkForFirmwareSpecificBlockers(Landroid/content/Context;)V

    return-void
.end method

.method public onPositiveSelected()V
    .locals 4

    const/16 v0, 0x85f

    .line 217
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/telguarder/features/main/MainActivity$2;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-virtual {v3}, Lcom/telguarder/features/main/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 218
    iget-object v2, p0, Lcom/telguarder/features/main/MainActivity$2;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-virtual {v2, v1, v0}, Lcom/telguarder/features/main/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/telguarder/features/main/MainActivity$2;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-virtual {v2, v1, v0}, Lcom/telguarder/features/main/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method
