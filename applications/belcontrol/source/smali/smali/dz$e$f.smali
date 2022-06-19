.class public final Ldz$e$f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldz$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final a:Lmz;

.field public final synthetic b:Ldz$e;


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Ldz$e$f;->a:Lmz;

    iget-object v1, p0, Ldz$e$f;->b:Ldz$e;

    iget-object v1, v1, Ldz$e;->i:Lmz$a;

    invoke-virtual {v0, v1}, Lmz;->a(Lmz$a;)V

    return-void
.end method
