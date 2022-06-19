.class public Lne1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lne1;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lne1;


# direct methods
.method public constructor <init>(Lne1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lne1$a;->b:Lne1;

    iput-object p2, p0, Lne1$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lne1$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lk61;->E(Ljava/lang/String;)V
    :try_end_0
    .catch Lk61$a; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lne1$a;->b:Lne1;

    invoke-static {v0}, Lne1;->a(Lne1;)Lne1$b;

    move-result-object v0

    invoke-interface {v0}, Lne1$b;->a()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const v2, 0x7f11060d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lk61$a;->b()I

    move-result v0

    const/16 v3, 0x193

    if-eq v0, v3, :cond_2

    const/16 v3, 0x194

    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const v0, 0x7f11060f

    goto :goto_0

    :cond_2
    const v0, 0x7f11060e

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v0, p0, Lne1$a;->b:Lne1;

    invoke-static {v0}, Lne1;->a(Lne1;)Lne1$b;

    move-result-object v0

    invoke-interface {v0, v2}, Lne1$b;->onFailure(Ljava/lang/String;)V

    return-void
.end method
