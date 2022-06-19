.class Lcom/callerid/block/mvc/controller/SuggestNameActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/SuggestNameActivity;->Y(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/SuggestNameActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/callerid/block/d/c;->c()Lcom/callerid/block/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callerid/block/d/c;->d(Ljava/lang/String;)V

    return-void
.end method
