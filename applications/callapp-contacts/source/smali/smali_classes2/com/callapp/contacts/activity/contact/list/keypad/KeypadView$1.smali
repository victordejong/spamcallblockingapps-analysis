.class Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->h:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
