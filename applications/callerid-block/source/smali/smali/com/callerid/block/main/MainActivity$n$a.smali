.class Lcom/callerid/block/main/MainActivity$n$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/main/MainActivity$n;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ClipboardManager;

.field final synthetic b:Lcom/callerid/block/main/MainActivity$n;


# direct methods
.method constructor <init>(Lcom/callerid/block/main/MainActivity$n;Landroid/content/ClipboardManager;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity$n$a;->b:Lcom/callerid/block/main/MainActivity$n;

    iput-object p2, p0, Lcom/callerid/block/main/MainActivity$n$a;->a:Landroid/content/ClipboardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryClipChanged()V
    .locals 6

    const-string v0, "[0-9]+"

    const-string v1, ""

    :try_start_0
    iget-object v2, p0, Lcom/callerid/block/main/MainActivity$n$a;->a:Landroid/content/ClipboardManager;

    invoke-virtual {v2}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callerid/block/main/MainActivity$n$a;->a:Landroid/content/ClipboardManager;

    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, " "

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "text\uff1a"

    const-string v4, "searchCopy"

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callerid/block/main/MainActivity$n$a;->b:Lcom/callerid/block/main/MainActivity$n;

    iget-object v2, v2, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/callerid/block/util/n0;->R(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/callerid/block/main/MainActivity$n$a;->b:Lcom/callerid/block/main/MainActivity$n;

    iget-object v2, v2, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/callerid/block/util/n0;->d1(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/callerid/block/main/MainActivity$n$a;->b:Lcom/callerid/block/main/MainActivity$n;

    iget-object v2, v2, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v2, v1}, Lcom/callerid/block/main/MainActivity;->E0(Lcom/callerid/block/main/MainActivity;Ljava/lang/String;)V

    :cond_0
    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$n$a;->b:Lcom/callerid/block/main/MainActivity$n;

    iget-object v0, v0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/n0;->R(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$n$a;->b:Lcom/callerid/block/main/MainActivity$n;

    iget-object v0, v0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/callerid/block/util/n0;->d1(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$n$a;->b:Lcom/callerid/block/main/MainActivity$n;

    iget-object v0, v0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0, v1}, Lcom/callerid/block/main/MainActivity;->E0(Lcom/callerid/block/main/MainActivity;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
