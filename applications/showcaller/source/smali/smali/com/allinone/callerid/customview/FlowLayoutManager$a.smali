.class public Lcom/allinone/callerid/customview/FlowLayoutManager$a;
.super Ljava/lang/Object;
.source "FlowLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/customview/FlowLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Landroid/view/View;


# direct methods
.method public constructor <init>(ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/allinone/callerid/customview/FlowLayoutManager$a;->a:I

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/customview/FlowLayoutManager$a;->b:Landroid/view/View;

    return-void
.end method
