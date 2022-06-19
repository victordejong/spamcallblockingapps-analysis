.class public final Landroidx/media2/session/MediaLibraryService$LibraryParams$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaLibraryService$LibraryParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media2/session/MediaLibraryService$LibraryParams;
    .locals 5

    .line 676
    new-instance v0, Landroidx/media2/session/MediaLibraryService$LibraryParams;

    iget-object v1, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams$a;->d:Landroid/os/Bundle;

    iget-boolean v2, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams$a;->a:Z

    iget-boolean v3, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams$a;->b:Z

    iget-boolean v4, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams$a;->c:Z

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media2/session/MediaLibraryService$LibraryParams;-><init>(Landroid/os/Bundle;ZZZ)V

    return-object v0
.end method
