.class public Lu91$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu91$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk61$a;

.field public final synthetic b:Lu91$a;


# direct methods
.method public constructor <init>(Lu91$a;Lk61$a;)V
    .locals 0

    iput-object p1, p0, Lu91$a$b;->b:Lu91$a;

    iput-object p2, p0, Lu91$a$b;->a:Lk61$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-object v0, Lr61$b;->d:Lr61$b;

    iget-object v1, p0, Lu91$a$b;->b:Lu91$a;

    iget-object v2, v1, Lu91$a;->b:Lr61$b;

    if-eq v0, v2, :cond_0

    iget-object v0, v1, Lu91$a;->a:Lv91;

    invoke-virtual {v0}, Lv91;->m()V

    :cond_0
    iget-object v0, p0, Lu91$a$b;->b:Lu91$a;

    iget-object v0, v0, Lu91$a;->c:Lu91;

    invoke-static {v0}, Lu91;->e(Lu91;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu91$a$b;->b:Lu91$a;

    iget-object v0, v0, Lu91$a;->c:Lu91;

    invoke-static {v0}, Lu91;->e(Lu91;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lu91$a$b;->b:Lu91$a;

    iget-object v0, v0, Lu91$a;->c:Lu91;

    invoke-static {v0}, Lu91;->e(Lu91;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lbc1;->a()V

    :cond_1
    iget-object v0, p0, Lu91$a$b;->b:Lu91$a;

    iget-object v1, v0, Lu91$a;->c:Lu91;

    iget-object v0, v0, Lu91$a;->b:Lr61$b;

    iget-object v2, p0, Lu91$a$b;->a:Lk61$a;

    invoke-virtual {v2}, Lk61$a;->b()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lu91$a$b;->b:Lu91$a;

    iget-object v4, v4, Lu91$a;->a:Lv91;

    invoke-virtual {v1, v0, v2, v3, v4}, Lu91;->k(Lr61$b;ILr61$c;Lv91;)V

    return-void
.end method
