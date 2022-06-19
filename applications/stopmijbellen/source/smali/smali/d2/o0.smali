.class public Ld2/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ld2/t0;

.field public final synthetic c:Ld2/k0;


# direct methods
.method public constructor <init>(Ld2/k0;Ljava/lang/String;Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/o0;->c:Ld2/k0;

    iput-object p2, p0, Ld2/o0;->a:Ljava/lang/String;

    iput-object p3, p0, Ld2/o0;->b:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    .line 2
    instance-of v1, v0, Ld2/w;

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Ld2/o0;->c:Ld2/k0;

    .line 4
    new-instance v2, Ld2/f4;

    invoke-direct {v2}, Ld2/f4;-><init>()V

    const-string v3, "Controller was reloaded and current ad was closed"

    .line 5
    invoke-virtual {v1, v0, v2, v3}, Ld2/k0;->a(Landroid/content/Context;Ld2/f4;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Ld2/o0;->c:Ld2/k0;

    .line 7
    iget-object v0, v0, Ld2/k0;->b:Ljava/util/HashMap;

    .line 8
    iget-object v1, p0, Ld2/o0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/j0;

    if-eqz v0, :cond_0

    .line 9
    iget-object v1, p0, Ld2/o0;->c:Ld2/k0;

    invoke-virtual {v1, v0}, Ld2/k0;->d(Ld2/j0;)V

    .line 10
    :cond_0
    iget-object v0, p0, Ld2/o0;->b:Ld2/t0;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Ld2/t0;->b()V

    :cond_1
    return-void
.end method
