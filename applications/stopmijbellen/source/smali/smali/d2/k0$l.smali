.class public Ld2/k0$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/k0;->b(Ld2/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/k;


# direct methods
.method public constructor <init>(Ld2/k0;Ld2/k;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ld2/k0$l;->a:Ld2/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld2/k0$l;->a:Ld2/k;

    .line 2
    iget-object v1, v0, Ld2/k;->a:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Ld2/b;->a(Ljava/lang/String;)Ld2/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld2/k;->f(Ld2/s;)V

    .line 4
    invoke-static {}, Ld2/t;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "RequestNotFilled called for AdView due to a missing context. "

    .line 5
    invoke-static {v1, v1, v2, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_0
    return-void
.end method
