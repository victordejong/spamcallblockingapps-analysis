.class Lcom/unknownphone/callblocker/a/b$22;
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
.field final synthetic a:Z

.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Lcom/unknownphone/callblocker/a/b;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/b;ZLandroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/b$22;->c:Lcom/unknownphone/callblocker/a/b;

    iput-boolean p2, p0, Lcom/unknownphone/callblocker/a/b$22;->a:Z

    iput-object p3, p0, Lcom/unknownphone/callblocker/a/b$22;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/unknownphone/callblocker/custom/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/unknownphone/callblocker/a/b$22;->a:Z

    if-eqz v0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$22;->c:Lcom/unknownphone/callblocker/a/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->i(Lcom/unknownphone/callblocker/a/b;)V

    .line 281
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$22;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    goto :goto_0
.end method
