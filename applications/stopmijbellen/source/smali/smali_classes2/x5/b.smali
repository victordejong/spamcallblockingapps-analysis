.class public final synthetic Lx5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx5/d;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lx5/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx5/b;->a:Lx5/d;

    iput-boolean p2, p0, Lx5/b;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lx5/b;->a:Lx5/d;

    iget-boolean v1, p0, Lx5/b;->b:Z

    .line 1
    invoke-virtual {v0, v1}, Lx5/d;->b(Z)V

    return-void
.end method
