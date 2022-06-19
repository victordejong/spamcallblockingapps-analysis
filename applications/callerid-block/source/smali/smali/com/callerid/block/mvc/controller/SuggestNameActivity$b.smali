.class Lcom/callerid/block/mvc/controller/SuggestNameActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/SuggestNameActivity;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/mvc/controller/SuggestNameActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/SuggestNameActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity$b;->b:Lcom/callerid/block/mvc/controller/SuggestNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity$b;->b:Lcom/callerid/block/mvc/controller/SuggestNameActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->R(Lcom/callerid/block/mvc/controller/SuggestNameActivity;)Lcom/rey/material/widget/RadioButton;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method
