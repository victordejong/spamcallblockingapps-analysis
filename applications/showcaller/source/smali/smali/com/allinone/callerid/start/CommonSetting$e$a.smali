.class Lcom/allinone/callerid/start/CommonSetting$e$a;
.super Ljava/lang/Object;
.source "CommonSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/CommonSetting$e;->a(Lcom/allinone/callerid/model/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/model/a;

.field final synthetic e:Lcom/allinone/callerid/start/CommonSetting$e;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/CommonSetting$e;Lcom/allinone/callerid/model/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/CommonSetting$e$a;->e:Lcom/allinone/callerid/start/CommonSetting$e;

    iput-object p2, p0, Lcom/allinone/callerid/start/CommonSetting$e$a;->d:Lcom/allinone/callerid/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/start/CommonSetting$e$a;->e:Lcom/allinone/callerid/start/CommonSetting$e;

    iget-object v0, v0, Lcom/allinone/callerid/start/CommonSetting$e;->a:Lcom/allinone/callerid/start/CommonSetting;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/start/CommonSetting$e$a;->d:Lcom/allinone/callerid/model/a;

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/start/CommonSetting;->Z(Lcom/allinone/callerid/start/CommonSetting;Landroid/content/Context;Lcom/allinone/callerid/model/a;)V

    return-void
.end method
