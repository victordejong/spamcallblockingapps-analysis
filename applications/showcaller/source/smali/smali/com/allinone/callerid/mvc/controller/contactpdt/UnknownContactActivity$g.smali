.class Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$g;
.super Ljava/lang/Object;
.source "UnknownContactActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->c1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$g;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$g;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->t0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080184

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$g;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/CallLogBean;->V0(Ljava/lang/String;)V

    return-void
.end method
