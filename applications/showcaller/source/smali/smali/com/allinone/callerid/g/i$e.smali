.class Lcom/allinone/callerid/g/i$e;
.super Ljava/lang/Object;
.source "UnknownContentFragment.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/i;->s2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/i;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/i$e;->a:Lcom/allinone/callerid/g/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/g/i$e;->a:Lcom/allinone/callerid/g/i;

    invoke-static {p1}, Lcom/allinone/callerid/g/i;->o2(Lcom/allinone/callerid/g/i;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/g/i$e;->a:Lcom/allinone/callerid/g/i;

    invoke-static {p1}, Lcom/allinone/callerid/g/i;->p2(Lcom/allinone/callerid/g/i;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/g/i$e;->a:Lcom/allinone/callerid/g/i;

    invoke-static {p1}, Lcom/allinone/callerid/g/i;->o2(Lcom/allinone/callerid/g/i;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/g/i$e;->a:Lcom/allinone/callerid/g/i;

    invoke-static {p1}, Lcom/allinone/callerid/g/i;->p2(Lcom/allinone/callerid/g/i;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
