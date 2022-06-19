.class Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/popup/WhatsNewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WhatsNewHolder"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/ImageView;

.field f:Lcom/callapp/contacts/widget/RetractableFrameLayout;

.field g:Lcom/callapp/contacts/widget/CustomLinkMovementMethod;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Lcom/callapp/contacts/widget/CustomLinkMovementMethod;

    invoke-direct {v0}, Lcom/callapp/contacts/widget/CustomLinkMovementMethod;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->g:Lcom/callapp/contacts/widget/CustomLinkMovementMethod;

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/popup/WhatsNewAdapter$1;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object p1, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->g:Lcom/callapp/contacts/widget/CustomLinkMovementMethod;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 216
    iget-object v0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object p1, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->g:Lcom/callapp/contacts/widget/CustomLinkMovementMethod;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
