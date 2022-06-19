.class Lcom/callerid/block/start/MissedCallActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/MissedCallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/MissedCallActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/MissedCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/MissedCallActivity$a;->b:Lcom/callerid/block/start/MissedCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity$a;->b:Lcom/callerid/block/start/MissedCallActivity;

    invoke-static {v0}, Lcom/callerid/block/start/MissedCallActivity;->Q(Lcom/callerid/block/start/MissedCallActivity;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity$a;->b:Lcom/callerid/block/start/MissedCallActivity;

    invoke-static {v0}, Lcom/callerid/block/start/MissedCallActivity;->R(Lcom/callerid/block/start/MissedCallActivity;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity$a;->b:Lcom/callerid/block/start/MissedCallActivity;

    invoke-static {v0}, Lcom/callerid/block/util/a;->a(Landroid/app/Activity;)V

    invoke-static {}, Lcom/callerid/block/util/w0/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/callerid/block/start/MissedCallActivity$a$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/start/MissedCallActivity$a$a;-><init>(Lcom/callerid/block/start/MissedCallActivity$a;)V

    invoke-static {v0}, Lcom/callerid/block/h/a/b/a;->a(Lcom/callerid/block/h/a/b/b;)V

    :cond_0
    invoke-static {}, Lcom/callerid/block/util/w0/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/callerid/block/start/MissedCallActivity$a$b;

    invoke-direct {v0, p0}, Lcom/callerid/block/start/MissedCallActivity$a$b;-><init>(Lcom/callerid/block/start/MissedCallActivity$a;)V

    invoke-static {v0}, Lcom/callerid/block/h/a/b/a;->a(Lcom/callerid/block/h/a/b/b;)V

    :cond_1
    return-void
.end method
