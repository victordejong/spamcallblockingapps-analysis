.class public final synthetic Lcom/allinone/callerid/callscreen/CustomMedia/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/f;->d:Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;

    iput-object p2, p0, Lcom/allinone/callerid/callscreen/CustomMedia/f;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/f;->d:Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/f;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->e(Landroid/content/Context;)V

    return-void
.end method
