.class Lcom/allinone/callerid/g/c$c;
.super Ljava/lang/Object;
.source "EZCallPhoneFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/c;->V1(Z)V
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
    iput-object p1, p0, Lcom/allinone/callerid/g/c$c;->d:Lcom/allinone/callerid/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/c$c;->d:Lcom/allinone/callerid/g/c;

    invoke-static {v0}, Lcom/allinone/callerid/g/c;->i2(Lcom/allinone/callerid/g/c;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/c$c;->d:Lcom/allinone/callerid/g/c;

    invoke-static {v0}, Lcom/allinone/callerid/g/c;->j2(Lcom/allinone/callerid/g/c;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/g/c;->k2(Lcom/allinone/callerid/g/c;Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/g/c$c;->d:Lcom/allinone/callerid/g/c;

    invoke-static {v0}, Lcom/allinone/callerid/g/c;->l2(Lcom/allinone/callerid/g/c;)V

    return-void
.end method
