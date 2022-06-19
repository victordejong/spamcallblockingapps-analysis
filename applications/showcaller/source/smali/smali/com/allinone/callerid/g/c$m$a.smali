.class Lcom/allinone/callerid/g/c$m$a;
.super Ljava/lang/Object;
.source "EZCallPhoneFragment.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/r/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/c$m;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/c$m;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/c$m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/c$m$a;->a:Lcom/allinone/callerid/g/c$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/g/c$m$a;->a:Lcom/allinone/callerid/g/c$m;

    iget-object p1, p1, Lcom/allinone/callerid/g/c$m;->a:Lcom/allinone/callerid/g/c;

    invoke-static {p1}, Lcom/allinone/callerid/g/c;->b2(Lcom/allinone/callerid/g/c;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/g/c$m$a;->a:Lcom/allinone/callerid/g/c$m;

    iget-object p1, p1, Lcom/allinone/callerid/g/c$m;->a:Lcom/allinone/callerid/g/c;

    invoke-static {p1}, Lcom/allinone/callerid/g/c;->x2(Lcom/allinone/callerid/g/c;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/g/c$m$a;->a:Lcom/allinone/callerid/g/c$m;

    iget-object p1, p1, Lcom/allinone/callerid/g/c$m;->a:Lcom/allinone/callerid/g/c;

    invoke-static {p1}, Lcom/allinone/callerid/g/c;->h2(Lcom/allinone/callerid/g/c;)V

    :goto_0
    return-void
.end method
