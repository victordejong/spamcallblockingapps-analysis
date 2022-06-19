.class Lcom/allinone/callerid/mvc/controller/MainActivity$z;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/MainActivity;->s1(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/allinone/callerid/mvc/controller/MainActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/MainActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$z;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$z;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$z;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$z;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$z;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$z;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/allinone/callerid/bean/EZBlackList;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/EZBlackList;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$z;->a:Ljava/lang/String;

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/EZBlackList;->setNumber(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$z;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/EZBlackList;->setName(Ljava/lang/String;)V

    const-string v0, "true"

    .line 5
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/EZBlackList;->setIs_myblock(Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/allinone/callerid/mvc/controller/MainActivity$z$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$z$a;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity$z;)V

    invoke-static {p1, v0}, Lcom/allinone/callerid/i/a/f/b;->a(Lcom/allinone/callerid/bean/EZBlackList;Lcom/allinone/callerid/i/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
