.class Lcom/callerid/block/mvc/controller/ContactActivity$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/f/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/ContactActivity;->o0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/mvc/controller/ContactActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/ContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$e;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    const/16 v0, -0x3e7

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/ContactActivity$e;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/ContactActivity;->e0(Lcom/callerid/block/mvc/controller/ContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callerid/block/search/CallLogBean;->r0(I)V

    :cond_0
    const p1, 0x7f08017b

    const-string v0, "0"

    if-eqz p2, :cond_1

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$e;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/ContactActivity;->e0(Lcom/callerid/block/mvc/controller/ContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/callerid/block/search/CallLogBean;->B0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$e;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/ContactActivity;->f0(Lcom/callerid/block/mvc/controller/ContactActivity;)Lcom/callerid/block/customview/LImageButton;

    move-result-object p1

    const p2, 0x7f08017a

    invoke-virtual {p1, p2}, Lcom/callerid/block/customview/LImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/callerid/block/mvc/controller/ContactActivity$e;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {p2}, Lcom/callerid/block/mvc/controller/ContactActivity;->e0(Lcom/callerid/block/mvc/controller/ContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/callerid/block/search/CallLogBean;->B0(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/callerid/block/mvc/controller/ContactActivity$e;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {p2}, Lcom/callerid/block/mvc/controller/ContactActivity;->f0(Lcom/callerid/block/mvc/controller/ContactActivity;)Lcom/callerid/block/customview/LImageButton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/callerid/block/customview/LImageButton;->setImageResource(I)V

    :goto_0
    return-void
.end method
