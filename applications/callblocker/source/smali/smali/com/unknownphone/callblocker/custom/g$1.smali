.class final Lcom/unknownphone/callblocker/custom/g$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/custom/g;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/unknownphone/callblocker/custom/g$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/unknownphone/callblocker/custom/g$1;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/app/Activity;)V

    .line 283
    const/4 v0, 0x0

    return v0
.end method
