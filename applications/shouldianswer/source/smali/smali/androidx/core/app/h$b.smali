.class public Landroidx/core/app/h$b;
.super Landroidx/core/app/h$f;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1994
    invoke-direct {p0}, Landroidx/core/app/h$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroidx/core/app/h$b;
    .locals 0

    .line 2023
    iput-object p1, p0, Landroidx/core/app/h$b;->e:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public a(Landroidx/core/app/g;)V
    .locals 2

    .line 2042
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 2043
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    .line 2044
    invoke-interface {p1}, Landroidx/core/app/g;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object p1, p0, Landroidx/core/app/h$b;->b:Ljava/lang/CharSequence;

    .line 2045
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    iget-object v0, p0, Landroidx/core/app/h$b;->e:Landroid/graphics/Bitmap;

    .line 2046
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    .line 2047
    iget-boolean v0, p0, Landroidx/core/app/h$b;->g:Z

    if-eqz v0, :cond_0

    .line 2048
    iget-object v0, p0, Landroidx/core/app/h$b;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 2050
    :cond_0
    iget-boolean v0, p0, Landroidx/core/app/h$b;->d:Z

    if-eqz v0, :cond_1

    .line 2051
    iget-object v0, p0, Landroidx/core/app/h$b;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    :cond_1
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)Landroidx/core/app/h$b;
    .locals 0

    .line 2031
    iput-object p1, p0, Landroidx/core/app/h$b;->f:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 2032
    iput-boolean p1, p0, Landroidx/core/app/h$b;->g:Z

    return-object p0
.end method
