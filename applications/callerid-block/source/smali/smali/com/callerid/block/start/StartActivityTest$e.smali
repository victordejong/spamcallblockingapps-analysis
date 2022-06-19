.class Lcom/callerid/block/start/StartActivityTest$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/StartActivityTest;->a0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/StartActivityTest;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/StartActivityTest;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/StartActivityTest$e;->b:Lcom/callerid/block/start/StartActivityTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/callerid/block/start/StartActivityTest$e;->b:Lcom/callerid/block/start/StartActivityTest;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/start/StartActivityTest$e;->b:Lcom/callerid/block/start/StartActivityTest;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callerid/block/util/t0;->f0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
