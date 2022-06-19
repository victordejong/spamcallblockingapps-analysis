.class final Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$2;
.super Ljava/lang/Object;
.source "PhoneCallWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->hide(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 142
    :try_start_0
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->isInstantiated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$000(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
