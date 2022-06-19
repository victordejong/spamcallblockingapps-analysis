.class Lcom/allinone/callerid/d/d/b$j$a;
.super Ljava/lang/Object;
.source "PopularFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/d/b$j;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/d/d/b$j;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/d/b$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/d/b$j$a;->d:Lcom/allinone/callerid/d/d/b$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b$j$a;->d:Lcom/allinone/callerid/d/d/b$j;

    iget-object v0, v0, Lcom/allinone/callerid/d/d/b$j;->e:Lcom/allinone/callerid/d/d/b;

    invoke-static {v0}, Lcom/allinone/callerid/d/d/b;->o2(Lcom/allinone/callerid/d/d/b;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.allinone.callerid.REFRESH_HOME_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method
