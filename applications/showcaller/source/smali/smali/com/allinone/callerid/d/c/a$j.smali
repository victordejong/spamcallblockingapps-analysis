.class Lcom/allinone/callerid/d/c/a$j;
.super Ljava/lang/Object;
.source "IncomingCallScreen.java"

# interfaces
.implements Lcom/allinone/callerid/l/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/c/a;->L(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/d/c/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/c/a$j;->a:Lcom/allinone/callerid/d/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/model/EZSearchContacts;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u96e2\u7dda\u89e3\u6790\u5668\u67e5\u8a62\u7d50\u679c: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wbb"

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getOperator()Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/allinone/callerid/d/c/a$j;->a:Lcom/allinone/callerid/d/c/a;

    invoke-static {v2}, Lcom/allinone/callerid/d/c/a;->j(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a$j;->a:Lcom/allinone/callerid/d/c/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/c/a;->j(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a$j;->a:Lcom/allinone/callerid/d/c/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/c/a;->w(Lcom/allinone/callerid/d/c/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/allinone/callerid/d/c/a$j;->a:Lcom/allinone/callerid/d/c/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/c/a;->w(Lcom/allinone/callerid/d/c/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a$j;->a:Lcom/allinone/callerid/d/c/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/c/a;->f(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a$j;->a:Lcom/allinone/callerid/d/c/a;

    invoke-static {p1}, Lcom/allinone/callerid/d/c/a;->d(Lcom/allinone/callerid/d/c/a;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/d/c/a$j;->a:Lcom/allinone/callerid/d/c/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/c/a;->q(Lcom/allinone/callerid/d/c/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/d/c/a$j$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/d/c/a$j$a;-><init>(Lcom/allinone/callerid/d/c/a$j;)V

    invoke-static {p1, v0, p2, v1}, Lcom/allinone/callerid/i/a/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/i/a/n/b;)V

    return-void
.end method

.method public b(Lcom/allinone/callerid/model/EZSearchContacts;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "wbb"

    const-string v1, "\u672c\u5730\u4fdd\u5b58\u7684\u5eab\u8fd4\u56de\u6578\u64da\uff0c\u8a72\u5eab\u8fd4\u56de\u6578\u64da\u76f4\u63a5\u5c55\u793a"

    .line 2
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "search_offline_location_ok_new"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a$j;->a:Lcom/allinone/callerid/d/c/a;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/allinone/callerid/d/c/a;->n(Lcom/allinone/callerid/d/c/a;Lcom/allinone/callerid/model/EZSearchContacts;Z)V

    return-void
.end method
