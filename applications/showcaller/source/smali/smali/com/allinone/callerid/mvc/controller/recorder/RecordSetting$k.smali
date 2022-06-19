.class Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k;
.super Ljava/lang/Object;
.source "RecordSetting.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/recorder/f;->s(Landroid/app/Activity;Lcom/allinone/callerid/i/a/c;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
