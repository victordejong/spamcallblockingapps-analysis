.class public Ley;
.super Lt;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ley$i;,
        Ley$d;,
        Ley$e;,
        Ley$g;,
        Ley$h;,
        Ley$f;,
        Ley$j;
    }
.end annotation


# static fields
.field public static final Q:Z


# instance fields
.field public A:Landroid/widget/Button;

.field public B:Landroid/widget/ImageView;

.field public C:Landroid/view/View;

.field public D:Landroid/widget/ImageView;

.field public E:Landroid/widget/TextView;

.field public F:Landroid/widget/TextView;

.field public G:Ljava/lang/String;

.field public H:Landroid/support/v4/media/session/MediaControllerCompat;

.field public I:Ley$e;

.field public J:Landroid/support/v4/media/MediaDescriptionCompat;

.field public K:Ley$d;

.field public L:Landroid/graphics/Bitmap;

.field public M:Landroid/net/Uri;

.field public N:Z

.field public O:Landroid/graphics/Bitmap;

.field public P:I

.field public final a:Ldz;

.field public final b:Ley$g;

.field public c:Lcz;

.field public d:Ldz$i;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldz$i;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldz$i;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldz$i;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldz$i;",
            ">;"
        }
    .end annotation
.end field

.field public k:Landroid/content/Context;

.field public l:Z

.field public m:Z

.field public n:J

.field public final o:Landroid/os/Handler;

.field public p:Landroidx/recyclerview/widget/RecyclerView;

.field public q:Ley$h;

.field public r:Ley$j;

.field public s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ley$f;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ldz$i;

