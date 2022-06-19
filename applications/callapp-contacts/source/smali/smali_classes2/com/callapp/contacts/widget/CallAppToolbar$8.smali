.class Lcom/callapp/contacts/widget/CallAppToolbar$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/glide/GlideUtils$AnimationEndsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/CallAppToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/callapp/contacts/widget/CallAppToolbar;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/CallAppToolbar;Landroid/widget/ImageView;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar$8;->b:Lcom/callapp/contacts/widget/CallAppToolbar;

    iput-object p2, p0, Lcom/callapp/contacts/widget/CallAppToolbar$8;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/callapp/contacts/widget/CallAppToolbar$8;->a:Landroid/widget/ImageView;

    const v1, 0x7f080469

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
