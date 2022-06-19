.class final Landroidx/media2/session/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/j;->e(ILandroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic b:I

.field final synthetic c:Landroidx/media2/session/j;


# direct methods
.method constructor <init>(Landroidx/media2/session/j;Landroidx/versionedparcelable/ParcelImpl;I)V
    .locals 0

    .line 57
    iput-object p1, p0, Landroidx/media2/session/j$1;->c:Landroidx/media2/session/j;

    iput-object p2, p0, Landroidx/media2/session/j$1;->a:Landroidx/versionedparcelable/ParcelImpl;

    iput p3, p0, Landroidx/media2/session/j$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/h;)V
    .locals 2

    .line 60
    iget-object p1, p0, Landroidx/media2/session/j$1;->a:Landroidx/versionedparcelable/ParcelImpl;

    .line 1078
    invoke-static {p1}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object p1

    .line 60
    check-cast p1, Landroidx/media2/session/SessionResult;

    if-nez p1, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/j$1;->c:Landroidx/media2/session/j;

    iget-object v0, v0, Landroidx/media2/session/j;->b:Landroidx/media2/session/v;

    iget v1, p0, Landroidx/media2/session/j$1;->b:I

    invoke-virtual {v0, v1, p1}, Landroidx/media2/session/v;->a(ILjava/lang/Object;)V

    return-void
.end method
