.class final Landroidx/transition/e$3;
.super Landroidx/transition/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
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

.field final synthetic g:Landroidx/transition/e;


# direct methods
.method constructor <init>(Landroidx/transition/e;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .line 232
    iput-object p1, p0, Landroidx/transition/e$3;->g:Landroidx/transition/e;

    iput-object p2, p0, Landroidx/transition/e$3;->a:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/transition/e$3;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Landroidx/transition/e$3;->c:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/transition/e$3;->d:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/transition/e$3;->e:Ljava/lang/Object;

    iput-object p7, p0, Landroidx/transition/e$3;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroidx/transition/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/transition/Transition;)V
    .locals 0

    .line 248
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->b(Landroidx/transition/Transition$c;)Landroidx/transition/Transition;

    return-void
.end method

.method public final b(Landroidx/transition/Transition;)V
    .locals 3

    .line 235
    iget-object p1, p0, Landroidx/transition/e$3;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 236
    iget-object v1, p0, Landroidx/transition/e$3;->g:Landroidx/transition/e;

    iget-object v2, p0, Landroidx/transition/e$3;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Landroidx/transition/e;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 238
    :cond_0
    iget-object p1, p0, Landroidx/transition/e$3;->c:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 239
    iget-object v1, p0, Landroidx/transition/e$3;->g:Landroidx/transition/e;

    iget-object v2, p0, Landroidx/transition/e$3;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Landroidx/transition/e;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 241
    :cond_1
    iget-object p1, p0, Landroidx/transition/e$3;->e:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 242
    iget-object v1, p0, Landroidx/transition/e$3;->g:Landroidx/transition/e;

    iget-object v2, p0, Landroidx/transition/e$3;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Landroidx/transition/e;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
