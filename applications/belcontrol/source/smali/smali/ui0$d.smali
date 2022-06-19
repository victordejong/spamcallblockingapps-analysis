.class public final Lui0$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui0;->E(Landroid/content/Context;Lui0$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lui0$f;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lui0$f;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lui0$d;->a:Lui0$f;

    iput-object p2, p0, Lui0$d;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2

    invoke-static {}, Lki0;->h()Lki0;

    move-result-object v0

    invoke-virtual {v0}, Lki0;->i()Z

    invoke-static {}, Lfj0;->b()Lfj0;

    move-result-object v0

    invoke-virtual {v0}, Lfj0;->c()Z

    invoke-static {}, Lcom/facebook/AccessToken;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/Profile;->c()Lcom/facebook/Profile;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/facebook/Profile;->b()V

    :cond_0
    iget-object v0, p0, Lui0$d;->a:Lui0$f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lui0$f;->a()V

    :cond_1
    invoke-static {}, Lui0;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lui0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lrj0;->f(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lui0$d;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lrj0;->h(Landroid/content/Context;)Lrj0;

    move-result-object v0

    invoke-virtual {v0}, Lrj0;->b()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lui0$d;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
