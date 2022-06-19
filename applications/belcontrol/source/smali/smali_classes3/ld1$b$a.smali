.class public Lld1$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lld1$b;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lld1$b;


# direct methods
.method public constructor <init>(Lld1$b;)V
    .locals 0

    iput-object p1, p0, Lld1$b$a;->a:Lld1$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lld1$b$a;->a:Lld1$b;

    iget-object v1, v0, Lld1$b;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lld1$b;->b:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
