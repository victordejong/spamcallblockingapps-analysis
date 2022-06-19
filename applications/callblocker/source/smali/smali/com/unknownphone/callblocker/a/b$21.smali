.class Lcom/unknownphone/callblocker/a/b$21;
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
    .line 269
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/b$21;->b:Lcom/unknownphone/callblocker/a/b;

    iput-object p2, p0, Lcom/unknownphone/callblocker/a/b$21;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/unknownphone/callblocker/custom/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$21;->b:Lcom/unknownphone/callblocker/a/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->h(Lcom/unknownphone/callblocker/a/b;)V

    .line 273
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$21;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 274
    return-void
.end method
