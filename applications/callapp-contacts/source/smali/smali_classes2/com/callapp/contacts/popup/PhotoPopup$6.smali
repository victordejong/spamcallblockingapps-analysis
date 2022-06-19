.class Lcom/callapp/contacts/popup/PhotoPopup$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/PhotoPopup;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/PhotoPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/PhotoPopup;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/callapp/contacts/popup/PhotoPopup$6;->a:Lcom/callapp/contacts/popup/PhotoPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 191
    iget-object p1, p0, Lcom/callapp/contacts/popup/PhotoPopup$6;->a:Lcom/callapp/contacts/popup/PhotoPopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/PhotoPopup;->dismiss()V

    const/4 p1, 0x1

    return p1
.end method
