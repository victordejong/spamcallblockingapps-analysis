.class final Lcom/callerid/block/f/a$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/f/a;->p(Landroid/view/View;Lcom/callerid/block/search/CallLogBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/search/CallLogBean;


# direct methods
.method constructor <init>(Lcom/callerid/block/search/CallLogBean;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/f/a$d;->b:Lcom/callerid/block/search/CallLogBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/callerid/block/f/a;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/f/a;->n(Landroid/content/Context;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/callerid/block/f/a$d;->b:Lcom/callerid/block/search/CallLogBean;

    const-string v2, "contact_tony"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/callerid/block/f/a;->b()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/callerid/block/f/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
