.class public Lcom/callcontrol/datashare/SyncAppsProvider$a;
.super Lcom/callcontrol/datashare/SyncAppsProvider$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callcontrol/datashare/SyncAppsProvider;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/callcontrol/datashare/SyncAppsProvider;


# direct methods
.method public constructor <init>(Lcom/callcontrol/datashare/SyncAppsProvider;)V
    .locals 1

    iput-object p1, p0, Lcom/callcontrol/datashare/SyncAppsProvider$a;->a:Lcom/callcontrol/datashare/SyncAppsProvider;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/callcontrol/datashare/SyncAppsProvider$c;-><init>(Lcom/callcontrol/datashare/SyncAppsProvider;Lcom/callcontrol/datashare/SyncAppsProvider$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/callcontrol/datashare/SyncAppsProvider$a;->a:Lcom/callcontrol/datashare/SyncAppsProvider;

    invoke-static {}, Lk61;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callcontrol/datashare/SyncAppsProvider;->a(Lcom/callcontrol/datashare/SyncAppsProvider;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
