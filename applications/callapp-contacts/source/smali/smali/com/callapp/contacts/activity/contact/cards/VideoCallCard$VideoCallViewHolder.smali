.class Lcom/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoCallViewHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;

.field private final b:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;Landroid/view/View;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallViewHolder;->a:Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a0a9f

    .line 274
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallViewHolder;->b:Landroid/view/TextureView;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallViewHolder;)Landroid/view/TextureView;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallViewHolder;->b:Landroid/view/TextureView;

    return-object p0
.end method
