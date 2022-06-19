.class public final synthetic Lj4/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lj4/h1;

.field public final synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lj4/h1;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj4/g1;->a:Lj4/h1;

    iput-object p2, p0, Lj4/g1;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lj4/g1;->a:Lj4/h1;

    iget-object v1, p0, Lj4/g1;->b:Landroid/content/Intent;

    .line 1
    iget-object v2, v0, Lj4/h1;->b:Lj4/t;

    iget-object v0, v0, Lj4/h1;->c:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Lj4/t;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
