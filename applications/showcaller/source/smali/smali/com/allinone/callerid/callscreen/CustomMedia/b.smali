.class public final synthetic Lcom/allinone/callerid/callscreen/CustomMedia/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;

.field public final synthetic e:I

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/b;->d:Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;

    iput p2, p0, Lcom/allinone/callerid/callscreen/CustomMedia/b;->e:I

    iput-boolean p3, p0, Lcom/allinone/callerid/callscreen/CustomMedia/b;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/b;->d:Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;

    iget v1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/b;->e:I

    iget-boolean v2, p0, Lcom/allinone/callerid/callscreen/CustomMedia/b;->f:Z

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->b(IZ)V

    return-void
.end method
