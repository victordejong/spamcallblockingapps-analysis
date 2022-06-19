.class public Lh7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lh7/a;


# direct methods
.method public constructor <init>(Lh7/a;)V
    .locals 0

    iput-object p1, p0, Lh7/b;->a:Lh7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lh7/b;->a:Lh7/a;

    .line 1
    iget-object v0, v0, Lh7/a;->e:Lh7/d;

    .line 2
    iget-object v1, v0, Lh7/d;->b:Li7/c;

    new-instance v2, Li7/d;

    invoke-direct {v2, v0}, Li7/d;-><init>(Li7/b$b;)V

    invoke-virtual {v1, v2}, Li7/c;->b(Li7/b;)V

    return-void
.end method
