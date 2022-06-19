.class public final synthetic Lo8/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/g$c;


# instance fields
.field public final synthetic a:Lcom/mglab/scm/visual/c;

.field public final synthetic b:Lm8/d;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/mglab/scm/visual/c;Lm8/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo8/d0;->a:Lcom/mglab/scm/visual/c;

    iput-object p2, p0, Lo8/d0;->b:Lm8/d;

    iput-boolean p3, p0, Lo8/d0;->c:Z

    return-void
.end method


# virtual methods
.method public final g(Le2/g;Le2/b;)V
    .locals 1

    iget-object p1, p0, Lo8/d0;->a:Lcom/mglab/scm/visual/c;

    iget-object p2, p0, Lo8/d0;->b:Lm8/d;

    iget-boolean v0, p0, Lo8/d0;->c:Z

    .line 1
    invoke-virtual {p1, p2, v0}, Lcom/mglab/scm/visual/c;->n(Lm8/d;Z)V

    return-void
.end method
