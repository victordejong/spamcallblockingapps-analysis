.class Lcom/allinone/callerid/dialog/i$a;
.super Ljava/lang/Object;
.source "DialogShareNumber.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/dialog/i;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/dialog/i;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/dialog/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/dialog/i$a;->d:Lcom/allinone/callerid/dialog/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/dialog/i$a;->d:Lcom/allinone/callerid/dialog/i;

    invoke-static {v0}, Lcom/allinone/callerid/dialog/i;->a(Lcom/allinone/callerid/dialog/i;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/dialog/i$a;->d:Lcom/allinone/callerid/dialog/i;

    invoke-static {v0}, Lcom/allinone/callerid/dialog/i;->a(Lcom/allinone/callerid/dialog/i;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/dialog/i$a;->d:Lcom/allinone/callerid/dialog/i;

    invoke-static {v0}, Lcom/allinone/callerid/dialog/i;->a(Lcom/allinone/callerid/dialog/i;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->buildDrawingCache()V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/dialog/i$a;->d:Lcom/allinone/callerid/dialog/i;

    invoke-static {v0}, Lcom/allinone/callerid/dialog/i;->a(Lcom/allinone/callerid/dialog/i;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/dialog/i$a;->d:Lcom/allinone/callerid/dialog/i;

    invoke-static {v1}, Lcom/allinone/callerid/dialog/i;->b(Lcom/allinone/callerid/dialog/i;)Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "share.png"

    .line 7
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/h1;->A0(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "shareimage"

    const-string v1, "bitmap==null"

    .line 9
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
