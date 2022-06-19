.class final Lcom/callapp/contacts/util/ViewUtils$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Lcom/callapp/contacts/api/ContextRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/callapp/contacts/api/ContextRunnable;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/callapp/contacts/api/ContextRunnable;)V
    .locals 0

    .line 990
    iput-object p1, p0, Lcom/callapp/contacts/util/ViewUtils$11;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/callapp/contacts/util/ViewUtils$11;->b:Lcom/callapp/contacts/api/ContextRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .line 993
    iget-object v0, p0, Lcom/callapp/contacts/util/ViewUtils$11;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 994
    iget-object v0, p0, Lcom/callapp/contacts/util/ViewUtils$11;->b:Lcom/callapp/contacts/api/ContextRunnable;

    iget-object v1, p0, Lcom/callapp/contacts/util/ViewUtils$11;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/callapp/contacts/api/ContextRunnable;->run(Ljava/lang/Object;)V

    return-void
.end method
