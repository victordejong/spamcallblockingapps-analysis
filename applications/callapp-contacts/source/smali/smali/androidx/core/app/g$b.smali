.class public final Landroidx/core/app/g$b;
.super Landroidx/core/app/g$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:Landroid/graphics/Bitmap;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2111
    invoke-direct {p0}, Landroidx/core/app/g$i;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/core/app/g$e;)V
    .locals 0

    .line 2114
    invoke-direct {p0}, Landroidx/core/app/g$i;-><init>()V

    .line 2115
    invoke-virtual {p0, p1}, Landroidx/core/app/g$b;->a(Landroidx/core/app/g$e;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/core/app/f;)V
    .locals 2

    .line 2159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 2160
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    .line 2161
    invoke-interface {p1}, Landroidx/core/app/f;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object p1, p0, Landroidx/core/app/g$b;->e:Ljava/lang/CharSequence;

    .line 2162
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    iget-object v0, p0, Landroidx/core/app/g$b;->a:Landroid/graphics/Bitmap;

    .line 2163
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    .line 2164
    iget-boolean v0, p0, Landroidx/core/app/g$b;->c:Z

    if-eqz v0, :cond_0

    .line 2165
    iget-object v0, p0, Landroidx/core/app/g$b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 2167
    :cond_0
    iget-boolean v0, p0, Landroidx/core/app/g$b;->g:Z

    if-eqz v0, :cond_1

    .line 2168
    iget-object v0, p0, Landroidx/core/app/g$b;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    :cond_1
    return-void
.end method
