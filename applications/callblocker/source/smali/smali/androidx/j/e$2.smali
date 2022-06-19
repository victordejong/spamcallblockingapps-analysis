.class Landroidx/j/e$2;
.super Ljava/lang/Object;
.source "FragmentTransitionSupport.java"

# interfaces
.implements Landroidx/j/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/e;->b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Landroidx/j/e;


# direct methods
.method constructor <init>(Landroidx/j/e;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Landroidx/j/e$2;->c:Landroidx/j/e;

    iput-object p2, p0, Landroidx/j/e$2;->a:Landroid/view/View;

    iput-object p3, p0, Landroidx/j/e$2;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/j/m;)V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public b(Landroidx/j/m;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-virtual {p1, p0}, Landroidx/j/m;->b(Landroidx/j/m$c;)Landroidx/j/m;

    .line 159
    iget-object v0, p0, Landroidx/j/e$2;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Landroidx/j/e$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 161
    :goto_0
    if-ge v1, v3, :cond_0

    .line 162
    iget-object v0, p0, Landroidx/j/e$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 161
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method public c(Landroidx/j/m;)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public d(Landroidx/j/m;)V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public e(Landroidx/j/m;)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method
