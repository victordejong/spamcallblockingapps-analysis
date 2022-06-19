.class Lcom/allinone/callerid/dialog/m$k;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/dialog/m;->i(Landroid/app/Activity;Ljava/util/List;Lcom/allinone/callerid/i/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lcom/allinone/callerid/b/k;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/allinone/callerid/b/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/dialog/m$k;->d:Ljava/util/List;

    iput-object p2, p0, Lcom/allinone/callerid/dialog/m$k;->e:Lcom/allinone/callerid/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, ""

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/dialog/m$k;->d:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/allinone/callerid/dialog/m;->b(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/allinone/callerid/dialog/m$k;->e:Lcom/allinone/callerid/b/k;

    invoke-virtual {p2, p1}, Lcom/allinone/callerid/b/k;->b(Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/dialog/m$k;->e:Lcom/allinone/callerid/b/k;

    iget-object p2, p0, Lcom/allinone/callerid/dialog/m$k;->d:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/b/k;->b(Ljava/util/List;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/dialog/m$k;->e:Lcom/allinone/callerid/b/k;

    iget-object p2, p0, Lcom/allinone/callerid/dialog/m$k;->d:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/b/k;->b(Ljava/util/List;)V

    :goto_0
    return-void
.end method
