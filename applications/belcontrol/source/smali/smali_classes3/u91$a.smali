.class public Lu91$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu91;->h(Lv91;Lr61$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv91;

.field public final synthetic b:Lr61$b;

.field public final synthetic c:Lu91;


# direct methods
.method public constructor <init>(Lu91;Lv91;Lr61$b;)V
    .locals 0

    iput-object p1, p0, Lu91$a;->c:Lu91;

    iput-object p2, p0, Lu91$a;->a:Lv91;

    iput-object p3, p0, Lu91$a;->b:Lr61$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lu91$a;->a:Lv91;

    invoke-virtual {v0}, Lv91;->f()Lv91$a;

    move-result-object v0

    sget-object v1, Lv91$a;->c:Lv91$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lu91$a;->a:Lv91;

    check-cast v0, Lr91;

    new-instance v1, Lr61;

    invoke-virtual {v0}, Lr91;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lr91;->p()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lu91$a;->b:Lr61$b;

    invoke-direct {v1, v2, v0, v3}, Lr61;-><init>(Ljava/lang/String;Ljava/lang/String;Lr61$b;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lr61;

    iget-object v0, p0, Lu91$a;->a:Lv91;

    invoke-virtual {v0}, Lv91;->f()Lv91$a;

    move-result-object v0

    invoke-virtual {v0}, Lv91$a;->b()I

    move-result v0

    iget-object v2, p0, Lu91$a;->a:Lv91;

    invoke-virtual {v2}, Lv91;->e()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lu91$a;->a:Lv91;

    invoke-virtual {v3}, Lv91;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lu91$a;->b:Lr61$b;

    invoke-direct {v1, v0, v2, v3, v4}, Lr61;-><init>(I[Ljava/lang/String;Ljava/lang/String;Lr61$b;)V

    :goto_0
    :try_start_0
    invoke-static {v1}, Lk61;->b(Lr61;)Lr61;

    new-instance v0, Lu91$a$a;

    invoke-direct {v0, p0, v1}, Lu91$a$a;-><init>(Lu91$a;Lr61;)V
    :try_end_0
    .catch Lk61$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lu91$a$b;

    invoke-direct {v1, p0, v0}, Lu91$a$b;-><init>(Lu91$a;Lk61$a;)V

    move-object v0, v1

    :goto_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
