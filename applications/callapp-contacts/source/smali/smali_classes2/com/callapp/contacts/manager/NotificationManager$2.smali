.class Lcom/callapp/contacts/manager/NotificationManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/NotificationManager;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/NotificationManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/NotificationManager;)V
    .locals 0

    .line 1905
    iput-object p1, p0, Lcom/callapp/contacts/manager/NotificationManager$2;->a:Lcom/callapp/contacts/manager/NotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1908
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager$2;->a:Lcom/callapp/contacts/manager/NotificationManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/NotificationManager;->getCurrentCallAppInCallNotificationBuilder()Landroidx/core/app/g$e;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroidx/core/app/g$e;)Z

    return-void
.end method
