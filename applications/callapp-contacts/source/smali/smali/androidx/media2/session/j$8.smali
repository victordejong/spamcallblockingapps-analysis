.class final Landroidx/media2/session/j$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/j;->a(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Landroidx/media2/session/j;


# direct methods
.method constructor <init>(Landroidx/media2/session/j;Ljava/util/List;I)V
    .locals 0

    .line 348
    iput-object p1, p0, Landroidx/media2/session/j$8;->c:Landroidx/media2/session/j;

    iput-object p2, p0, Landroidx/media2/session/j$8;->a:Ljava/util/List;

    iput p3, p0, Landroidx/media2/session/j$8;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/h;)V
    .locals 4

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 352
    :goto_0
    iget-object v2, p0, Landroidx/media2/session/j$8;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 353
    iget-object v2, p0, Landroidx/media2/session/j$8;->a:Ljava/util/List;

    .line 354
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    .line 2078
    invoke-static {v2}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object v2

    .line 354
    check-cast v2, Landroidx/media2/session/MediaSession$CommandButton;

    if-eqz v2, :cond_0

    .line 356
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    :cond_1
    iget v1, p0, Landroidx/media2/session/j$8;->b:I

    .line 2328
    iget-object v2, p1, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    new-instance v3, Landroidx/media2/session/h$31;

    invoke-direct {v3, p1, v0, v1}, Landroidx/media2/session/h$31;-><init>(Landroidx/media2/session/h;Ljava/util/List;I)V

    invoke-virtual {v2, v3}, Landroidx/media2/session/MediaController;->a(Landroidx/media2/session/MediaController$b;)V

    return-void
.end method
