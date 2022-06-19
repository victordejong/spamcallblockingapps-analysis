.class Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$FilterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;
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

    .line 160
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$4;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;IIIZ)V
    .locals 7

    .line 163
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$4;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$KeypadSearchEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$4;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$KeypadSearchEvents;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$KeypadSearchEvents;->onNumberChanged(Ljava/lang/String;IIIZ)V

    :cond_0
    return-void
.end method
