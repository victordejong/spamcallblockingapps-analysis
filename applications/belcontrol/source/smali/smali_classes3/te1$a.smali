.class public Lte1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lte1;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lte1;


# direct methods
.method public constructor <init>(Lte1;)V
    .locals 0

    iput-object p1, p0, Lte1$a;->a:Lte1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lte1$a;->a:Lte1;

    const-string v1, "Shutting down."

    invoke-virtual {v0, v1}, Lte1;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lte1$a;->a:Lte1;

    invoke-static {v0}, Lte1;->e(Lte1;)Lff1;

    move-result-object v0

    invoke-virtual {v0}, Lff1;->e()V

    iget-object v0, p0, Lte1$a;->a:Lte1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lte1;->f(Lte1;Lff1;)Lff1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Luf1;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
