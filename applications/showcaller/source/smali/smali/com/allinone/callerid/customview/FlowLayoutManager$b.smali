.class public Lcom/allinone/callerid/customview/FlowLayoutManager$b;
.super Ljava/lang/Object;
.source "FlowLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/customview/FlowLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/customview/FlowLayoutManager$a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/allinone/callerid/customview/FlowLayoutManager;


# direct methods
.method public constructor <init>(Lcom/allinone/callerid/customview/FlowLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/FlowLayoutManager$b;->d:Lcom/allinone/callerid/customview/FlowLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/customview/FlowLayoutManager$b;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/customview/FlowLayoutManager$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/FlowLayoutManager$b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/allinone/callerid/customview/FlowLayoutManager$b;->a:F

    .line 2
    iput v0, p0, Lcom/allinone/callerid/customview/FlowLayoutManager$b;->b:F

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/customview/FlowLayoutManager$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public c(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/FlowLayoutManager$b;->a:F

    return-void
.end method

.method public d(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/FlowLayoutManager$b;->b:F

    return-void
.end method
