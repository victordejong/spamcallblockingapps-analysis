.class public final synthetic Lcom/callapp/contacts/widget/floatingwidget/-$$Lambda$ChatHeadServiceHandler$q2W4basluXUUDllb0aBLaiuf69A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadViewAdapter;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/-$$Lambda$ChatHeadServiceHandler$q2W4basluXUUDllb0aBLaiuf69A;->f$0:Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;

    return-void
.end method


# virtual methods
.method public final getChatHeadView(Ljava/lang/Object;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/-$$Lambda$ChatHeadServiceHandler$q2W4basluXUUDllb0aBLaiuf69A;->f$0:Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->lambda$q2W4basluXUUDllb0aBLaiuf69A(Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
