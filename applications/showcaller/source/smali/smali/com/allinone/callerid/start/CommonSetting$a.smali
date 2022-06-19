.class Lcom/allinone/callerid/start/CommonSetting$a;
.super Ljava/lang/Object;
.source "CommonSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/CommonSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/start/CommonSetting;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/CommonSetting;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/CommonSetting$a;->d:Lcom/allinone/callerid/start/CommonSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/start/CommonSetting$a;->d:Lcom/allinone/callerid/start/CommonSetting;

    invoke-virtual {v0}, Lcom/allinone/callerid/start/CommonSetting;->c0()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/start/CommonSetting;->X(Lcom/allinone/callerid/start/CommonSetting;Ljava/util/List;)Ljava/util/List;

    return-void
.end method
