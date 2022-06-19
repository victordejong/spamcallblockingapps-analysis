.class Lcom/unknownphone/callblocker/receiver/a$2;
.super Ljava/lang/Object;
.source "PhoneStateListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/receiver/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/WindowManager;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/unknownphone/callblocker/receiver/a;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/receiver/a;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/unknownphone/callblocker/receiver/a$2;->c:Lcom/unknownphone/callblocker/receiver/a;

    iput-object p2, p0, Lcom/unknownphone/callblocker/receiver/a$2;->a:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/unknownphone/callblocker/receiver/a$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/unknownphone/callblocker/receiver/a$2;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/receiver/a$2;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/unknownphone/callblocker/receiver/a$2;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/unknownphone/callblocker/receiver/a$2;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 298
    :cond_0
    return-void
.end method
