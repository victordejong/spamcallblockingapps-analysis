.class Lcom/allinone/callerid/mvc/controller/MainActivity$k0$a;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/e/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->g(Ljava/lang/String;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/MainActivity$k0;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/MainActivity$k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0$a;->a:Lcom/allinone/callerid/mvc/controller/MainActivity$k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0$a;->a:Lcom/allinone/callerid/mvc/controller/MainActivity$k0;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.allinone.callerid.CLOSE_AD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/gg/a;->a()Lcom/allinone/callerid/util/gg/a;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/allinone/callerid/util/gg/a;->b:Lcom/google/android/gms/ads/nativead/a;

    return-void
.end method
