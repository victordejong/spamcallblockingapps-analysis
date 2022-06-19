.class Lcom/telguarder/features/main/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/telguarder/helpers/ui/DialogEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/main/MainActivity;->systemAlertPermCheck()V
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

    .line 190
    iput-object p1, p0, Lcom/telguarder/features/main/MainActivity$1;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeSelected()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity$1;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {v0}, Lcom/telguarder/features/main/MainActivity;->access$000(Lcom/telguarder/features/main/MainActivity;)V

    return-void
.end method

.method public onPositiveSelected()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity$1;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {v0}, Lcom/telguarder/features/main/MainActivityPermissionsDispatcher;->systemAlertWindowWithPermissionCheck(Lcom/telguarder/features/main/MainActivity;)V

    return-void
.end method
