.class public final Landroid/support/v4/media/MediaDescriptionCompat$a;
.super Ljava/lang/Object;
.source "MediaDescriptionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaDescriptionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/net/Uri;

.field private g:Landroid/os/Bundle;

.field private h:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaDescriptionCompat$a;
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Landroid/support/v4/media/MediaDescriptionCompat$a;->e:Landroid/graphics/Bitmap;

    .line 512
    return-object p0
.end method

.method public a(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$a;
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Landroid/support/v4/media/MediaDescriptionCompat$a;->f:Landroid/net/Uri;

    .line 524
    return-object p0
.end method

.method public a(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$a;
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Landroid/support/v4/media/MediaDescriptionCompat$a;->g:Landroid/os/Bundle;

    .line 535
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$a;
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Landroid/support/v4/media/MediaDescriptionCompat$a;->b:Ljava/lang/CharSequence;

    .line 477
    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$a;
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Landroid/support/v4/media/MediaDescriptionCompat$a;->a:Ljava/lang/String;

    .line 466
    return-object p0
.end method

.method public a()Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 9

    .prologue
    .line 556
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat;

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat$a;->a:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/media/MediaDescriptionCompat$a;->b:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/v4/media/MediaDescriptionCompat$a;->c:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/support/v4/media/MediaDescriptionCompat$a;->d:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/support/v4/media/MediaDescriptionCompat$a;->e:Landroid/graphics/Bitmap;

    iget-object v6, p0, Landroid/support/v4/media/MediaDescriptionCompat$a;->f:Landroid/net/Uri;

    iget-object v7, p0, Landroid/support/v4/media/MediaDescriptionCompat$a;->g:Landroid/os/Bundle;

    iget-object v8, p0, Landroid/support/v4/media/MediaDescriptionCompat$a;->h:Landroid/net/Uri;

    invoke-direct/range {v0 .. v8}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    return-object v0
.end method

.method public b(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$a;
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Landroid/support/v4/media/MediaDescriptionCompat$a;->h:Landroid/net/Uri;

    .line 546
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$a;
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Landroid/support/v4/media/MediaDescriptionCompat$a;->c:Ljava/lang/CharSequence;

    .line 488
    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$a;
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Landroid/support/v4/media/MediaDescriptionCompat$a;->d:Ljava/lang/CharSequence;

    .line 500
    return-object p0
.end method
