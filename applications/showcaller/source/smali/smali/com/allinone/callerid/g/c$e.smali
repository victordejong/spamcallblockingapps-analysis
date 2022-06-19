.class Lcom/allinone/callerid/g/c$e;
.super Ljava/lang/Object;
.source "EZCallPhoneFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/c;->O2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/g/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/c$e;->d:Lcom/allinone/callerid/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/c$e;->d:Lcom/allinone/callerid/g/c;

    invoke-static {v0}, Lcom/allinone/callerid/g/c;->C2(Lcom/allinone/callerid/g/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/g/c$e;->d:Lcom/allinone/callerid/g/c;

    invoke-static {v1}, Lcom/allinone/callerid/g/c;->A2(Lcom/allinone/callerid/g/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
