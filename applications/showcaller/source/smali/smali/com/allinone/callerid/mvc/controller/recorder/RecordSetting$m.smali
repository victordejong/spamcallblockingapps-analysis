.class Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$m;
.super Ljava/util/TimerTask;
.source "RecordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->w0()V
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
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$m;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$m;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->g0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V

    return-void
.end method
