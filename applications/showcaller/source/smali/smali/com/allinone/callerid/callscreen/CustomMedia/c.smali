.class public final synthetic Lcom/allinone/callerid/callscreen/CustomMedia/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/c;->d:Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;

    iput p2, p0, Lcom/allinone/callerid/callscreen/CustomMedia/c;->e:I

    iput p3, p0, Lcom/allinone/callerid/callscreen/CustomMedia/c;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/c;->d:Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;

    iget v1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/c;->e:I

    iget v2, p0, Lcom/allinone/callerid/callscreen/CustomMedia/c;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->d(II)V

    return-void
.end method
