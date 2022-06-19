.class Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$p;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/q/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->T0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$p;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 5

    const-string v0, ""

    const v1, 0x7f0801b4

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    .line 1
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$p;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$p;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    .line 2
    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->p0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/ImageView;

    move-result-object p2

    .line 3
    invoke-static {v2, p1, v0, v1, p2}, Lcom/allinone/callerid/util/t;->c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$p;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->i0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$p;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->i0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$p;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->i0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$p;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->p0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1, p2, v1, v0}, Lcom/allinone/callerid/util/t;->a(Landroid/app/Activity;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$p;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->p0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
