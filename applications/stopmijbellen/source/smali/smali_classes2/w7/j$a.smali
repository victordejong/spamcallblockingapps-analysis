.class public Lw7/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw7/j;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm7/d<",
        "Ln7/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw7/j;


# direct methods
.method public constructor <init>(Lw7/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw7/j$a;->a:Lw7/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Ln7/h;

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lw7/j$a;->a:Lw7/j;

    iget-object p2, p2, Lw7/j;->c:Lm7/g;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2, p1, v0, v0}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lw7/j$a;->a:Lw7/j;

    iput-object p2, p1, Lw7/j;->a:Ln7/h;

    .line 5
    iget-object p1, p1, Lw7/j;->b:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
