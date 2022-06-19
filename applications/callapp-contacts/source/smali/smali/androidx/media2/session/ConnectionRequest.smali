.class Landroidx/media2/session/ConnectionRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/versionedparcelable/c;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:I

.field d:Landroid/os/Bundle;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Landroidx/media2/session/ConnectionRequest;->a:I

    .line 50
    iput-object p1, p0, Landroidx/media2/session/ConnectionRequest;->b:Ljava/lang/String;

    .line 51
    iput p2, p0, Landroidx/media2/session/ConnectionRequest;->c:I

    .line 52
    iput-object p3, p0, Landroidx/media2/session/ConnectionRequest;->d:Landroid/os/Bundle;

    return-void
.end method
