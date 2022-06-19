.class public final synthetic Lm8/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm7/d;


# instance fields
.field public final synthetic a:Lm8/d;

.field public final synthetic b:Lm8/d;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lm8/d;Lm8/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm8/b;->a:Lm8/d;

    iput-object p2, p0, Lm8/b;->b:Lm8/d;

    iput-boolean p3, p0, Lm8/b;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 3

    iget-object p1, p0, Lm8/b;->a:Lm8/d;

    iget-object v0, p0, Lm8/b;->b:Lm8/d;

    iget-boolean v1, p0, Lm8/b;->c:Z

    check-cast p2, Ls6/k;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ls6/i;->toString()Ljava/lang/String;

    .line 2
    sget-object p2, Lcom/mglab/scm/visual/FragmentSocial;->b:Lm8/i;

    invoke-virtual {p2}, Lm8/i;->g()V

    .line 3
    sget-object p2, Lcom/mglab/scm/visual/FragmentSocial;->b:Lm8/i;

    .line 4
    iget-object p2, p2, Lm8/i;->q:Ljava/util/ArrayList;

    invoke-virtual {p2, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5
    sget-object p2, Lcom/mglab/scm/visual/FragmentSocial;->b:Lm8/i;

    invoke-virtual {p2}, Lm8/i;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 6
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v2, v2, v1}, Lm8/d;->i(IZZ)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1, v2, v2, v1}, Lm8/d;->i(IZZ)V

    :goto_0
    return-void
.end method
