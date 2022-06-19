.class Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->setAccordingToData(Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;

.field final synthetic b:Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder$1;->b:Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder$1;->a:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;

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

    .line 91
    iget-object p1, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder$1;->a:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->getImageLoadedListener()Lcom/callapp/contacts/manager/task/Task$DoneListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/manager/task/Task$DoneListener;->onDone()V

    const/4 p1, 0x0

    return p1
.end method
