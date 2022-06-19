.class Lcom/callerid/block/sms/MessageBoxListActivity$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/mvc/model/sms/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/sms/MessageBoxListActivity;->X0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/sms/MessageBoxListActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$f;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$f;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0, p1}, Lcom/callerid/block/sms/MessageBoxListActivity;->f0(Lcom/callerid/block/sms/MessageBoxListActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
