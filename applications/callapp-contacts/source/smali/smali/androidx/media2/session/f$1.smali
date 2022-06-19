.class final Landroidx/media2/session/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Landroidx/media2/session/MediaLibraryService$LibraryParams;

.field final synthetic d:Landroidx/media2/session/f;


# direct methods
.method constructor <init>(Landroidx/media2/session/f;Ljava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V
    .locals 0

    .line 151
    iput-object p1, p0, Landroidx/media2/session/f$1;->d:Landroidx/media2/session/f;

    iput-object p2, p0, Landroidx/media2/session/f$1;->a:Ljava/lang/String;

    iput p3, p0, Landroidx/media2/session/f$1;->b:I

    iput-object p4, p0, Landroidx/media2/session/f$1;->c:Landroidx/media2/session/MediaLibraryService$LibraryParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
