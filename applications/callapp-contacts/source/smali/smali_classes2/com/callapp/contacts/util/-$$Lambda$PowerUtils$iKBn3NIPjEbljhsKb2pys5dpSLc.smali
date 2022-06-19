.class public final synthetic Lcom/callapp/contacts/util/-$$Lambda$PowerUtils$iKBn3NIPjEbljhsKb2pys5dpSLc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


# instance fields
.field public final synthetic f$0:Landroid/os/PowerManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/callapp/contacts/manager/task/Task$DoneListener;


# direct methods
.method public synthetic constructor <init>(Landroid/os/PowerManager;Ljava/lang/String;Lcom/callapp/contacts/manager/task/Task$DoneListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/util/-$$Lambda$PowerUtils$iKBn3NIPjEbljhsKb2pys5dpSLc;->f$0:Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/callapp/contacts/util/-$$Lambda$PowerUtils$iKBn3NIPjEbljhsKb2pys5dpSLc;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/util/-$$Lambda$PowerUtils$iKBn3NIPjEbljhsKb2pys5dpSLc;->f$2:Lcom/callapp/contacts/manager/task/Task$DoneListener;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 7

    iget-object v0, p0, Lcom/callapp/contacts/util/-$$Lambda$PowerUtils$iKBn3NIPjEbljhsKb2pys5dpSLc;->f$0:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/callapp/contacts/util/-$$Lambda$PowerUtils$iKBn3NIPjEbljhsKb2pys5dpSLc;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/util/-$$Lambda$PowerUtils$iKBn3NIPjEbljhsKb2pys5dpSLc;->f$2:Lcom/callapp/contacts/manager/task/Task$DoneListener;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/callapp/contacts/util/PowerUtils;->lambda$iKBn3NIPjEbljhsKb2pys5dpSLc(Landroid/os/PowerManager;Ljava/lang/String;Lcom/callapp/contacts/manager/task/Task$DoneListener;Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method
