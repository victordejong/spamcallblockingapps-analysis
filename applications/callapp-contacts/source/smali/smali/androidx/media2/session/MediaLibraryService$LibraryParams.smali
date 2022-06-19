.class public final Landroidx/media2/session/MediaLibraryService$LibraryParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/versionedparcelable/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaLibraryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/MediaLibraryService$LibraryParams$a;
    }
.end annotation


# instance fields
.field a:Landroid/os/Bundle;

.field b:I

.field c:I

.field d:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;III)V
    .locals 0

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    iput-object p1, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->a:Landroid/os/Bundle;

    .line 533
    iput p2, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->b:I

    .line 534
    iput p3, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->c:I

    .line 535
    iput p4, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->d:I

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;ZZZ)V
    .locals 0

    .line 525
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media2/session/MediaLibraryService$LibraryParams;-><init>(Landroid/os/Bundle;III)V

    return-void
.end method

.method static a(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
