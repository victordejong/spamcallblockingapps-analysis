.class Lcom/allinone/callerid/customview/ExpandableTextView$c;
.super Ljava/lang/Object;
.source "ExpandableTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/customview/ExpandableTextView;->onMeasure(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/customview/ExpandableTextView;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/customview/ExpandableTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/ExpandableTextView$c;->d:Lcom/allinone/callerid/customview/ExpandableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView$c;->d:Lcom/allinone/callerid/customview/ExpandableTextView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/allinone/callerid/customview/ExpandableTextView$c;->d:Lcom/allinone/callerid/customview/ExpandableTextView;

    iget-object v2, v2, Lcom/allinone/callerid/customview/ExpandableTextView;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/allinone/callerid/customview/ExpandableTextView;->b(Lcom/allinone/callerid/customview/ExpandableTextView;I)I

    return-void
.end method
