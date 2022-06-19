.class Lcom/klinker/android/send_message/StatusUpdatedReceiver$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/klinker/android/send_message/StatusUpdatedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/content/Intent;

.field final synthetic d:I

.field final synthetic e:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic f:Lcom/klinker/android/send_message/StatusUpdatedReceiver;


# direct methods
.method constructor <init>(Lcom/klinker/android/send_message/StatusUpdatedReceiver;Landroid/content/Context;Landroid/content/Intent;ILandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    iput-object p1, p0, Lcom/klinker/android/send_message/StatusUpdatedReceiver$a;->f:Lcom/klinker/android/send_message/StatusUpdatedReceiver;

    iput-object p2, p0, Lcom/klinker/android/send_message/StatusUpdatedReceiver$a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/klinker/android/send_message/StatusUpdatedReceiver$a;->c:Landroid/content/Intent;

    iput p4, p0, Lcom/klinker/android/send_message/StatusUpdatedReceiver$a;->d:I

    iput-object p5, p0, Lcom/klinker/android/send_message/StatusUpdatedReceiver$a;->e:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/klinker/android/send_message/StatusUpdatedReceiver$a;->f:Lcom/klinker/android/send_message/StatusUpdatedReceiver;

    iget-object v1, p0, Lcom/klinker/android/send_message/StatusUpdatedReceiver$a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/klinker/android/send_message/StatusUpdatedReceiver$a;->c:Landroid/content/Intent;

    iget v3, p0, Lcom/klinker/android/send_message/StatusUpdatedReceiver$a;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/klinker/android/send_message/StatusUpdatedReceiver;->b(Landroid/content/Context;Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/klinker/android/send_message/StatusUpdatedReceiver$a;->f:Lcom/klinker/android/send_message/StatusUpdatedReceiver;

    iget-object v1, p0, Lcom/klinker/android/send_message/StatusUpdatedReceiver$a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/klinker/android/send_message/StatusUpdatedReceiver$a;->c:Landroid/content/Intent;

    iget v3, p0, Lcom/klinker/android/send_message/StatusUpdatedReceiver$a;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/klinker/android/send_message/StatusUpdatedReceiver;->a(Landroid/content/Context;Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/klinker/android/send_message/StatusUpdatedReceiver$a;->e:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method
