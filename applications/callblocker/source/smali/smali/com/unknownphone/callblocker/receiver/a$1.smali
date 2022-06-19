.class Lcom/unknownphone/callblocker/receiver/a$1;
.super Ljava/lang/Object;
.source "PhoneStateListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/receiver/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/WindowManager$LayoutParams;

.field final synthetic b:Landroid/view/WindowManager;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/unknownphone/callblocker/receiver/a;

.field private e:F

.field private f:F

.field private g:I

.field private h:I


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/receiver/a;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/unknownphone/callblocker/receiver/a$1;->d:Lcom/unknownphone/callblocker/receiver/a;

    iput-object p2, p0, Lcom/unknownphone/callblocker/receiver/a$1;->a:Landroid/view/WindowManager$LayoutParams;

    iput-object p3, p0, Lcom/unknownphone/callblocker/receiver/a$1;->b:Landroid/view/WindowManager;

    iput-object p4, p0, Lcom/unknownphone/callblocker/receiver/a$1;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 279
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 267
    :pswitch_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/receiver/a$1;->a:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/unknownphone/callblocker/receiver/a$1;->g:I

    .line 268
    iget-object v0, p0, Lcom/unknownphone/callblocker/receiver/a$1;->a:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/unknownphone/callblocker/receiver/a$1;->h:I

    .line 269
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/unknownphone/callblocker/receiver/a$1;->e:F

    .line 270
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/unknownphone/callblocker/receiver/a$1;->f:F

    goto :goto_0

    .line 273
    :pswitch_2
    iget-object v0, p0, Lcom/unknownphone/callblocker/receiver/a$1;->a:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/unknownphone/callblocker/receiver/a$1;->g:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/unknownphone/callblocker/receiver/a$1;->e:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 274
    iget-object v0, p0, Lcom/unknownphone/callblocker/receiver/a$1;->a:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/unknownphone/callblocker/receiver/a$1;->h:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/unknownphone/callblocker/receiver/a$1;->f:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 275
    iget-object v0, p0, Lcom/unknownphone/callblocker/receiver/a$1;->b:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/unknownphone/callblocker/receiver/a$1;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/unknownphone/callblocker/receiver/a$1;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/unknownphone/callblocker/receiver/a$1;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
