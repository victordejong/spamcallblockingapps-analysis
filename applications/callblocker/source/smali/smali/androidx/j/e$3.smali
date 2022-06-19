.class Landroidx/j/e$3;
.super Landroidx/j/n;
.source "FragmentTransitionSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Landroidx/j/e;


# direct methods
.method constructor <init>(Landroidx/j/e;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Landroidx/j/e$3;->g:Landroidx/j/e;

    iput-object p2, p0, Landroidx/j/e$3;->a:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/j/e$3;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Landroidx/j/e$3;->c:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/j/e$3;->d:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/j/e$3;->e:Ljava/lang/Object;

    iput-object p7, p0, Landroidx/j/e$3;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroidx/j/n;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/j/m;)V
    .locals 0

    .prologue
    .line 238
    invoke-virtual {p1, p0}, Landroidx/j/m;->b(Landroidx/j/m$c;)Landroidx/j/m;

    .line 239
    return-void
.end method

.method public e(Landroidx/j/m;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 225
    iget-object v0, p0, Landroidx/j/e$3;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Landroidx/j/e$3;->g:Landroidx/j/e;

    iget-object v1, p0, Landroidx/j/e$3;->a:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/j/e$3;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/j/e;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 228
    :cond_0
    iget-object v0, p0, Landroidx/j/e$3;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Landroidx/j/e$3;->g:Landroidx/j/e;

    iget-object v1, p0, Landroidx/j/e$3;->c:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/j/e$3;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/j/e;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 231
    :cond_1
    iget-object v0, p0, Landroidx/j/e$3;->e:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Landroidx/j/e$3;->g:Landroidx/j/e;

    iget-object v1, p0, Landroidx/j/e$3;->e:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/j/e$3;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/j/e;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 234
    :cond_2
    return-void
.end method
