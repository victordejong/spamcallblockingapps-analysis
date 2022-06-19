.class Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer$1;->a(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer$1;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer$1$1;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer$1$1;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer$1;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->b(Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;)Lcom/bumptech/glide/load/resource/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/c;->start()V

    return-void
.end method
