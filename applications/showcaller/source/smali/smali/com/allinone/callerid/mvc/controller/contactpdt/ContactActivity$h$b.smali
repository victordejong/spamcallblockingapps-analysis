.class Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, ""

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h;

    iget-object p2, p2, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->i0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p2

    const-string v0, "-"

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b$a;

    invoke-direct {p1, p0, p2}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b$a;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/allinone/callerid/i/a/f/b;->b(Ljava/lang/String;Lcom/allinone/callerid/i/a/f/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
