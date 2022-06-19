.class Lcom/unknownphone/callblocker/a/b$20;
.super Lcom/unknownphone/callblocker/custom/d;
.source "BlockedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/a/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/unknownphone/callblocker/a/b;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/b;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/b$20;->b:Lcom/unknownphone/callblocker/a/b;

    iput-object p2, p0, Lcom/unknownphone/callblocker/a/b$20;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/unknownphone/callblocker/custom/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$20;->b:Lcom/unknownphone/callblocker/a/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->g(Lcom/unknownphone/callblocker/a/b;)Lcom/unknownphone/callblocker/f/a;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/a/a/b/b;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/unknownphone/callblocker/a/b$20;->b:Lcom/unknownphone/callblocker/a/b;

    invoke-static {v1}, Lcom/unknownphone/callblocker/a/b;->g(Lcom/unknownphone/callblocker/a/b;)Lcom/unknownphone/callblocker/f/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/unknownphone/callblocker/f/a;->b(Landroidx/fragment/app/Fragment;)V

    .line 266
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$20;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 267
    return-void
.end method
