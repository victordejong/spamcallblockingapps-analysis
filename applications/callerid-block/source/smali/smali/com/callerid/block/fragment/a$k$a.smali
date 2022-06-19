.class Lcom/callerid/block/fragment/a$k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/f/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/a$k;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/fragment/a$k;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/a$k;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/a$k$a;->a:Lcom/callerid/block/fragment/a$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/fragment/a$k$a;->a:Lcom/callerid/block/fragment/a$k;

    iget-object p1, p1, Lcom/callerid/block/fragment/a$k;->a:Lcom/callerid/block/fragment/a;

    invoke-static {p1}, Lcom/callerid/block/fragment/a;->S1(Lcom/callerid/block/fragment/a;)V

    :cond_0
    return-void
.end method
