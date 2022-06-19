.class Lcom/allinone/callerid/g/e$c;
.super Ljava/lang/Object;
.source "EZSearchFragment.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/g/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/e;->b3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/e;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/e$c;->a:Lcom/allinone/callerid/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/e$c;->a:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->V2(Lcom/allinone/callerid/g/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
