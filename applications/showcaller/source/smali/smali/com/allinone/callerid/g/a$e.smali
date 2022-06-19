.class Lcom/allinone/callerid/g/a$e;
.super Landroid/content/BroadcastReceiver;
.source "CommentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/a$e;->a:Lcom/allinone/callerid/g/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/g/a$e;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->h2(Lcom/allinone/callerid/g/a;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/allinone/callerid/g/a$e$a;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/g/a$e$a;-><init>(Lcom/allinone/callerid/g/a$e;)V

    invoke-static {p1, p2}, Lcom/allinone/callerid/i/a/j/a;->a(Ljava/lang/String;Lcom/allinone/callerid/i/a/j/b;)V

    return-void
.end method
