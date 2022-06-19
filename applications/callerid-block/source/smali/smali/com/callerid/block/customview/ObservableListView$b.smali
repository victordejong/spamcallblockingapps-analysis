.class Lcom/callerid/block/customview/ObservableListView$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/customview/ObservableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/callerid/block/customview/ObservableListView;Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V
    .locals 0

    iput-object p2, p0, Lcom/callerid/block/customview/ObservableListView$b;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/callerid/block/customview/ObservableListView$b;->c:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/customview/ObservableListView$b;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/callerid/block/customview/ObservableListView$b;->c:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
