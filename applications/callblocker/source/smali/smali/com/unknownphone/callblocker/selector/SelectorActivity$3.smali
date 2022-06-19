.class Lcom/unknownphone/callblocker/selector/SelectorActivity$3;
.super Ljava/lang/Object;
.source "SelectorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/selector/SelectorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/content/SharedPreferences;

.field final synthetic c:Lcom/unknownphone/callblocker/selector/SelectorActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/selector/SelectorActivity;Ljava/util/List;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/unknownphone/callblocker/selector/SelectorActivity$3;->c:Lcom/unknownphone/callblocker/selector/SelectorActivity;

    iput-object p2, p0, Lcom/unknownphone/callblocker/selector/SelectorActivity$3;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/unknownphone/callblocker/selector/SelectorActivity$3;->b:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 101
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/selector/SelectorActivity$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/selector/SelectorActivity$3;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "language_code"

    iget-object v0, p0, Lcom/unknownphone/callblocker/selector/SelectorActivity$3;->a:Ljava/util/List;

    .line 103
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 102
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    iget-object v0, p0, Lcom/unknownphone/callblocker/selector/SelectorActivity$3;->c:Lcom/unknownphone/callblocker/selector/SelectorActivity;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/selector/SelectorActivity;->finish()V

    goto :goto_0
.end method
