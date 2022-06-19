.class Lcom/allinone/callerid/d/d/a$d;
.super Ljava/lang/Object;
.source "LatestFragment.java"

# interfaces
.implements Lcom/github/jdsjlzx/recyclerview/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/d/a;->s2(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/d/d/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/d/a$d;->a:Lcom/allinone/callerid/d/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/GridLayoutManager;I)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/d/d/a$d;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/a;->j2(Lcom/allinone/callerid/d/d/a;)Lcom/allinone/callerid/d/a/b;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/d/d/a$d;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/a;->j2(Lcom/allinone/callerid/d/d/a;)Lcom/allinone/callerid/d/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/d/a/e/a;->B()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    :cond_0
    return p2
.end method
