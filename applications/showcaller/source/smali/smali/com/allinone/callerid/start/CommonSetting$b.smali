.class Lcom/allinone/callerid/start/CommonSetting$b;
.super Ljava/lang/Object;
.source "CommonSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/CommonSetting;->e0()V
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
    iput-object p1, p0, Lcom/allinone/callerid/start/CommonSetting$b;->d:Lcom/allinone/callerid/start/CommonSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/start/CommonSetting$b;->d:Lcom/allinone/callerid/start/CommonSetting;

    invoke-virtual {p1}, Lcom/allinone/callerid/start/CommonSetting;->h0()V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "defaults_cc_click"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    return-void
.end method
