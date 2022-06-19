.class public Lu91$a$a;
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
.field public final synthetic a:Lr61;

.field public final synthetic b:Lu91$a;


# direct methods
.method public constructor <init>(Lu91$a;Lr61;)V
    .locals 0

    iput-object p1, p0, Lu91$a$a;->b:Lu91$a;

    iput-object p2, p0, Lu91$a$a;->a:Lr61;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lu91$a$a;->b:Lu91$a;

    iget-object v0, v0, Lu91$a;->c:Lu91;

    invoke-static {v0}, Lu91;->e(Lu91;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu91$a$a;->b:Lu91$a;

    iget-object v0, v0, Lu91$a;->c:Lu91;

    invoke-static {v0}, Lu91;->e(Lu91;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lu91$a$a;->b:Lu91$a;

    iget-object v0, v0, Lu91$a;->c:Lu91;

    invoke-static {v0}, Lu91;->e(Lu91;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lbc1;->a()V

    :cond_0
    iget-object v0, p0, Lu91$a$a;->b:Lu91$a;

    iget-object v1, v0, Lu91$a;->c:Lu91;

    iget-object v2, p0, Lu91$a$a;->a:Lr61;

    iget-object v2, v2, Lr61;->b:Lr61$c;

    iget-object v3, v0, Lu91$a;->b:Lr61$b;

    iget-object v0, v0, Lu91$a;->a:Lv91;

    invoke-virtual {v1, v2, v3, v0}, Lu91;->l(Lr61$c;Lr61$b;Lv91;)V

    return-void
.end method
