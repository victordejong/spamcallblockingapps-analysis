.class public final synthetic Lcom/allinone/callerid/callscreen/CustomMedia/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo$b;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo$b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/g;->d:Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo$b;

    iput p2, p0, Lcom/allinone/callerid/callscreen/CustomMedia/g;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/g;->d:Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo$b;

    iget v1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/g;->e:I

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo$b;->b(I)V

    return-void
.end method
