.class public Lcom/cocosw/bottomsheet/j$a;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cocosw/bottomsheet/j;-><init>(Landroid/content/Context;Landroid/widget/BaseAdapter;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cocosw/bottomsheet/j;


# direct methods
.method public constructor <init>(Lcom/cocosw/bottomsheet/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cocosw/bottomsheet/j$a;->a:Lcom/cocosw/bottomsheet/j;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cocosw/bottomsheet/j$a;->a:Lcom/cocosw/bottomsheet/j;

    .line 2
    iget-object v1, v0, Lcom/cocosw/bottomsheet/j;->d:Landroid/widget/ListAdapter;

    .line 3
    invoke-interface {v1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/cocosw/bottomsheet/j;->a:Z

    .line 5
    iget-object v0, p0, Lcom/cocosw/bottomsheet/j$a;->a:Lcom/cocosw/bottomsheet/j;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cocosw/bottomsheet/j$a;->a:Lcom/cocosw/bottomsheet/j;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/cocosw/bottomsheet/j;->a:Z

    .line 3
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
