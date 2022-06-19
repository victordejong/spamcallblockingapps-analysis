.class Lcom/allinone/callerid/start/CommonSetting$e;
.super Ljava/lang/Object;
.source "CommonSetting.java"

# interfaces
.implements Lcom/allinone/callerid/util/y$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/CommonSetting;->g0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/start/CommonSetting;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/CommonSetting;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/CommonSetting$e;->a:Lcom/allinone/callerid/start/CommonSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/model/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/start/CommonSetting$e;->a:Lcom/allinone/callerid/start/CommonSetting;

    new-instance v1, Lcom/allinone/callerid/start/CommonSetting$e$a;

    invoke-direct {v1, p0, p1}, Lcom/allinone/callerid/start/CommonSetting$e$a;-><init>(Lcom/allinone/callerid/start/CommonSetting$e;Lcom/allinone/callerid/model/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
