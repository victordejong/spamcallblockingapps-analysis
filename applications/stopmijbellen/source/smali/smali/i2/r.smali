.class public final synthetic Li2/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ls2/b;


# direct methods
.method public synthetic constructor <init>(Ls2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2/r;->a:Ls2/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Li2/r;->a:Ls2/b;

    sget-object v1, Li2/n;->m:Li2/c;

    iget-object v0, v0, Ls2/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/android/billingclient/api/a;

    sget-object v1, Lf8/a;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Lcom/android/billingclient/api/a;->b()V

    .line 3
    invoke-static {}, Lf8/a;->g()V

    return-void
.end method
