.class Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a$a;
.super Ljava/lang/Object;
.source "RecordSetting.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "permissions_request"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a$a$a;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a$a;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/j1/a;->n(Landroid/app/Activity;Lcom/allinone/callerid/util/j1/a$g;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a$a$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a$a$b;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a$a;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/recorder/f;->t(Landroid/app/Activity;Lcom/allinone/callerid/i/a/c;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->e0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
