.class Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$d;
.super Ljava/lang/Object;
.source "RecordSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$d;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$d;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->i0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->f()V

    return-void
.end method
