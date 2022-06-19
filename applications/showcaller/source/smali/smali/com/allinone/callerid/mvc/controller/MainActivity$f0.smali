.class Lcom/allinone/callerid/mvc/controller/MainActivity$f0;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/MainActivity;->p1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ClipboardManager;

.field final synthetic b:Lcom/allinone/callerid/mvc/controller/MainActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/MainActivity;Landroid/content/ClipboardManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$f0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$f0;->a:Landroid/content/ClipboardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryClipChanged()V
    .locals 4

    const-string v0, "[0-9]+"

    const-string v1, ""

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$f0;->a:Landroid/content/ClipboardManager;

    invoke-virtual {v2}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$f0;->a:Landroid/content/ClipboardManager;

    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, " "

    .line 6
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/a1;->l0()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-static {v3}, Lcom/allinone/callerid/util/a1;->R1(Z)V

    .line 10
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$f0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v1, v2}, Lcom/allinone/callerid/i/a/t/b;->c(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    const-string v2, "+"

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-static {}, Lcom/allinone/callerid/util/a1;->l0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-static {v3}, Lcom/allinone/callerid/util/a1;->R1(Z)V

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$f0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v1, v0}, Lcom/allinone/callerid/i/a/t/b;->c(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
