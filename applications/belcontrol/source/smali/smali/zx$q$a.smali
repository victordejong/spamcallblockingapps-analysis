.class public Lzx$q$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzx$q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lzx$q;


# direct methods
.method public constructor <init>(Lzx$q;)V
    .locals 0

    iput-object p1, p0, Lzx$q$a;->a:Lzx$q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lzx$q$a;->a:Lzx$q;

    iget-object v0, v0, Lzx$q;->b:Lzx;

    iget-object v1, v0, Lzx;->L:Ldz$i;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lzx;->L:Ldz$i;

    iget-boolean v1, v0, Lzx;->b0:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lzx;->c0:Z

    invoke-virtual {v0, v1}, Lzx;->A(Z)V

    :cond_0
    return-void
.end method
