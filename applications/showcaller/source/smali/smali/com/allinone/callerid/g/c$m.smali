.class Lcom/allinone/callerid/g/c$m;
.super Landroid/content/BroadcastReceiver;
.source "EZCallPhoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "m"
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/c;


# direct methods
.method private constructor <init>(Lcom/allinone/callerid/g/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/c$m;->a:Lcom/allinone/callerid/g/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/allinone/callerid/g/c;Lcom/allinone/callerid/g/c$c;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/allinone/callerid/g/c$m;-><init>(Lcom/allinone/callerid/g/c;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.allinone.callerid.STARRED_DATA"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/allinone/callerid/g/c$m$a;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/g/c$m$a;-><init>(Lcom/allinone/callerid/g/c$m;)V

    invoke-static {p1}, Lcom/allinone/callerid/i/a/r/a;->f(Lcom/allinone/callerid/i/a/r/f;)V

    :cond_0
    return-void
.end method
