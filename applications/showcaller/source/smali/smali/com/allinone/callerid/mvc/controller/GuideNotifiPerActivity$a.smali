.class Lcom/allinone/callerid/mvc/controller/GuideNotifiPerActivity$a;
.super Ljava/lang/Object;
.source "GuideNotifiPerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/GuideNotifiPerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/GuideNotifiPerActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/GuideNotifiPerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/GuideNotifiPerActivity$a;->d:Lcom/allinone/callerid/mvc/controller/GuideNotifiPerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/GuideNotifiPerActivity$a;->d:Lcom/allinone/callerid/mvc/controller/GuideNotifiPerActivity;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/GuideNotifiPerActivity;->X(Lcom/allinone/callerid/mvc/controller/GuideNotifiPerActivity;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/GuideNotifiPerActivity$a;->d:Lcom/allinone/callerid/mvc/controller/GuideNotifiPerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/GuideNotifiPerActivity;->Y(Lcom/allinone/callerid/mvc/controller/GuideNotifiPerActivity;)V

    return-void
.end method
