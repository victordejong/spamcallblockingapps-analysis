.class public Lcom/facebook/share/widget/ShareButtonBase$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/ShareButtonBase;->getShareOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/share/widget/ShareButtonBase;


# direct methods
.method public constructor <init>(Lcom/facebook/share/widget/ShareButtonBase;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/share/widget/ShareButtonBase$a;->a:Lcom/facebook/share/widget/ShareButtonBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/share/widget/ShareButtonBase$a;->a:Lcom/facebook/share/widget/ShareButtonBase;

    invoke-static {v0, p1}, Lcom/facebook/share/widget/ShareButtonBase;->n(Lcom/facebook/share/widget/ShareButtonBase;Landroid/view/View;)V

    iget-object p1, p0, Lcom/facebook/share/widget/ShareButtonBase$a;->a:Lcom/facebook/share/widget/ShareButtonBase;

    invoke-virtual {p1}, Lcom/facebook/share/widget/ShareButtonBase;->getDialog()Lfm0;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/share/widget/ShareButtonBase$a;->a:Lcom/facebook/share/widget/ShareButtonBase;

    invoke-virtual {v0}, Lcom/facebook/share/widget/ShareButtonBase;->getShareContent()Lcom/facebook/share/model/ShareContent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfm0;->i(Ljava/lang/Object;)V

    return-void
.end method
