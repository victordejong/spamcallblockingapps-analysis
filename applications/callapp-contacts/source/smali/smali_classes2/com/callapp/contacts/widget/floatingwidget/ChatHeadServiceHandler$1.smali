.class Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->a(Lcom/callapp/contacts/model/contact/ContactData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/load/a;Z)Z
    .locals 0

    .line 188
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;

    invoke-static {p1}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->a(Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    const p2, 0x7f080332

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    const/4 p1, 0x0

    return p1
.end method
