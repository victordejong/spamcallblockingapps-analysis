.class Lcom/callapp/contacts/popup/WhatsNewAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/WhatsNewAdapter;->a(Landroid/view/View;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;

.field final synthetic b:Lcom/callapp/contacts/popup/WhatsNewAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/WhatsNewAdapter;Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$2;->b:Lcom/callapp/contacts/popup/WhatsNewAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$2;->a:Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 152
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 153
    iget-object p1, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$2;->b:Lcom/callapp/contacts/popup/WhatsNewAdapter;

    iget-object v0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$2;->a:Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;

    invoke-static {p1, v0}, Lcom/callapp/contacts/popup/WhatsNewAdapter;->a(Lcom/callapp/contacts/popup/WhatsNewAdapter;Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;)V

    return-void
.end method
