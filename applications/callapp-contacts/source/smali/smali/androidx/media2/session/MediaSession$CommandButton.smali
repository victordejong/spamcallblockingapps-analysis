.class public final Landroidx/media2/session/MediaSession$CommandButton;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/versionedparcelable/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommandButton"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/MediaSession$CommandButton$a;
    }
.end annotation


# instance fields
.field a:Landroidx/media2/session/SessionCommand;

.field b:I

.field c:Ljava/lang/CharSequence;

.field d:Landroid/os/Bundle;

.field e:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroidx/media2/session/SessionCommand;ILjava/lang/CharSequence;Landroid/os/Bundle;Z)V
    .locals 0

    .line 1036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    iput-object p1, p0, Landroidx/media2/session/MediaSession$CommandButton;->a:Landroidx/media2/session/SessionCommand;

    .line 1038
    iput p2, p0, Landroidx/media2/session/MediaSession$CommandButton;->b:I

    .line 1039
    iput-object p3, p0, Landroidx/media2/session/MediaSession$CommandButton;->c:Ljava/lang/CharSequence;

    .line 1040
    iput-object p4, p0, Landroidx/media2/session/MediaSession$CommandButton;->d:Landroid/os/Bundle;

    .line 1041
    iput-boolean p5, p0, Landroidx/media2/session/MediaSession$CommandButton;->e:Z

    return-void
.end method
