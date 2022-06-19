.class Lcom/telguarder/helpers/ui/BOAdapter$1;
.super Ljava/lang/Object;
.source "BOAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/helpers/ui/BOAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/helpers/ui/BOAdapter;

.field final synthetic val$item:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/telguarder/helpers/ui/BOAdapter;Ljava/lang/Object;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/telguarder/helpers/ui/BOAdapter$1;->this$0:Lcom/telguarder/helpers/ui/BOAdapter;

    iput-object p2, p0, Lcom/telguarder/helpers/ui/BOAdapter$1;->val$item:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/telguarder/helpers/ui/BOAdapter$1;->this$0:Lcom/telguarder/helpers/ui/BOAdapter;

    invoke-static {p1}, Lcom/telguarder/helpers/ui/BOAdapter;->access$000(Lcom/telguarder/helpers/ui/BOAdapter;)Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

    move-result-object p1

    sget-object v0, Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;->SINGLE:Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/telguarder/helpers/ui/BOAdapter$1;->this$0:Lcom/telguarder/helpers/ui/BOAdapter;

    invoke-static {p1}, Lcom/telguarder/helpers/ui/BOAdapter;->access$100(Lcom/telguarder/helpers/ui/BOAdapter;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    :cond_0
    if-eqz p2, :cond_1

    .line 117
    iget-object p1, p0, Lcom/telguarder/helpers/ui/BOAdapter$1;->this$0:Lcom/telguarder/helpers/ui/BOAdapter;

    invoke-static {p1}, Lcom/telguarder/helpers/ui/BOAdapter;->access$100(Lcom/telguarder/helpers/ui/BOAdapter;)Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/helpers/ui/BOAdapter$1;->val$item:Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/telguarder/helpers/ui/BOAdapter$1;->this$0:Lcom/telguarder/helpers/ui/BOAdapter;

    invoke-static {p1}, Lcom/telguarder/helpers/ui/BOAdapter;->access$100(Lcom/telguarder/helpers/ui/BOAdapter;)Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/helpers/ui/BOAdapter$1;->val$item:Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 121
    :goto_0
    iget-object p1, p0, Lcom/telguarder/helpers/ui/BOAdapter$1;->this$0:Lcom/telguarder/helpers/ui/BOAdapter;

    invoke-static {p1}, Lcom/telguarder/helpers/ui/BOAdapter;->access$200(Lcom/telguarder/helpers/ui/BOAdapter;)V

    .line 122
    iget-object p1, p0, Lcom/telguarder/helpers/ui/BOAdapter$1;->this$0:Lcom/telguarder/helpers/ui/BOAdapter;

    invoke-static {p1}, Lcom/telguarder/helpers/ui/BOAdapter;->access$300(Lcom/telguarder/helpers/ui/BOAdapter;)Lcom/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 123
    iget-object p1, p0, Lcom/telguarder/helpers/ui/BOAdapter$1;->this$0:Lcom/telguarder/helpers/ui/BOAdapter;

    invoke-static {p1}, Lcom/telguarder/helpers/ui/BOAdapter;->access$300(Lcom/telguarder/helpers/ui/BOAdapter;)Lcom/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/helpers/ui/BOAdapter$1;->this$0:Lcom/telguarder/helpers/ui/BOAdapter;

    invoke-static {p2}, Lcom/telguarder/helpers/ui/BOAdapter;->access$100(Lcom/telguarder/helpers/ui/BOAdapter;)Ljava/util/Set;

    move-result-object p2

    iget-object v0, p0, Lcom/telguarder/helpers/ui/BOAdapter$1;->this$0:Lcom/telguarder/helpers/ui/BOAdapter;

    invoke-virtual {v0}, Lcom/telguarder/helpers/ui/BOAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener;->onSelectionChanged(Ljava/util/Set;Ljava/util/List;)V

    :cond_2
    return-void
.end method
