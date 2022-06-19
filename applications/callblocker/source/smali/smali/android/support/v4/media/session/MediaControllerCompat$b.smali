.class public final Landroid/support/v4/media/session/MediaControllerCompat$b;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroidx/media/AudioAttributesCompat;

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 6

    .prologue
    .line 1409
    new-instance v0, Landroidx/media/AudioAttributesCompat$a;

    invoke-direct {v0}, Landroidx/media/AudioAttributesCompat$a;-><init>()V

    invoke-virtual {v0, p2}, Landroidx/media/AudioAttributesCompat$a;->a(I)Landroidx/media/AudioAttributesCompat$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media/AudioAttributesCompat$a;->a()Landroidx/media/AudioAttributesCompat;

    move-result-object v2

    move-object v0, p0

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/MediaControllerCompat$b;-><init>(ILandroidx/media/AudioAttributesCompat;III)V

    .line 1411
    return-void
.end method

.method constructor <init>(ILandroidx/media/AudioAttributesCompat;III)V
    .locals 0

    .prologue
    .line 1414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1415
    iput p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:I

    .line 1416
    iput-object p2, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->b:Landroidx/media/AudioAttributesCompat;

    .line 1417
    iput p3, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->c:I

    .line 1418
    iput p4, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->d:I

    .line 1419
    iput p5, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->e:I

    .line 1420
    return-void
.end method
