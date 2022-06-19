.class Lcom/callerid/block/fragment/a$k;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/fragment/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/fragment/a;


# direct methods
.method private constructor <init>(Lcom/callerid/block/fragment/a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/a$k;->a:Lcom/callerid/block/fragment/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callerid/block/fragment/a;Lcom/callerid/block/fragment/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/fragment/a$k;-><init>(Lcom/callerid/block/fragment/a;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.callerid.block.STARRED_DATA"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/callerid/block/fragment/a$k$a;

    invoke-direct {p1, p0}, Lcom/callerid/block/fragment/a$k$a;-><init>(Lcom/callerid/block/fragment/a$k;)V

    invoke-static {p1}, Lcom/callerid/block/h/a/f/g;->f(Lcom/callerid/block/h/a/f/j;)V

    :cond_0
    return-void
.end method