.field public u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Landroid/widget/ImageButton;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaRouteCtrlDialog"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Ley;->Q:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ley;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lfy;->b(Landroid/content/Context;IZ)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lfy;->c(Landroid/content/Context;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lt;-><init>(Landroid/content/Context;I)V

    sget-object p1, Lcz;->c:Lcz;

    iput-object p1, p0, Ley;->c:Lcz;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ley;->f:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ley;->g:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ley;->h:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ley;->j:Ljava/util/List;

    new-instance p1, Ley$a;

    invoke-direct {p1, p0}, Ley$a;-><init>(Ley;)V

    iput-object p1, p0, Ley;->o:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ley;->k:Landroid/content/Context;

    invoke-static {p1}, Ldz;->g(Landroid/content/Context;)Ldz;

    move-result-object p1

    iput-object p1, p0, Ley;->a:Ldz;

    new-instance p2, Ley$g;

    invoke-direct {p2, p0}, Ley$g;-><init>(Ley;)V

    iput-object p2, p0, Ley;->b:Ley$g;

    invoke-virtual {p1}, Ldz;->k()Ldz$i;

    move-result-object p2

    iput-object p2, p0, Ley;->d:Ldz$i;

    new-instance p2, Ley$e;

    invoke-direct {p2, p0}, Ley$e;-><init>(Ley;)V

    iput-object p2, p0, Ley;->I:Ley$e;

    invoke-virtual {p1}, Ldz;->h()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p1

    invoke-virtual {p0, p1}, Ley;->i(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;FLandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-static {p2}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p2

    invoke-static {p2, p0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-static {p2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v2, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    invoke-virtual {p2}, Landroid/renderscript/RenderScript;->destroy()V

    return-object p0
.end method

.method public static d(Landroid/graphics/Bitmap;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static h(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ley;->N:Z

    const/4 v1, 0x0

    iput-object v1, p0, Ley;->O:Landroid/graphics/Bitmap;

    iput v0, p0, Ley;->P:I

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldz$i;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Ley;->d:Ldz$i;

    invoke-virtual {v1}, Ldz$i;->p()Ldz$h;

    move-result-object v1

    invoke-virtual {v1}, Ldz$h;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldz$i;

    iget-object v3, p0, Ley;->d:Ldz$i;

    invoke-virtual {v3, v2}, Ldz$i;->h(Ldz$i;)Ldz$i$a;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ldz$i$a;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public e(Ldz$i;)Z
    .locals 1

    invoke-virtual {p1}, Ldz$i;->v()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ldz$i;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ley;->c:Lcz;

    invoke-virtual {p1, v0}, Ldz$i;->D(Lcz;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ley;->d:Ldz$i;

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldz$i;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldz$i;

    invoke-virtual {p0, v1}, Ley;->e(Ldz$i;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, Ley;->J:Landroid/support/v4/media/MediaDescriptionCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Ley;->J:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Ley;->K:Ley$d;

    if-nez v2, :cond_2

    iget-object v2, p0, Ley;->L:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ley$d;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_2
    iget-object v3, p0, Ley;->K:Ley$d;

    if-nez v3, :cond_3

    iget-object v3, p0, Ley;->M:Landroid/net/Uri;

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ley$d;->c()Landroid/net/Uri;

    move-result-object v3

    :goto_3
    if-ne v2, v0, :cond_5

    if-nez v2, :cond_4

    invoke-static {v3, v1}, Lja;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Ley;->K:Ley$d;

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_6
    new-instance v0, Ley$d;

    invoke-direct {v0, p0}, Ley$d;-><init>(Ley;)V

    iput-object v0, p0, Ley;->K:Ley$d;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final i(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 3

    iget-object v0, p0, Ley;->H:Landroid/support/v4/media/session/MediaControllerCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Ley;->I:Ley$e;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    iput-object v1, p0, Ley;->H:Landroid/support/v4/media/session/MediaControllerCompat;

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Ley;->m:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Ley;->k:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, Ley;->H:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object p1, p0, Ley;->I:Ley$e;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    iget-object p1, p0, Ley;->H:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Ley;->J:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {p0}, Ley;->g()V

    invoke-virtual {p0}, Ley;->m()V

    return-void
.end method

.method public j(Lcz;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Ley;->c:Lcz;

    invoke-virtual {v0, p1}, Lcz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Ley;->c:Lcz;

    iget-boolean v0, p0, Ley;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ley;->a:Ldz;

    iget-object v1, p0, Ley;->b:Ley$g;

    invoke-virtual {v0, v1}, Ldz;->o(Ldz$b;)V

    iget-object v0, p0, Ley;->a:Ldz;

    iget-object v1, p0, Ley;->b:Ley$g;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Ldz;->b(Lcz;Ldz$b;I)V

    invoke-virtual {p0}, Ley;->n()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Ley;->t:Ldz$i;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ley;->v:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ley;->w:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Ley;->l:Z

    xor-int/2addr v0, v1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public l()V
    .locals 3

    iget-object v0, p0, Ley;->k:Landroid/content/Context;

    invoke-static {v0}, Lcy;->c(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Ley;->k:Landroid/content/Context;

    invoke-static {v1}, Lcy;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Ley;->L:Landroid/graphics/Bitmap;

    iput-object v0, p0, Ley;->M:Landroid/net/Uri;

    invoke-virtual {p0}, Ley;->g()V

    invoke-virtual {p0}, Ley;->m()V

    invoke-virtual {p0}, Ley;->o()V

    return-void
.end method

.method public m()V
    .locals 7

    invoke-virtual {p0}, Ley;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Ley;->y:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ley;->y:Z

    iget-object v2, p0, Ley;->d:Ldz$i;

    invoke-virtual {v2}, Ldz$i;->B()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ley;->d:Ldz$i;

    invoke-virtual {v2}, Ldz$i;->v()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lt;->dismiss()V

    :cond_2
    iget-boolean v2, p0, Ley;->N:Z

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_4

    iget-object v2, p0, Ley;->O:Landroid/graphics/Bitmap;

    invoke-static {v2}, Ley;->d(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Ley;->O:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ley;->D:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Ley;->D:Landroid/widget/ImageView;

    iget-object v5, p0, Ley;->O:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Ley;->D:Landroid/widget/ImageView;

    iget v5, p0, Ley;->P:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v2, p0, Ley;->C:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v2, v5, :cond_3

    iget-object v2, p0, Ley;->O:Landroid/graphics/Bitmap;

    const/high16 v5, 0x41200000    # 10.0f

    iget-object v6, p0, Ley;->k:Landroid/content/Context;

    invoke-static {v2, v5, v6}, Ley;->a(Landroid/graphics/Bitmap;FLandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v5, p0, Ley;->B:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Ley;->B:Landroid/widget/ImageView;

    iget-object v5, p0, Ley;->O:Landroid/graphics/Bitmap;

    invoke-static {v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Ley;->O:Landroid/graphics/Bitmap;

    invoke-static {v2}, Ley;->d(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t set artwork image with recycled bitmap: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ley;->O:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "MediaRouteCtrlDialog"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v2, p0, Ley;->D:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Ley;->C:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Ley;->B:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {p0}, Ley;->b()V

    iget-object v2, p0, Ley;->J:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v2, :cond_6

    move-object v2, v3

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v1

    iget-object v6, p0, Ley;->J:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v6}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v1, v6

    if-eqz v5, :cond_8

    iget-object v5, p0, Ley;->E:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    iget-object v2, p0, Ley;->E:Landroid/widget/TextView;

    iget-object v5, p0, Ley;->G:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    if-eqz v1, :cond_9

    iget-object v1, p0, Ley;->F:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Ley;->F:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Ley;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method public n()V
    .locals 4

    iget-object v0, p0, Ley;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Ley;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Ley;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Ley;->f:Ljava/util/List;

    iget-object v1, p0, Ley;->d:Ldz$i;

    invoke-virtual {v1}, Ldz$i;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Ley;->d:Ldz$i;

    invoke-virtual {v0}, Ldz$i;->p()Ldz$h;

    move-result-object v0

    invoke-virtual {v0}, Ldz$h;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldz$i;

    iget-object v2, p0, Ley;->d:Ldz$i;

    invoke-virtual {v2, v1}, Ldz$i;->h(Ldz$i;)Ldz$i$a;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ldz$i$a;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ley;->g:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v2}, Ldz$i$a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ley;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ley;->g:Ljava/util/List;

    invoke-virtual {p0, v0}, Ley;->f(Ljava/util/List;)V

    iget-object v0, p0, Ley;->h:Ljava/util/List;

    invoke-virtual {p0, v0}, Ley;->f(Ljava/util/List;)V

    iget-object v0, p0, Ley;->f:Ljava/util/List;

    sget-object v1, Ley$i;->a:Ley$i;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Ley;->g:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Ley;->h:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Ley;->q:Ley$h;

    invoke-virtual {v0}, Ley$h;->k()V

    return-void
.end method

.method public o()V
    .locals 7

    iget-boolean v0, p0, Ley;->m:Z

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ley;->n:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_3

    invoke-virtual {p0}, Ley;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Ley;->x:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ley;->x:Z

    iget-object v0, p0, Ley;->d:Ldz$i;

    invoke-virtual {v0}, Ldz$i;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ley;->d:Ldz$i;

    invoke-virtual {v0}, Ldz$i;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lt;->dismiss()V

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ley;->n:J

    iget-object v0, p0, Ley;->q:Ley$h;

    invoke-virtual {v0}, Ley$h;->j()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ley;->o:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Ley;->o:Landroid/os/Handler;

    iget-wide v5, p0, Ley;->n:J

    add-long/2addr v5, v2

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ley;->m:Z

    iget-object v1, p0, Ley;->a:Ldz;

    iget-object v2, p0, Ley;->c:Lcz;

    iget-object v3, p0, Ley;->b:Ley$g;

    invoke-virtual {v1, v2, v3, v0}, Ldz;->b(Lcz;Ldz$b;I)V

    invoke-virtual {p0}, Ley;->n()V

    iget-object v0, p0, Ley;->a:Ldz;

    invoke-virtual {v0}, Ldz;->h()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Ley;->i(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lt;->onCreate(Landroid/os/Bundle;)V

    sget p1, Ltx;->mr_cast_dialog:I

    invoke-virtual {p0, p1}, Lt;->setContentView(I)V

    iget-object p1, p0, Ley;->k:Landroid/content/Context;

    invoke-static {p1, p0}, Lfy;->s(Landroid/content/Context;Landroid/app/Dialog;)V

    sget p1, Lqx;->mr_cast_close_button:I

    invoke-virtual {p0, p1}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Ley;->z:Landroid/widget/ImageButton;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object p1, p0, Ley;->z:Landroid/widget/ImageButton;

    new-instance v1, Ley$b;

    invoke-direct {v1, p0}, Ley$b;-><init>(Ley;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lqx;->mr_cast_stop_button:I

    invoke-virtual {p0, p1}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ley;->A:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p1, p0, Ley;->A:Landroid/widget/Button;

    new-instance v1, Ley$c;

    invoke-direct {v1, p0}, Ley$c;-><init>(Ley;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Ley$h;

    invoke-direct {p1, p0}, Ley$h;-><init>(Ley;)V

    iput-object p1, p0, Ley;->q:Ley$h;

    sget p1, Lqx;->mr_cast_list:I

    invoke-virtual {p0, p1}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Ley;->p:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Ley;->q:Ley$h;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object p1, p0, Ley;->p:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Ley;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    new-instance p1, Ley$j;

    invoke-direct {p1, p0}, Ley$j;-><init>(Ley;)V

    iput-object p1, p0, Ley;->r:Ley$j;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ley;->s:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ley;->u:Ljava/util/Map;

    sget p1, Lqx;->mr_cast_meta_background:I

    invoke-virtual {p0, p1}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ley;->B:Landroid/widget/ImageView;

    sget p1, Lqx;->mr_cast_meta_black_scrim:I

    invoke-virtual {p0, p1}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ley;->C:Landroid/view/View;

    sget p1, Lqx;->mr_cast_meta_art:I

    invoke-virtual {p0, p1}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ley;->D:Landroid/widget/ImageView;

    sget p1, Lqx;->mr_cast_meta_title:I

    invoke-virtual {p0, p1}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ley;->E:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget p1, Lqx;->mr_cast_meta_subtitle:I

    invoke-virtual {p0, p1}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ley;->F:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Ley;->k:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lux;->mr_cast_dialog_title_view_placeholder:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ley;->G:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ley;->l:Z

    invoke-virtual {p0}, Ley;->l()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ley;->m:Z

    iget-object v0, p0, Ley;->a:Ldz;

    iget-object v1, p0, Ley;->b:Ley$g;

    invoke-virtual {v0, v1}, Ldz;->o(Ldz$b;)V

    iget-object v0, p0, Ley;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ley;->i(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method

.method public p()V
    .locals 1

    iget-boolean v0, p0, Ley;->x:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ley;->o()V

    :cond_0
    iget-boolean v0, p0, Ley;->y:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ley;->m()V

    :cond_1
    return-void
.end method
