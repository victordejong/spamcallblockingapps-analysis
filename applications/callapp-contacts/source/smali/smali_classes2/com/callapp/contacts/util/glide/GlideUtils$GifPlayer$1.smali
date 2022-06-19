.class Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer$1;
.super Landroidx/l/a/a/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

.field private b:I


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer$1;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    invoke-direct {p0}, Landroidx/l/a/a/b$a;-><init>()V

    .line 217
    invoke-static {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer$1;->b:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 221
    invoke-super {p0, p1}, Landroidx/l/a/a/b$a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer$1;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer$1;->b:I

    if-lez p1, :cond_0

    .line 225
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer$1$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer$1$1;-><init>(Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer$1;)V

    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer$1;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    .line 230
    invoke-static {v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->c(Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;)I

    move-result v1

    int-to-long v1, v1

    .line 225
    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    return-void

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer$1;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    invoke-static {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->d(Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;)Lcom/callapp/contacts/util/glide/GlideUtils$AnimationEndsListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 235
    iget-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer$1;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    invoke-static {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->d(Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;)Lcom/callapp/contacts/util/glide/GlideUtils$AnimationEndsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$AnimationEndsListener;->a()V

    :cond_1
    return-void
.end method
